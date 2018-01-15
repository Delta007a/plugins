local ITEM = Clockwork.item:New();
ITEM.name = "Frying Pan";
ITEM.uniqueID = "frying_pan";
ITEM.model = "models/props_c17/metalPot002a.mdl";
ITEM.weight = 0.8;
ITEM.category = "Tools";
ITEM.description = "A rusted frying pan that is hopefully still capable of making magic on a stove.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();