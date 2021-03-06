local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Wooden Board";
RECIPE.uniqueID = "recipe_breakdown_wooden_board";
RECIPE.model = "models/props_debris/wood_board06a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Break a large wooden board into smaller wooden parts.";
RECIPE.ingredients = {["wooden_board"] = 1};
RECIPE.result = {["wooden_parts"] = {2, 2, 3, 4}};
RECIPE.station = "workbench";
RECIPE.hidden = false;

RECIPE:Register();