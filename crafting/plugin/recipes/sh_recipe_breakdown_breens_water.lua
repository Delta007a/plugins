
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Breakdown: Cans of Breen's Water";
RECIPE.uniqueID = "recipe_breakdown_breens_water";
RECIPE.model = "models/props_junk/PopCan01a.mdl";
RECIPE.category = "Breakdown";
RECIPE.description = "Smelt some cans to retrive their metal.";
RECIPE.ingredients = {["empty_can"] = 3};
RECIPE.result = {["metal_piece"] = {0, 1, 2}};
RECIPE.station = "furnace";
RECIPE.hidden = false;

--RECIPE:Register();