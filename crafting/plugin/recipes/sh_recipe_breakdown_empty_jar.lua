
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Empty Jar";
RECIPE.uniqueID = "recipe_breakdown_empty_jar";
RECIPE.model = "models/props_lab/jar01b.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Crush plastic jars enough to create chunks of plastic material.";
RECIPE.ingredients = {["empty_jar"] = 3};
RECIPE.result = {["plastic_chunk"] = {1, 1, 1, 2}};
RECIPE.hidden = false;

RECIPE:Register();