local ITEM = Clockwork.item:New();
ITEM.name = "Screwdriver";
ITEM.uniqueID = "screwdriver";
ITEM.model = "models/props_junk/junk_screwdriver.mdl";
ITEM.weight = 0.6;
ITEM.category = "Tools";
ITEM.description = "A large screwdriver capable of great things when used in combination with the proper materials. When working with electronics, this is invaluable.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();