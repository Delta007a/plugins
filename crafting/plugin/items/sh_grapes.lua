local ITEM = Clockwork.item:New();
ITEM.name = "Box of Grapes";
ITEM.cost = 8;
ITEM.model = "models/props_junk/garbage_bag001a.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.uniqueID = "grapes";
ITEM.category = "Ingredients";
ITEM.business = false;
ITEM.description = "A box of Grapes, can probably be used to make wine.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();