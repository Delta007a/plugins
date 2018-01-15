local ITEM = Clockwork.item:New();
ITEM.name = "Stove Small";
ITEM.cost = 0;
ITEM.model = "models/props_interiors/makeshift_stove_battery.mdl";
ITEM.uniqueID = "stove_small";
ITEM.craftingStation = true;
ITEM.weight = 6;
ITEM.category = "Crafting Station";
ITEM.business = false;
ITEM.description = "A an old stove with cooking plate. Used for cooking.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:CanPickup(player, bQuickUse, entity)
	return true;
end;

ITEM:Register();