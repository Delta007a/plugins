local ITEM = Clockwork.item:New();
ITEM.name = "Furnace";
ITEM.model = "models/props/CS_militia/furnace01.mdl";
ITEM.uniqueID = "furnace";
ITEM.craftingStation = true;
ITEM.weight = 45;
ITEM.category = "Crafting Station";
ITEM.business = false;
ITEM.description = "A furnace.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:CanPickup(player, bQuickUse, entity)
	return false;
end;

ITEM:Register();