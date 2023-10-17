local assets = {
    Asset( "ANIM", "anim/noelle_vision.zip" ),
    Asset( "ANIM", "anim/noelle_shield.zip" )
}

local prefabs =
{
    "lucy_transform_fx",
    "lucy_ground_transform_fx",
    "noelle_shield"
}

local GenshinVision = require "prefabs/vision_common"

----------------------------------------------------------------------------------------------------
-- Configuration
----------------------------------------------------------------------------------------------------

local STARTING_SHIELD_HEALTH = 200

----------------------------------------------------------------------------------------------------
-- Callbacks
----------------------------------------------------------------------------------------------------

---Triggers when the vision holder is attacked after having used the vision.
---@param owner table: The player being attacked.
---@param data table: Data about the attack.
local function onattacked ( owner, data )
    if owner._fx then
        owner._fx.AnimState:PlayAnimation( "hit" )
        owner._fx.AnimState:PushAnimation( "idle_loop" )
    end
end

---Triggers when the vision holder hits something while the shield is active.
---@param inst table: The vision holder.
---@param data table: The attack data.
---| `projectile` # The projectile, if any.
---| `stimuli` # The stimuli, if any.
---| `target` # The target.
---| `weapon` # The weapon that was used.
local function onattackother ( inst, data )
    if inst._active_shield_health ~= nil and inst._active_shield_health > 0 then
        inst._attacks_while_shield_up = inst._attacks_while_shield_up + 1

        -- Every fourth attack, drop the cooldown by 1/24 of the max rechargeable value (180)
        if math.fmod( inst._attacks_while_shield_up, 4 ) == 0 and inst._shield_vision ~= nil then
            local item = inst._shield_vision
            local charge = ( item.components.rechargeable ~= nil and item.components.rechargeable:GetCharge() ) + ( 180 / 24 )

            item.components.rechargeable:SetCharge( charge, 0 )

            -- If the charge percentage is 100%, then undo the cooldown flag
            if item.components.rechargeable:GetPercent() >= 1 then
                inst._shield_on_cd = false
                -- We don't remove the _shield_vision reference because being here doesn't mean the
                -- shield is gone
            end
        end

        -- 55% chance to heal 5% of max HP (with penalties accounted for)
        if math.random() < 0.55 then
            local heal = math.floor( inst.components.health:GetMaxWithPenalty() * 0.05 )
            inst.components.health:DoDelta( heal, nil, "NIL", nil, nil )
        end
    end
end

----------------------------------------------------------------------------------------------------
-- Regular functions
----------------------------------------------------------------------------------------------------

---Removes the shield effects.
---@param inst table: The item.
---@param owner table: The player.
local function addshieldfx ( inst, owner )
    inst:AddTag( "noelle_shield" )

    if inst._fx ~= nil then
        inst._fx:kill_fx()
    end

    inst._fx = SpawnPrefab( "noelle_shield" )
    inst._fx.entity:SetParent( owner.entity )
    inst._fx.Transform:SetPosition( 0, -0.5, 0 )
end

---Removes the shield effects.
---@param inst table: The item.
---@param owner table: The player.
local function removeshieldfx ( inst, owner )
    if inst:HasTag( "noelle_shield" ) then
        inst:RemoveTag( "noelle_shield" )

        if inst._fx ~= nil then
            inst._fx:kill_fx()
            inst._fx = nil
        end
    end
end

---Puts a "shield" on the user. This shield is actually just an internal check against the
---remaining shield HP on the vision.
---@param inst table: The item that is invoking this function.
---@param doer table: The player/prefab that is invoking this function.
---@param target table: The target of the cast. This is a self-targeted spell so this won't be used.
---@param pos table: The indicated position by a player or brain. Unused in this spell.
local function DoCastVision ( inst, doer, target, pos )
    -- This doesn't use the rechargeable component because that could allow somebody to stagger
    -- shields indefinitely by dropping the first vision and crafting another
    if not doer._shield_on_cd then
        -- If there's still a vision currently assigned when we cast a new shield, it means we've
        -- hit enough enemies to end the cooldown early, so we need to not replace the GetAttacked
        -- function otherwise we lose the original
        if not doer._shield_vision then
            doer._old_get_attacked_fn = doer.components.combat.GetAttacked

            doer.components.combat.GetAttacked = function ( self, attacker, damage, weapon, stimuli, spdamage )
                if self.inst._active_shield_health > 0 then
                    self.inst._active_shield_health = self.inst._active_shield_health - damage

                    onattacked( inst )

                    if self.inst._active_shield_health <= 0 then
                        doer.components.combat.GetAttacked = doer._old_get_attacked_fn
                        removeshieldfx( inst, doer )
                    end

                    return false
                else
                    return doer._old_get_attacked_fn( self, attacker, damage, weapon, stimuli, spdamage )
                end
            end
        -- If we do have an existing vision, we need to remove all the callbacks and such associated
        -- with it or we'd duplicate them
        else
            doer:RemoveEventCallback( "onattackother", onattackother )
            doer:RemoveEventCallback( "onmissother", onattackother )
        end

        -- We need to remove the shield fx first or we might duplicate it if the shield cooldown
        -- resets from attacks before the shield duration expires
        removeshieldfx( inst, doer )
        addshieldfx( inst, doer )
        inst.components.rechargeable:Discharge( 24 )
        doer._active_shield_health = STARTING_SHIELD_HEALTH
        doer._attacks_while_shield_up = 0
        doer._shield_vision = inst
        doer:ListenForEvent( "onattackother", onattackother )
        doer:ListenForEvent( "onmissother", onattackother )

        -- If the vision is dropped during the shielding period, immediately remove the shield;
        -- cooldown still occurs
        inst.components.inventoryitem:SetOnDroppedFn( function ( _ )
            doer._active_shield_health = 0
            doer:RemoveEventCallback( "onattackother", onattackother )
            doer:RemoveEventCallback( "onmissother", onattackother )
            doer.components.combat.GetAttacked = doer._old_get_attacked_fn

            removeshieldfx( inst, doer )

            inst.components.inventoryitem:SetOnDroppedFn( nil )
        end )

        -- If this is true, it means that the shield came off cooldown from attacks
        if doer._remove_shield_task then
            doer._remove_shield_task:Cancel()
        end

        -- Remove the shield in 12 seconds, if it's still there
        doer._remove_shield_task = inst:DoTaskInTime( 12, function ()
            doer._active_shield_health = 0
            doer:RemoveEventCallback( "onattackother", onattackother )
            doer:RemoveEventCallback( "onmissother", onattackother )
            doer.components.combat.GetAttacked = doer._old_get_attacked_fn

            removeshieldfx( inst, doer )

            inst.components.inventoryitem:SetOnDroppedFn( nil )

            doer._shield_on_cd = false
            doer._shield_vision = nil
        end )
    end

    doer._shield_on_cd = true
end

---The initialization function for the prefab.
local function fn ()
    local inst = GenshinVision.common_fn( "noelle_vision", "noelle_vision", DoCastVision )

    inst:AddComponent( "uniqueitem" )
    inst.components.uniqueitem.revert_fx = "lucy_ground_transform_fx"
    inst.components.uniqueitem.transform_fx = "lucy_transform_fx"

    MakeHauntableLaunch( inst )

    return inst
end

return Prefab( "noelle_vision", fn, assets, prefabs )