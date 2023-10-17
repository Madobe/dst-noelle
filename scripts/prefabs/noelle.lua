local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
	Asset( "SCRIPT", "scripts/prefabs/player_common.lua" ),
}

-- Your character's stats
TUNING.NOELLE_HEALTH = 150
TUNING.NOELLE_HUNGER = 150
TUNING.NOELLE_SANITY = 200

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.noelle = {
	"flint",
	"flint",
	"twigs",
	"twigs",
	"geo_vision"
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.noelle
end
local prefabs = FlattenTree(start_inv, true)

---------------------------------------------------------------------------------------------------
-- Callbacks
---------------------------------------------------------------------------------------------------

--- Handles when a player revives, or loads into the world alive.
-- This function does not run if the player does not become a ghost (eg. perma-death).
-- @param inst table: An object representing the current player.
local function onbecamehuman ( inst )
	inst.components.locomotor:SetExternalSpeedMultiplier( inst, "noelle_speed_mod", 1 )
end

--- Handles when a player dies and becomes a ghost, or joins the world while already dead.
-- This function does not run if the player does not become a ghost (eg. perma-death).
-- @param inst table: An object representing the current player.
local function onbecameghost ( inst )
	inst.components.locomotor:RemoveExternalSpeedMultiplier( inst, "noelle_speed_mod" )
end

--- Hooks up any callbacks that need to be hooked up.
-- This code runs whenever a character is loaded (already existed) or spawns (new character). Note
-- that due to how Lua works, all callbacks that will be used in this function must be defined 
-- before they are called in it.
-- @param inst table: An object representing the current player.
local function onload ( inst )
	-- Hook up any events to their callbacks
	inst:ListenForEvent( "ms_respawnedfromghost", onbecamehuman )
	inst:ListenForEvent( "ms_becameghost", onbecameghost )

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

--- Client and server-side post-initialization.
-- This sets anything that needs to be on the client side only. For example, a minimap icon is not
-- important to the server, but a client needs it. This is despite the fact that the server runs any
-- code included here as well.
-- @param inst table: An object representing the current player.
local common_postinit = function ( inst )
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "noelle.tex" )
end

-- This initializes for the server only. Components are added here.
--- Server-side post-initialization.
-- This sets anything that needs to be synchronized with the server. This includes initial
-- inventories and the character's max values.
-- @param inst table: An object representing the current player.
local master_postinit = function ( inst )
	inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	inst.soundsname = "willow"

	inst.components.health:SetMaxHealth( TUNING.NOELLE_HEALTH )
	inst.components.hunger:SetMax( TUNING.NOELLE_HUNGER )
	inst.components.sanity:SetMax( TUNING.NOELLE_SANITY )

	inst.components.combat.damagemultiplier = 1
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE

	inst.OnLoad = onload
	inst.OnNewSpawn = onload
end

return MakePlayerCharacter( "noelle", prefabs, assets, common_postinit, master_postinit, prefabs )
