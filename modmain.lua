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
    DIFFICULTY_MULTIPLIER = GetModConfigData( "difficulty_multiplier" )
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter( "noelle", "FEMALE", skin_modes )
