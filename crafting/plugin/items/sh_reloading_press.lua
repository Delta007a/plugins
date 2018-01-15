local ITEM = Clockwork.item:New();
ITEM.name = "Reloading Press";
ITEM.model = "models/props/cs_militia/reloadingpress01.mdl";
ITEM.uniqueID = "reloading_press";
ITEM.craftingStation = true;
ITEM.weight = 45;
ITEM.category = "Crafting Station";
ITEM.business = false;
ITEM.description = "An old beaten up reloading press";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

function ITEM:CanPickup(player, bQuickUse, entity)
	return false;
end;

ITEM:Register();