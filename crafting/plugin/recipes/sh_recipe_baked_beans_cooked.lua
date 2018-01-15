local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Cooking: Baked Beans";
RECIPE.uniqueID = "recipe_cooking_baked_beans";
RECIPE.model = "models/bioshockinfinite/baked_beans.mdl";
RECIPE.category = "Cooking";
RECIPE.description = "You can cook the baked beans in the can to make it a more enjoyable meal. Beans are good for proteins.";
RECIPE.ingredients = {["baked_beans"] = 1};
RECIPE.result = {["baked_beans_cooked"] = 1};
RECIPE.station = "stove";
RECIPE.hidden = false;

RECIPE:Register();