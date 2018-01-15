local ITEM = Clockwork.item:New();
ITEM.name = "Saltpeter";
ITEM.uniqueID = "saltpeter";
ITEM.model = "models/props_junk/plasticbucket001a.mdl";
ITEM.weight = 0.25;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "A medium sized plastic can filled with Potassium nitrate, can be used to make gunpowder.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();