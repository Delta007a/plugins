--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty UU-Branded Coffee";
ITEM.cost = 1;
ITEM.model = "models/bioshockinfinite/xoffee_mug_closed.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.category = "Junk";
ITEM.business = true;
ITEM.description = "Empty carton of coffee.";
ITEM.uniqueID = "empty_uu_coffee";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();