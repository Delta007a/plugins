local ITEM = Clockwork.item:New();
ITEM.name = "Stove";
ITEM.cost = 0;
ITEM.model = "models/props_c17/furnitureStove001a.mdl";
ITEM.uniqueID = "stove";
ITEM.craftingStation = true;
ITEM.weight = 45;
ITEM.category = "Crafting Station";
ITEM.business = false;
ITEM.description = "A an old stove with cooking plates. Used for cooking.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:CanPickup(player, bQuickUse, entity)
	return false;
end;

ITEM:Register();