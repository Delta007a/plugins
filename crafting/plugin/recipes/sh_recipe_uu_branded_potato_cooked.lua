local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cooking: Union Branded Potato";
RECIPE.uniqueID = "recipe_cooking_uu_branded_potato";
RECIPE.model = "models/bioshockinfinite/hext_potato.mdl";
RECIPE.category = "Cooking";
RECIPE.description = "Boiling some water in a pot, you can boil a potato into an edible delicacy. It's a healthy vegetable!";
RECIPE.ingredients = {["uu_branded_potato"] = 1};
RECIPE.result = {["uu_branded_potato_cooked"] = 1};
RECIPE.station = "stove" or "small stove";
RECIPE.hidden = false;

RECIPE:Register();