
local ITEM = Clockwork.item:New(nil, true);
ITEM.name = "Crafting Station";
ITEM.uniqueID = "crafting_station";
ITEM.model = "models/props_c17/FurnitureBoiler001a.mdl";
ITEM.craftingStation = true;
ITEM.weight = 50;
ITEM.category = "Crafting Station";
ITEM.business = false;
ITEM.description = "A crafting station.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:CanPickup(player, bQuickUse, entity)
	return false;
end;



ITEM:Register();