local ITEM = Clockwork.item:New();
ITEM.name = "Wooden Board";
ITEM.uniqueID = "wooden_board";
ITEM.model = "models/weapons/tool_barricade/w_barricadeboard.mdl";
ITEM.weight = 3;
ITEM.category = "Wood";
ITEM.business = false;
ITEM.description = "A damp, moldy, rotten wooden board.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();