local assets =
{
	Asset( "ANIM", "anim/noelle.zip" ),
	Asset( "ANIM", "anim/ghost_noelle_build.zip" ),
}

local skins =
{
	normal_skin = "noelle",
	ghost_skin = "ghost_noelle_build",
}

return CreatePrefabSkin("noelle_none",
{
	base_prefab = "noelle",
	type = "base",
	assets = assets,
	skins = skins,
	skin_tags = {"noelle", "CHARACTER", "BASE"},
	build_name_override = "noelle",
	rarity = "Character",
})