-- This information tells other players more about the mod
name = "Genshin Impact - Noelle"
description = "A maid who faithfully serves the Knights of Favonius. She dreams of joining their ranks someday.\n\n[Perks]\nArmored Rose: Innate 30% physical damage reduction. \n\nGeo Vision: Starts with a protective trinket. Right-click to cast a 300 HP shield that lasts 12s, 24s cooldown. While the shield is up, 55% chance to heal 10% of own health on attacking. Every 4th attack she inflicts while the shield is on cooldown will reduce it by 1s. While the shield is up, Noelle is protected from the special effects of enemy attacks."
author = "Nanamin, サイ"
version = "1.2.6" -- This is the version of the template. Change it to your own number.

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = "/files/file/950-extended-sample-character/"

-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true

-- Not compatible with Don't Starve
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

-- Character mods are required by all clients
all_clients_require_mod = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- The mod's tags displayed on the server list
server_filter_tags = {
  "character",
  "genshin"
}

configuration_options = {
  {
    default = true,
    hover = "30% passive damage reduction",
    label = "Armored Rose",
    name = "damage_reduction_enabled",
    options = {
      { description = "Enable", data = true },
      { description = "Disable", data = false }
    }
  },
  {
    default = 1.0,
    hover = "Affects the rate of sanity and hunger drain for this character"
    label = "Difficulty",
    name = "difficulty_multiplier",
    options = {
      { description = "Casual", data = 0.5, hover = "50% less sanity and hunger drain" },
      { description = "Default", data = 1.0, hover = "Normal sanity and hunger drain" },
      { description = "Hardcore", data = 1.5, hover = "50% more sanity and hunger drain" }
    },
  }
}
