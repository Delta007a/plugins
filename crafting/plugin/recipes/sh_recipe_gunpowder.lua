
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Gunpowder";
RECIPE.uniqueID = "recipe_gunpowder";
RECIPE.model = "models/gibs/furniture_gibs/furnituretable003a_gib01.mdl";
RECIPE.category = "Resource";
RECIPE.description = "By combining Saltpeter, sulfur and charcoal you can mix it into gunpowder.";
RECIPE.ingredients = {["saltpeter"] = 1, ["sulfur"] = 1, ["charcoal"] = 1};
RECIPE.result = {["gunpowder"] = {1, 1, 2, 2, 3}};
RECIPE.tools = {"mortal_pestel"};
RECIPE.flag = "A";
RECIPE.hidden = false;

RECIPE:Register();