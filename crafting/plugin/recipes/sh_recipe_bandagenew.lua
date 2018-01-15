local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cloth Bandage";
RECIPE.uniqueID = "recipe_bandagenew";
RECIPE.model = "models/props_wasteland/prison_toiletchunk01f.mdl";
RECIPE.category = "Medical";
RECIPE.description = "Knitting cloth together, you can create a decent bandage for wrapping";
RECIPE.ingredients = {["cloth_scraps"] = 2};
RECIPE.result = {["bandage"] = {1, 1, 1, 1, 1, 1, 2}};
RECIPE.hidden = false;

RECIPE:Register();