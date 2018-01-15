local RECIPE = PLUGIN.recipe:New();
RECIPE.name = "Cooking: Human Meat";
RECIPE.uniqueID = "recipe_human_meat_cooked";
RECIPE.model = "models/gibs/humans/mgib_03.mdl";
RECIPE.category = "Cooking";
RECIPE.description = "Meat is meat. Meat is not good when eaten raw. Human meat can be cooked, but it will not deny the fact that it is a crime against nature.";
RECIPE.ingredients = {["human_meat"] = 1};
RECIPE.result = {["human_meat_cooked"] = 1};
RECIPE.station = "stove";

--RECIPE:Register();