--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty UU-Branded Chocolate";
ITEM.cost = 1;
ITEM.skin = 1;
ITEM.model = "models/bioshockinfinite/hext_candy_chocolate.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.category = "Junk";
ITEM.business = true;
ITEM.description = "Empty packet of chocolate.";
ITEM.uniqueID = "empty_uu_chocolate";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();