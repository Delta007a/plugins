local ITEM = Clockwork.item:New();
ITEM.name = "Scissors";
ITEM.uniqueID = "scissors";
ITEM.model = "models/props_junk/scissors.mdl";
ITEM.weight = 0.1;
ITEM.category = "Tools";
ITEM.description = "A pair of scissors used for cutting things. From a tailoring standpoint, it will also work as a good tool.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();