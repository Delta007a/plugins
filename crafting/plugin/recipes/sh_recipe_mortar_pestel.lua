
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Crafting: Mortar & Pestel";
RECIPE.uniqueID = "recipe_mortar_pestel";
RECIPE.model = "models/gibs/furniture_gibs/furnituretable003a_gib01.mdl";
RECIPE.category = "Resource";
RECIPE.description = "By using a hammer together with a furnace you can create a make shift Mortar & Pestel.";
RECIPE.ingredients = {["granite"] = 2};
RECIPE.result = {["mortar_pestel"] = 1};
RECIPE.tools = {"hammer"};
RECIPE.station = {"furnace"};
RECIPE.flag = "A";
RECIPE.hidden = false;

RECIPE:Register();