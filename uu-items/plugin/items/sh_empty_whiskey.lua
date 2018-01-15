--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty Whiskey";
ITEM.cost = 1;
ITEM.model = "models/bioshockinfinite/absinthebottle.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.category = "Junk";
ITEM.business = true;
ITEM.description = "A few time ago it was a beautiful bottle...";
ITEM.uniqueID = "empty_whiskey";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();