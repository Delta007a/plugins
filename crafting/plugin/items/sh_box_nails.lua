local ITEM = Clockwork.item:New();
ITEM.name = "Box of Nails";
ITEM.uniqueID = "box_nails";
ITEM.model = "models/props_lab/box01a.mdl";
ITEM.weight = 0.75;
ITEM.category = "Crafting";
ITEM.business = false;
ITEM.description = "A small box of nails.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();