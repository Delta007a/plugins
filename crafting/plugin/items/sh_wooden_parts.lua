local ITEM = Clockwork.item:New();
ITEM.name = "Wooden Parts";
ITEM.model = "models/gibs/furniture_gibs/furnituretable003a_gib01.mdl";
ITEM.weight = 0.25;
ITEM.uniqueID = "wooden_parts";
ITEM.category = "Wood";
ITEM.business = false;
ITEM.description = "A damaged piece of scrap wood.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();