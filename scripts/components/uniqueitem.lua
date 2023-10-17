---Determines whether the character trying to grab this item will instead just insta-drop it.
---@param inst table: The item.
---@param owner table: The player.
---@return boolean
local function IsValidOwner ( inst, owner )
    return owner:HasTag( inst.components.uniqueitem.checktag )
end

---Checks for duplicate copies of this item.
---@param inst table: The item.
---@param owner table: The player.
---@return table
local function OwnerAlreadyHasUniqueItem ( inst, owner )
    return owner.components.inventory:FindItem( function( item )
        return item.components.uniqueitem ~= nil and item ~= inst
    end )
end

---Determines whether the holder of the item is the player linked to the item. If they do have one,
---then we force drop it.
---@param inst table: The owner.
---@param self table: The item.
local function OnCheckOwner ( inst, self )
    self.checkownertask = nil

    local owner = inst.components.inventoryitem:GetGrandOwner()

    if owner == nil or owner.components.inventory == nil then
        return
    elseif not IsValidOwner( inst, owner ) then
        self:Drop()
        inst:PushEvent( "itemrejectedowner", owner )
    else
        local other = OwnerAlreadyHasUniqueItem( inst, owner )

        if other ~= nil then
            self:Drop()
            other:PushEvent( "itemrejectedotheritem", inst )
        elseif owner:HasTag( "player" ) then
            self:LinkToPlayer( owner )
        end
    end
end

---Triggers when the item is moved between entities.
---@param inst table: The item.
---@param owner table: The player, container, or otherwise.
local function OnChangeOwner ( inst, owner )
    local self = inst.components.uniqueitem

    if self.currentowner == owner then
        return
    elseif self.currentowner ~= nil and self.oncontainerpickedup ~= nil then
        inst:RemoveEventCallback( "onputininventory", self.oncontainerpickedup, self.currentowner )
        self.oncontainerpickedup = nil
    end

    if self.checkownertask ~= nil then
        self.checkownertask:Cancel()
        self.checkownertask = nil
    end

    self.currentowner = owner

    if owner == nil then
        return
    elseif owner.components.inventoryitem ~= nil then
        self.oncontainerpickedup = function()
            if self.checkownertask ~= nil then
                self.checkownertask:Cancel()
            end

            self.checkownertask = inst:DoTaskInTime( 0, OnCheckOwner, self )
        end
        inst:ListenForEvent( "onputininventory", self.oncontainerpickedup, owner )
    end

    self.checkownertask = inst:DoTaskInTime( 0, OnCheckOwner, self )
end

local UniqueItem = Class( function ( self, inst )
    self.inst = inst

    self.checktag = "vision_user"
    self.revert_prefab = "moonrocknugget"
    self.revert_uses = nil
    self.revert_fx = nil
    self.revert_time = TUNING.LUCY_REVERT_TIME
    self.transform_fx = nil

    self.player = nil -- Player link even if the item is dropped
    self.userid = nil -- User ID even if player link disconnects
    self.currentowner = nil -- inventoryitem owner
    self.oncontainerpickedup = nil
    self.checkownertask = nil
    self.waittask = nil
    self.waittotime = nil

    self.onplayerdied = function () self:WaitForPlayer( nil, 3 ) end
    self.onplayerremoved = function () self:WaitForPlayer( self.userid ) end
    self.onplayeruniqueitem = function () self:Revert() end
    self.onplayerjoined = function ( world, player )
        if player.userid == self.userid then
            if IsValidOwner( inst, player ) and OwnerAlreadyHasUniqueItem( inst, player ) == nil then
                self:LinkToPlayer( player )
            else
                -- If the owner has changed to another character or already has a copy of the item,
                -- then they most likely c_despawn'd or died in the Wilderness
                self:Revert()
            end
        end
    end

    inst:ListenForEvent( "onputininventory", OnChangeOwner )
    inst:ListenForEvent( "ondropped", OnChangeOwner )
end )

---Used to perform a revert on the next update cycle.
---@param inst table: The item.
---@param self table: This component.
local function OnEndWait ( inst, self )
    self.waittask = nil
    self.waittotime = nil
    self:Revert()
end

---Waits for the player to load in fully.
---@param userid string: The unique identifier for the player.
---@param delay integer?: How long to wait.
function UniqueItem:WaitForPlayer ( userid, delay )
    self:LinkToPlayer( nil )
    self.userid = userid

    if self.waittask ~= nil then
        self.waittask:Cancel()

        if userid == nil then
            self.inst:RemoveEventCallback( "ms_playerjoined", self.onplayerjoined, TheWorld )
        end
    elseif userid ~= nil then
        self.inst:ListenForEvent( "ms_playerjoined", self.onplayerjoined, TheWorld )
    end

    delay = delay or self.revert_time
    self.waittask = self.inst:DoTaskInTime( delay, OnEndWait, self )
    self.waittotime = GetTime() + delay
