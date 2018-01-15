local RECIPE = PLUGIN.recipe:New();
RECIPE.name = "Cooking: Human Flesh";
RECIPE.uniqueID = "recipe_human_flesh_cooked";
RECIPE.model = "models/gibs/humans/mgib_03.mdl";
RECIPE.category = "Cooking";
RECIPE.description = "Meat is meat. Meat is not good when eaten raw. Human flesh can be cooked, but it will not deny the fact that it is a crime against nature.";
RECIPE.ingredients = {["human_flesh"] = 1};
RECIPE.result = {["human_flesh_cooked"] = 1};
RECIPE.station = "stove";

--RECIPE:Register();