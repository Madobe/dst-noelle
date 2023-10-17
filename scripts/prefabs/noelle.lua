local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
	Asset( "ANIM", "anim/noelle.zip" ),
	Asset( "ANIM", "anim/noelle-1.zip" ),
	Asset( "ANIM", "anim/noelle-2.zip" ),
	Asset( "ANIM", "anim/noelle-3.zip" ),
	Asset( "SCRIPT", "scripts/prefabs/player_common.lua" ),
}

---------------------------------------------------------------------------------------------------
-- Configurations
---------------------------------------------------------------------------------------------------

-- Your character's stats
TUNING.NOELLE_HEALTH = 200
TUNING.NOELLE_HUNGER = 150
TUNING.NOELLE_SANITY = 150

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.noelle = {
	"flint",
	"flint",
	"twigs",
	"twigs"
}

if TUNING.NOELLE.NOELLE_VISION_ENABLED then
	table.insert( TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.noelle, "noelle_vision" )
end

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.noelle
end
local prefabs = FlattenTree( start_inv, true )

-- Prefab name and rate
local hunger_slowing_foods = {
	flowersalad = { drain_rate = 0.2, period = 400 }
}

---------------------------------------------------------------------------------------------------
-- Callbacks
---------------------------------------------------------------------------------------------------

---Handles when a player revives, or loads into the world alive.  
---This function does not run if the player does not become a ghost (eg. perma-death).
---@param inst table: An object representing the current player.
local function onbecamehuman ( inst )
	inst.components.locomotor:SetExternalSpeedMultiplier( inst, "noelle_speed_mod", 1 )
	inst.components.hunger:SetRate( TUNING.WILSON_HUNGER_RATE )
end

---Handles when a player dies and becomes a ghost, or joins the world while already dead.  
---This function does not run if the player does not become a ghost (eg. perma-death).
---@param inst table: An object representing the current player.
local function onbecameghost ( inst )
	inst.components.locomotor:RemoveExternalSpeedMultiplier( inst, "noelle_speed_mod" )
end

---Handles when a player eats something. This implements logic specific to certain foods which
---allows them to slow down the hunger drain rate.
---@param inst table: The player that ate the food.
---@param food table: The food that was eaten.
local function oneat ( inst, food )
	local params = hunger_slowing_foods[string.lower( food.name:gsub( " ", "" ) )]

	if params ~= nil then
		if inst._reset_hungerrate_task ~= nil then
			inst._reset_hungerrate_task:Cancel()
			inst._reset_hungerrate_task = nil
		end

		inst.components.hunger:SetRate( params.drain_rate * TUNING.WILSON_HUNGER_RATE )

		inst._reset_hungerrate_task = inst:DoTaskInTime( params.period, function ()
			inst.components.hunger:SetRate( TUNING.WILSON_HUNGER_RATE )
		end )
	end
end

---Handles when a player moves.  
---This is used to update which animation bank will be used, so that we can have asymmetrical
---character designs.
---@param inst table: An object representing the current player.
local function onlocomote ( inst )
	if inst:HasTag( "playerghost" ) then 
		return
	end

	local builds_by_dir = {
		[FACING_RIGHT] = "noelle-3",
		[FACING_UP] = "noelle-1",
		[FACING_LEFT] = "noelle-2",
		[FACING_DOWN] = "noelle",
		[FACING_UPRIGHT] = "noelle-1",
		[FACING_UPLEFT] = "noelle-1",
		[FACING_DOWNRIGHT] = "noelle",
		[FACING_DOWNLEFT] = "noelle-2"
	}

	inst.AnimState:SetBuild( builds_by_dir[inst.AnimState:GetCurrentFacing()] )
end

----------------------------------------------------------------------------------------------------

---Used to mark the vision as keep on death, keep on drown, and non-stealable.
---@param inst table: The player.
---@param data table: The item data.
local function OnGetItem ( inst, data )
    local item = data ~= nil and data.item or nil

    if item ~= nil and item:HasTag( "genshinvision" ) then
        item.components.inventoryitem.keepondeath = true
        item.components.inventoryitem.keepondrown = true
    end
end

---Hooks up any callbacks that need to be hooked up.  
---This code runs whenever a character is loaded (already existed) or spawns (new character). Note
---that due to how Lua works, all callbacks that will be used in this function must be defined 
---before they are called in it.
---@param inst table: An object representing the current player.
local function OnLoad ( inst )
	-- Hook up any events to their callbacks
	inst:ListenForEvent( "ms_respawnedfromghost", onbecamehuman )
	inst:ListenForEvent( "ms_becameghost", onbecameghost )
	inst:ListenForEvent( "locomote", onlocomote )

	-- Resolve any necessary callbacks now, as their events won't fire on initial loading
	if inst:HasTag( "playerghost" ) then
		onbecameghost( inst )
	else
		onbecamehuman( inst )
	end
end

---------------------------------------------------------------------------------------------------
-- Required functions
---------------------------------------------------------------------------------------------------

---Client and server-side post-initialization.
---The following should occur here:
---* Tags additions
---* Animation state overrides
---* Internal function overrides
---@source prefabs/world.lua
---@param inst table: An object representing the current player.
local common_postinit = function ( inst )
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "noelle.tex" )

	-- Custom tags
	inst:AddTag( "genshin" )
	
	-- Custom idle animation
	inst.customidleanim = "idle_wathgrithr"

	if TUNING.NOELLE.NOELLE_VISION_ENABLED then
		inst:AddTag( "vision_user" )
        inst:AddTag( "can_craft_noelle_vision" )
	end
end

--- Server-side post-initialization.
---The following should occur here:
---* Component additions (and any settings related to the additions)
---* Max stat settings
---* Favorite foods
---@source prefabs/world.lua
---@param inst table: An object representing the current player.
local master_postinit = function ( inst )
	-- Basic changes
	inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	inst.soundsname = "winnie"

	inst.components.health:SetMaxHealth( TUNING.NOELLE_HEALTH )
	inst.components.hunger:SetMax( TUNING.NOELLE_HUNGER )
	inst.components.sanity:SetMax( TUNING.NOELLE_SANITY )

	inst.components.combat.damagemultiplier = 1

	inst.components.foodaffinity:AddPrefabAffinity( "flowersalad", 1 )
	inst.components.foodaffinity:AddPrefabAffinity( "ratatouille", TUNING.AFFINITY_15_CALORIES_SMALL )
	inst.components.eater:SetOnEatFn( oneat )

    -- Difficulty
    inst.components.hunger.hungerrate = TUNING.WILSON_HUNGER_RATE * TUNING.NOELLE.DIFFICULTY_MULTIPLIER
    inst.components.sanity.neg_aura_mult = TUNING.NOELLE.DIFFICULTY_MULTIPLIER

	-- Perks
	if TUNING.NOELLE.ARMORED_ROSE then
		inst.components.combat.externaldamagetakenmultipliers:SetModifier( "armored_rose", 0.7 )
	end

	inst.OnLoad = OnLoad
	inst.OnNewSpawn = OnLoad

    inst:ListenForEvent( "itemget", OnGetItem )
end

return MakePlayerCharacter( "noelle", prefabs, assets, common_postinit, master_postinit, prefabs )
