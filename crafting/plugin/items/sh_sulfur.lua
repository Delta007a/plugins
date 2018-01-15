local ITEM = Clockwork.item:New();
ITEM.name = "Sulfur";
ITEM.uniqueID = "sulfur";
ITEM.model = "models/props_junk/metalcontainer02.mdl";
ITEM.weight = 0.25;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "A small tub of sulfur. Useful for making fertilizer or gunpowder.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();