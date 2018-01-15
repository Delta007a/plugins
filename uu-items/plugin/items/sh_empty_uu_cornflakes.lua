--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty UU-Branded Cornflakes";
ITEM.cost = 1;
ITEM.model = "models/bioshockinfinite/hext_cereal_box_cornflakes.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.category = "Junk";
ITEM.business = true;
ITEM.description = "Empty box of cornflakes.";
ITEM.uniqueID = "empty_uu_cornflakes";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();