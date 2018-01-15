local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cooking: Potato";
RECIPE.uniqueID = "recipe_cooking_potato";
RECIPE.model = "models/bioshockinfinite/loot_potato.mdl";
RECIPE.category = "Cooking";
RECIPE.description = "Boiling some water in a pot, you can boil a potato into an edible delicacy. It's a healthy vegetable!";
RECIPE.ingredients = {["potato"] = 1};
RECIPE.result = {["potato_cooked"] = 1};
RECIPE.station = "stove";
RECIPE.hidden = false;

RECIPE:Register();