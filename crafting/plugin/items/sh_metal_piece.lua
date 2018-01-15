local ITEM = Clockwork.item:New();
ITEM.name = "Piece of Metal";
ITEM.uniqueID = "metal_piece";
ITEM.model = "models/props_c17/oildrumchunk01a.mdl";
ITEM.weight = 2;
ITEM.category = "Metal";
ITEM.business = false;
ITEM.description = "A piece of brittle, but heavy metal.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();