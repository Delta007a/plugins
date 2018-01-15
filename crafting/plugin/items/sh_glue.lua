local ITEM = Clockwork.item:New();
ITEM.name = "Tube of Glue";
ITEM.uniqueID = "glue";
ITEM.model = "models/props_junk/junk_glue.mdl";
ITEM.weight = 0.125;
ITEM.category = "Crafting";
ITEM.description = "A tube of glue used in gluing things together.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();