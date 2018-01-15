local ITEM = Clockwork.item:New();
ITEM.name = "Pliers";
ITEM.model = "models/props_c17/tools_pliers01a.mdl";
ITEM.uniqueID = "pliers";
ITEM.weight = 0.75;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "An advanced plier used to twitch items and move them.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();