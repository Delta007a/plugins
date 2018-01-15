
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Wooden Parts to Charcoal";
RECIPE.uniqueID = "recipe_charcoal";
RECIPE.model = "models/gibs/furniture_gibs/furnituretable003a_gib01.mdl";
RECIPE.category = "Resource";
RECIPE.description = "Using a furnace, you can intensively burn wood to create charcoal. Charcoal is commonly used as the resource for most filter types.";
RECIPE.ingredients = {["wooden_parts"] = 3};
RECIPE.result = {["charcoal"] = {1, 1, 2, 2, 3}};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();