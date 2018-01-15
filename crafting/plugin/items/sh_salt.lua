local ITEM = Clockwork.item:New();
ITEM.name = "Bag of Salt";
ITEM.uniqueID = "salt";
ITEM.model = "models/props_junk/garbage_bag001a.mdl";
ITEM.weight = 0.25;
ITEM.category = "Ingredients";
ITEM.description = "A bag of standard salt used in preservation of food and as a simple spice.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();