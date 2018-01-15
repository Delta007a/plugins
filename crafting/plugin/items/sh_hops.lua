local ITEM = Clockwork.item:New();
ITEM.name = "Hops";
ITEM.model = "models/props_junk/garbage_bag001a.mdl";
ITEM.weight = 0.1;
ITEM.category = "Ingredients";
ITEM.business = false;
ITEM.description = "A bag of hops.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();