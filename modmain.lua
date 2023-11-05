PrefabFiles = {
	"noelle",
	"noelle_none",
    "noelle_vision"
}

Assets = {
    -- Character assets
    Asset( "IMAGE", "images/saveslot_portraits/noelle.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/noelle.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/noelle.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/noelle.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/noelle_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/noelle_silho.xml" ),

    Asset( "IMAGE", "bigportraits/noelle.tex" ),
    Asset( "ATLAS", "bigportraits/noelle.xml" ),

	Asset( "IMAGE", "images/map_icons/noelle.tex" ),
	Asset( "ATLAS", "images/map_icons/noelle.xml" ),

	Asset( "IMAGE", "images/avatars/avatar_noelle.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_noelle.xml" ),

	Asset( "IMAGE", "images/avatars/avatar_ghost_noelle.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_noelle.xml" ),

	Asset( "IMAGE", "images/avatars/self_inspect_noelle.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_noelle.xml" ),

	Asset( "IMAGE", "images/names_noelle.tex" ),
    Asset( "ATLAS", "images/names_noelle.xml" ),

	Asset( "IMAGE", "images/names_gold_noelle.tex" ),
    Asset( "ATLAS", "images/names_gold_noelle.xml" ),

    -- Geo vision assets
    Asset( "ANIM", "anim/noelle_vision.zip" ),

    Asset( "IMAGE", "images/inventoryimages/noelle_vision.tex" ),
    Asset( "ATLAS", "images/inventoryimages/noelle_vision.xml" )
}

AddMinimapAtlas( "images/map_icons/noelle.xml" )

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local TECH = GLOBAL.TECH

-- The character select screen lines
STRINGS.CHARACTER_TITLES.noelle = "The Maid-Knight"
STRINGS.CHARACTER_NAMES.noelle = "Noelle"
STRINGS.CHARACTER_DESCRIPTIONS.noelle = "*Is a maid.\n*In armor.\n*Also has a protective trinket of suspicious origin."
STRINGS.CHARACTER_QUOTES.noelle = "\"Leave it to me!\""
STRINGS.CHARACTER_SURVIVABILITY.noelle = "Unknown"

-- Custom speech strings
STRINGS.CHARACTERS.NOELLE = require "speech_noelle"

-- The character's name as appears in-game
STRINGS.NAMES.noelle = "Noelle"
STRINGS.SKIN_NAMES.noelle_none = "Noelle"

-- Name for Noelle's geo vision in-game
STRINGS.NAMES.NOELLE_VISION = "Noelle's Vision"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.NOELLE_VISION = "A swirly rock."
STRINGS.CHARACTERS.NOELLE.DESCRIBE.NOELLE_VISION = "My swirly rock!"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    {
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle",
        scale = 0.75,
        offset = { 0, -25 }
    },
}

-- Technically a possible collision point if somebody uses the exact same tuning namespace
GLOBAL.TUNING.NOELLE = {
    ARMORED_ROSE = GetModConfigData( "damage_reduction_enabled" ),
    DIFFICULTY_MULTIPLIER = GetModConfigData( "difficulty_multiplier" ),
    NOELLE_VISION_ENABLED = GetModConfigData( "noelle_vision_enabled" )
}

----------------------------------------------------------------------------------------------------
-- Methods to add assets to the game
----------------------------------------------------------------------------------------------------

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter( "noelle", "FEMALE", skin_modes )

--- Add the action required for the vision's shield ability
-- AddAction( id, str, fn )
-- @param id string: The ID used internally to reference the action.
-- @param str string: The string used when displaying hover text for the action.
-- @param fn function: The function to execute when performing the action.
--
-- Function:
-- @param act table: The action being performed.
local CAST_VISION = AddAction( "CAST_VISION", "Use Vision Ability", function ( act )
    local caster = act.doer
    local inst = act.invobject

    if inst ~= nil and caster ~= nil and caster:HasTag( "vision_user" ) and not inst.inactive then
		inst.components.genshinvision:CastVision( caster, act.target, act:GetActionPoint() )
        return true
	end
end )
CAST_VISION.priority = 7
CAST_VISION.rmb = true
CAST_VISION.mount_valid = true

--- Add the component action required for the vision's shield ability
-- AddComponentAction( actiontype, component, fn )
-- @param actiontype string: The type of action being added. This can be one of the following:
-- SCENE		using an object in the world
-- USEITEM		using an inventory item on an object in the world
-- POINT		using an inventory item on a point in the world
-- EQUIPPED		using an equiped item on yourself or a target object in the world
-- INVENTORY	using an inventory item
-- @see componentactions.lua
-- @param component table: The component that this action originates from.
-- @param fn function: The function to execute when performing the component action.
--
-- Function:
-- @param inst table: The item this is being invoked from. This is not the replica.
-- @param doer table: The player, or other entity invoking the component action.
-- @param action table: A reference to the table of actions being performed.
-- @param right boolean: Whether or not this was a right-click.
AddComponentAction( "INVENTORY", "genshinvision", function ( inst, doer, actions, right )
    if right and inst:HasTag( "vision_inactive" ) and doer:HasTag( "vision_user" ) then
        table.insert( actions, CAST_VISION )
    end
end )

--- The handler for the action defined with AddAction. This decides what the animation looks like.
-- @param action table: The action to handle.
-- @param fn function: The handler.
--
-- Function:
-- @param inst table: The player character.
-- @param action table: The action being handled.
-- @returns string
AddStategraphActionHandler( "wilson", GLOBAL.ActionHandler( CAST_VISION, "veryquickcastspell" ) )
AddStategraphActionHandler( "wilson_client", GLOBAL.ActionHandler( CAST_VISION, "veryquickcastspell" ) )

-- Character-bound recipes
AddCharacterRecipe( "noelle_vision", { Ingredient( "moonrock_nugget", 1 ) }, TECH.NONE, { builder_tag = "genshin_noelle" } )