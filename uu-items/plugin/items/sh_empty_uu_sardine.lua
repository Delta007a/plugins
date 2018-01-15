--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty UU-branded Sardine";
ITEM.cost = 1;
ITEM.model = "models/bioshockinfinite/cardine_can_open.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.business = true;
ITEM.category = "Junk";
ITEM.description = "Metal can without sardines.";
ITEM.uniqueID = "empty_uu_sardine";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();