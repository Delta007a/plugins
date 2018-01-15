
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Plastic Bottle";
RECIPE.uniqueID = "recipe_breakdown_plastic_bottle";
RECIPE.model = "models/props_junk/garbage_plasticbottle001a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Crush bottles of plastic to create usable chunks of plastic material.";
RECIPE.ingredients = {["plastic_bottle"] = 2};
RECIPE.result = {["plastic_chunk"] = {1, 1, 2}};
RECIPE.hidden = false;

RECIPE:Register();