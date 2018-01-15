local ITEM = Clockwork.item:New();
ITEM.name = "Cooking Pot";
ITEM.uniqueID = "cooking_pot";
ITEM.model = "models/props_interiors/pot02a.mdl";
ITEM.weight = 0.6;
ITEM.category = "Tools";
ITEM.description = "An old, dirty pot that has a number of years in the kitchen behind it. One would still be able to conjure up some stew if a stove was nearby.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();