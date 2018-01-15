--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty Sardine";
ITEM.cost = 1;
ITEM.model = "models/bioshockinfinite/sardine_can_open.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.category = "Junk";
ITEM.business = true;
ITEM.description = "Empty box of sardine.";
ITEM.uniqueID = "empty_sardine";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();