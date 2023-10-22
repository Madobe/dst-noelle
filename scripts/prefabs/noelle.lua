local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
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
-- Overloads
---------------------------------------------------------------------------------------------------

--- Fires when the character is attacked.
-- This adjusts the original incoming damage before armor calculations, then calls the original
-- function. Doing it this way future-proofs the mod to some degree as we're not dependent on its
-- implementation despite using it.
-- @param attacker table: The entity attacking the character.
-- @param damage int: The initial amount of damage being inflicted.
-- @param weapon table: The weapon the attack is being performed with.
-- @param stimuli str: The type of damage that the attack is inflicting.
-- @param spdamage int: The amount of special damage being inflicted.
local function GetAttacked ( self, attacker, damage, weapon, stimuli, spdamage )
	if attacker ~= nil and attacker.components.planarentity ~= nil then
		damage = damage * 0.7 -- 30% resistance
	end

	self.inst.components.combat:GetAttackedParent( attacker, damage, weapon, stimuli, spdamage )
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
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE

	inst.OnLoad = onload
	inst.OnNewSpawn = onload

	-- Hook up a decorated version of Combat:GetAttacked so we block 30% physical
	if TUNING.NOELLE.ARMORED_ROSE then
		inst.components.combat.GetAttackedParent, inst.components.combat.GetAttacked = inst.components.combat.GetAttacked, GetAttacked
	end
end

return MakePlayerCharacter( "noelle", prefabs, assets, common_postinit, master_postinit, prefabs )
