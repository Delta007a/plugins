local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: 4.6x30mm Rounds";
RECIPE.uniqueID = "recipe_ammo_smg1";
RECIPE.model = "models/Items/BoxMRounds.mdl";
RECIPE.category = "Ammunition";
RECIPE.description = "Create 4.6mm Rounds used by the MP7A1 and MP7.";
RECIPE.ingredients = {["empty_smg_box"] = 1, ["bulletcasings"] = 1, ["gunpowder"] = 1};
RECIPE.result = {["ammo_smg1"] = 1};
RECIPE.station = "reloading_press";
RECIPE.hidden = false;
RECIPE.flag = "A";

RECIPE:Register();