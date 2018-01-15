local ITEM = Clockwork.item:New();
ITEM.name = "Yeast";
ITEM.model = "models/props_junk/garbage_bag001a.mdl";
ITEM.weight = 0.1;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "A bag of yeast.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();