local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: .357 Rounds";
RECIPE.uniqueID = "recipe_ammo_357";
RECIPE.model = "models/Items/357ammo.mdl";
RECIPE.category = "Ammunition";
RECIPE.description = "With your knowledge, you can create bullets to be used in a .357.";
RECIPE.ingredients = {["bulletcasings"] = 1, ["gunpowder"] = 1, ["empty_357_box"] = 1};
RECIPE.result = {["ammo_357"] = 1};
RECIPE.station = "reloading_press";
RECIPE.hidden = false;
RECIPE.flag = "A";

RECIPE:Register();