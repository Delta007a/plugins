local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: 12-gauge Buckshot Shells";
RECIPE.uniqueID = "recipe_ammo_buckshot";
RECIPE.model = "models/Items/BoxBuckshot.mdl";
RECIPE.category = "Ammunition";
RECIPE.description = "With your knowledge, you can create shells used by a SPAS-12.";
RECIPE.ingredients = {["bulletcasings"] = 1, ["gunpowder"] = 1, ["empty_shotgun_box"] = 1};
RECIPE.result = {["ammo_buckshot"] = 1};
RECIPE.station = "reloading_press";
RECIPE.hidden = false;
RECIPE.flag = "A";

RECIPE:Register();