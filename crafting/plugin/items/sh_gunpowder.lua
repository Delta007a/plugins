local ITEM = Clockwork.item:New();
ITEM.name = "Gunpowder";
ITEM.uniqueID = "gunpowder";
ITEM.model = "models/props_junk/metal_paintcan001a.mdl";
ITEM.weight = 0.25;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "An old can of gunpowder.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();