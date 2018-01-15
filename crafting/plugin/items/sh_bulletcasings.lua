local ITEM = Clockwork.item:New();
ITEM.name = "Bullet Casings";
ITEM.uniqueID = "bulletcasings";
ITEM.model = "models/props/cs_militia/reload_bullet_tray.mdl";
ITEM.weight = 0.25;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "A small box filled with various bullet casings.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();