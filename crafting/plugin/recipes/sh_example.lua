
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "Example Recipe"; -- Name
RECIPE.uniqueID = "example"; -- Unique ID (mandatory!)
RECIPE.model = "models/props_junk/cardboard_box004a.mdl"; -- Model for the spawn icon
RECIPE.skin = 0; -- Number for the skin in the spawn icon
RECIPE.category = "Storage Blueprints"; -- Category
RECIPE.description = "Just attach the cables to the cloth..."; -- Description
RECIPE.ingredients = {["cloth"] = 2, ["cables"] = 1}; -- Ingredients (will be consumed), ["<uniqueID>"] = <amount>, separated by ','
RECIPE.result = {["bag"] = 1, ["stuff"] = {0, 1, 2}}; -- Result (will be given), ["<uniqueID>"] = <amount>, separated by ','
RECIPE.tools = {"hammer", "wrench"}; -- Tools (needed but not consumed), "<uniqueID>", separated by ','
RECIPE.station = "furnace"; -- Player has to look at it and be close, won't be consumed, "<uniqueID>"
RECIPE.flag = "1"; -- Sets which flag is needed to see/craft this (flag is a single character (letter/number) as a string!)

-- Check if the player can craft the recipe, overwrites all the checks (tools, ingredients, station AND flags) 
function RECIPE:PlayerCanCraftRecipe(player, inventory)
	if (canCraft) then
		return true
	else
		return false, failReason;
	end;
end;

-- Check if the player has the tools. Overwrites the default tool-check
function RECIPE:PlayerHasTools(player, inventory)
	if (hasTools) then
		return true
	else
		return false, failReason;
	end;
end;

-- Check if the player has the ingredients. Overwrites the default ingredient-check
function RECIPE:PlayerHasIngredients(player, inventory)
	if (hasIngredients) then
		return true
	else
		return false, failReason;
	end;
end;

-- Check if the player is near the required crafting station. Overwrites the default station-check
function RECIPE:PlayerIsNearStation(player)
	if (isNear) then
		return true
	else
		return false, failReason;
	end;
end;

-- Check if the crafting station is valid. Doesn't overwrite anything
function RECIPE:IsValidCraftingStation(itemTable, itemEntity)
	if (isValid) then
		return true
	else
		return false, failReason;
	end;
end;
--RECIPE:Register();

--[[ Empty recipe
local RECIPE = PLUGIN.recipe:New();

RECIPE.name = "";
RECIPE.uniqueID = "";
RECIPE.model = "";
RECIPE.skin = ;
RECIPE.category = "";
RECIPE.description = "";
RECIPE.ingredients = {[""] = , [""] = };
RECIPE.result = {[""] = , [""] = { , }};
RECIPE.tools = {"", ""};
RECIPE.station = "";
RECIPE.hidden = false;
RECIPE.flag = "";

RECIPE:Register();
--]]