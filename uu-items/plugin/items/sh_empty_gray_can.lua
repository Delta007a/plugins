--[[
	� 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty Gray Can";
ITEM.cost = 1;
ITEM.model = "models/props_nunk/popcan01a.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.category = "Junk";
ITEM.business = true;
ITEM.description = "A gray aluminium can, it doesn't swish when you shake it.";
ITEM.uniqueID = "empty_gray_can";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();