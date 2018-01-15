local ITEM = Clockwork.item:New();
ITEM.name = "Claw Hammer";
ITEM.uniqueID = "hammer";
ITEM.model = "models/weapons/tool_barricade/w_tool_barricade.mdl";
ITEM.weight = 1;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "A rusted, ancient claw hammer.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();