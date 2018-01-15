local ITEM = Clockwork.item:New();
ITEM.name = "Roll of Duct Tape";
ITEM.uniqueID = "duct_tape";
ITEM.model = "models/props_junk/duct_tape.mdl";
ITEM.weight = 0.3;
ITEM.category = "Crafting";
ITEM.description = "A roll of thick duct tape, used in various ways to either repair or craft things. When things break, duct tape is the answer.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();