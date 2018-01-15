local ITEM = Clockwork.item:New();
ITEM.name = "Granite";
ITEM.uniqueID = "granite";
ITEM.model = "models/props_junk/rock001a.mdl";
ITEM.weight = 0.5;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "A medium sized rock of Granite";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();