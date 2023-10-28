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
TUNING.NOELLE_HEALTH = 150
TUNING.NOELLE_HUNGER = 150
TUNING.NOELLE_SANITY = 200

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.noelle = {
	"flint",
	"flint",
	"twigs",
	"twigs"
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

--- Handles when a player moves.
-- This is used to update which animation bank will be used, so that we can have asymmetrical
-- character designs.
-- @param inst table: An object representing the current player.
local function onlocomote ( inst )
	if inst:HasTag( "playerghost" ) then 
		return 
	end

	builds_by_dir = {
		[FACING_RIGHT] = "noelle",
		[FACING_UP] = "noelle-1",
		[FACING_LEFT] = "noelle-2",
		[FACING_DOWN] = "noelle-3",
		[FACING_UPRIGHT] = "noelle-1",
		[FACING_UPLEFT] = "noelle-1",
		[FACING_DOWNRIGHT] = "noelle-3",
		[FACING_DOWNLEFT] = "noelle-3"
	}

	inst.AnimState:SetBuild( builds_by_dir[inst.AnimState:GetCurrentFacing()] )
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

--- Client and server-side post-initialization.
-- The following should occur here:
-- * Tags additions
-- * Animation state overrides
-- * Internal function overrides
-- @see prefabs/world.lua
-- @param inst table: An object representing the current player.
local common_postinit = function ( inst )
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "noelle.tex" )

	-- Custom tags
	inst:AddTag( "genshin" )
end

--- Server-side post-initialization.
-- The following should occur here:
-- * Component additions (and any settings related to the additions)
-- * Max stat settings
-- * Favorite foods
-- @see prefabs/world.lua
-- @param inst table: An object representing the current player.
local master_postinit = function ( inst )
	-- Basic changes
	inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	inst.soundsname = "willow"

	inst.components.health:SetMaxHealth( TUNING.NOELLE_HEALTH )
	inst.components.hunger:SetMax( TUNING.NOELLE_HUNGER )
	inst.components.sanity:SetMax( TUNING.NOELLE_SANITY )

	inst.components.combat.damagemultiplier = 1

  -- Difficulty
  inst.components.hunger.hungerrate = TUNING.WILSON_HUNGER_RATE * TUNING.NOELLE.DIFFICULTY_MULTIPLIER
  inst.components.sanity.neg_aura_mult = TUNING.NOELLE.DIFFICULTY_MULTIPLIER

	inst.OnLoad = onload
	inst.OnNewSpawn = onload

	if TUNING.NOELLE.ARMORED_ROSE then
		inst.components.combat.externaldamagetakenmultipliers:SetModifier( "armored_rose", 0.7 )
	end
end

return MakePlayerCharacter( "noelle", prefabs, assets, common_postinit, master_postinit, prefabs )
