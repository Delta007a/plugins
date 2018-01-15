--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty UU-Branded Pickle Jar";
ITEM.cost = 1;
ITEM.model = "models/bioshockinfinite/dickle_jar.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.category = "Junk";
ITEM.business = true;
ITEM.description = "Empty jar. What you whant?";
ITEM.uniqueID = "empty_uu_pickle";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();