local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Rusty Cans";
RECIPE.uniqueID = "recipe_breakdown_rusty_can";
RECIPE.model = "models/props_junk/garbage_metalcan002a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Using a furnace, you could melt down these cans and remodel the metal.";
RECIPE.ingredients = {["rusty_can"] = 3};
RECIPE.result = {["metal_piece"] = {1, 1, 2}};
RECIPE.station = "furnace";
RECIPE.hidden = false;

RECIPE:Register();
