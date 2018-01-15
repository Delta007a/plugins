local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Suitcase";
RECIPE.uniqueID = "recipe_breakdown_suitcase";
RECIPE.model = "models/weapons/w_suitcase_passenger.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Tear apart the insides of a suitcase to retrive some cloth.";
RECIPE.ingredients = {["suitcase"] = 1};
RECIPE.result = {["cloth_scraps"] = {1, 2, 2}};

--RECIPE:Register();