local ITEM = Clockwork.item:New();
ITEM.name = "Mortar and Pestle";
ITEM.uniqueID = "mortar_pestel";
ITEM.model = "models/props_junk/garbage_coffeemug001a.mdl";
ITEM.weight = 1;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "A mortar with the including Pestle";

function ITEM:OnDrop(player, position) end;

ITEM:Register();