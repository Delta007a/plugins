local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Crossbow Bolts";
RECIPE.uniqueID = "recipe_ammo_xbowbolt";
RECIPE.model = "models/Items/CrossbowRounds.mdl";
RECIPE.category = "Ammunition";
RECIPE.description = "Using metal and nails with the right tool, you can create bolts fit for a crossbow.";
RECIPE.ingredients = {["nails"] = 5, ["metal_piece"] = 2};
RECIPE.result = {["ammo_xbowbolt"] = 1};
RECIPE.tools = {"hammer"};
RECIPE.station = "workbench";
RECIPE.hidden = false;
RECIPE.flag = "X";

RECIPE:Register();