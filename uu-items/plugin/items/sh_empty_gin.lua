--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty Gin";
ITEM.cost = 1;
ITEM.model = "models/bioshockinfinite/gin_bottle.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.category = "Junk";
ITEM.business = true;
ITEM.description = "Just a gin-less bottle. Move away";
ITEM.uniqueID = "empty_gin";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();