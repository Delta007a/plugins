local ITEM = Clockwork.item:New();
ITEM.name = "Metal Pot";
ITEM.uniqueID = "metal_pot";
ITEM.model = "models/props_c17/metalPot001a.mdl";
ITEM.weight = 1.5;
ITEM.category = "Tools";
ITEM.description = "A large, tall pot whose purpose was to feed larger families. It has the potential to contain lots of ingredients in any form.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();