end

---Stops waiting for the player to load in.
function UniqueItem:StopWaitingForPlayer ()
    if self.waittask == nil then
        return
    end

    self.waittask:Cancel()
    self.waittask = nil
    self.waittotime = nil

    if self.userid ~= nil then
        self.userid = nil
        self.inst:RemoveEventCallback( "ms_playerjoined", self.onplayerjoined, TheWorld )
    end
end

---Assigns the attached item to the given player.
---@param player table?: The player to attach to.
function UniqueItem:LinkToPlayer ( player )
    self:StopWaitingForPlayer()

    if self.player == player then
        return
    elseif self.player ~= nil then
        self.inst:RemoveEventCallback( "onremove", self.onplayerremoved, self.player )
        self.inst:RemoveEventCallback( "uniqueitem", self.onplayeruniqueitem, self.player )
    end

    self.player = player

    if player == nil then
        self.userid = nil
        self.inst:PushEvent( "uniqueitempossessedbyplayer", nil )
        return
    end

    self.userid = player.userid

    player:PushEvent( "uniqueitem", self.inst )
    self.inst:ListenForEvent( "onremove", self.onplayerremoved, player )
    self.inst:ListenForEvent( "uniqueitem", self.onplayeruniqueitem, player )
    self.inst:PushEvent( "uniqueitempossessedbyplayer", player )
end

---Drops this item. This happens when the entity acquiring this item cannot hold it.
function UniqueItem:Drop ()
    local owner = self.inst.components.inventoryitem:GetGrandOwner()

    if owner ~= nil and owner.components.inventory ~= nil then
        owner.components.inventory:DropItem( self.inst, true, true )
    end
end

---Reverts the item back to its base ingredient.
function UniqueItem:Revert ()
    -- Determine whether the item has exhausted its durability
    local uniqueitem = SpawnPrefab( self.revert_prefab )

    if uniqueitem == nil then
        return self.inst
    elseif self.revert_uses ~= nil and uniqueitem.components.finiteuses ~= nil then
        uniqueitem.components.finiteuses:SetUses( math.max( 1, self.revert_uses ) )
    end

    -- Determine whether its in the inventory or a container, or equipped
    local container = self.inst.components.inventoryitem ~= nil and self.inst.components.inventoryitem:GetContainer() or nil

    -- Ground
    if container == nil then
        local x, y, z = self.inst.Transform:GetWorldPosition()

        self.inst:Remove()
        uniqueitem.Transform:SetPosition( x, y, z )

        if self.revert_fx ~= nil then
            local fx = SpawnPrefab( self.revert_fx )

            if fx ~= nil then
                fx.Transform:SetPosition(x, y, z)
            end
        end
    -- Equipped
    elseif self.inst.components.equippable ~= nil and self.inst.components.equippable:IsEquipped() then
        self.inst:Remove()
        container:Equip( uniqueitem )

        if self.revert_fx ~= nil then
            local fx = SpawnPrefab( self.revert_fx )

            if fx ~= nil then
                fx.entity:AddFollower()
                fx.Follower:FollowSymbol( container.inst.GUID, "swap_object", 50, -25, 0 )
            end
        end
    -- In inventory/container
    else
        local slot = self.inst.components.inventoryitem:GetSlotNum()
        self.inst:Remove()
        container:GiveItem( uniqueitem, slot )
    end

    return uniqueitem
end

---Runs when saving the item data.
---@return table|nil
function UniqueItem:OnSave ()
    local data =
    {
        prefab = self.revert_prefab ~= "moonrocknugget" and self.revert_prefab or nil,
        uses = self.revert_uses,
        userid = self.userid,
        waittimeremaining = self.waittotime ~= nil and self.waittotime - GetTime() or nil,
    }

    return next( data ) ~= nil and data or nil
end

---Runs when loading the item in.
---@param data table: Data for the item.
function UniqueItem:OnLoad ( data )
    if data ~= nil then
        self.revert_prefab = data.prefab or self.revert_prefab
        self.revert_uses = data.uses or self.revert_uses

        if self.player == nil
            and ( data.waittimeremaining ~= nil
                or ( data.userid ~= nil and data.userid ~= self.userid ) ) then
            self:LinkToPlayer( nil )
            self:WaitForPlayer( data.userid, data.waittimeremaining ~= nil and math.max( 0, data.waittimeremaining ) or nil )
        end
    end
end

---Only used for debugging.
---@return string
function UniqueItem:GetDebugString ()
    return "held: "..tostring( self.currentowner )
        .." player: "..tostring( self.player )
        ..string.format( " timeout: %2.2f", self.waittotime ~= nil and self.waittotime - GetTime() or 0 )
end

return UniqueItem