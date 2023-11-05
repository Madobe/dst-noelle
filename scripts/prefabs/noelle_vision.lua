local assets = {
    Asset( "ANIM", "anim/noelle_vision.zip" ),
}

local prefabs = {
    "noelle_vision_fx"
}

local GenshinVision = require "prefabs/vision_common"

----------------------------------------------------------------------------------------------------
-- Callbacks
----------------------------------------------------------------------------------------------------

--- Triggers when the vision holder is attacked after having used the vision.
-- @param owner table: The player being attacked.
-- @param data table: Data about the attack.
local function onattacked ( owner, data )
    TheNet:Announce( "Was attacked" )
end

----------------------------------------------------------------------------------------------------
-- Regular functions
----------------------------------------------------------------------------------------------------

--- Puts a "shield" on the user. This shield is actually just an internal check against the
--- remaining shield HP on the vision.
-- @param inst table: The item that is invoking this function.
-- @param doer table: The player/prefab that is invoking this function.
-- @param target table: The target of the cast. This is a self-targeted spell so this won't be used.
-- @param pos table: The indicated position by a player or brain. Unused in this spell.
local function DoCastVision ( inst, doer, target, pos )
    doer:ListenForEvent( "attacked", onattacked, doer )
end

local function fn ()
    local inst = GenshinVision.common_fn( "noelle_vision", "noelle_vision", DoCastVision )

    MakeHauntableLaunch( inst )

    return inst
end

return Prefab( "noelle_vision", fn, assets )