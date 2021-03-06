--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Empty Bottle UU-Branded Beer";
ITEM.cost = 1;
ITEM.model = "models/bioshockinfinite/hext_bottle_lager.mdl";
ITEM.weight = 0.1;
ITEM.access = "j";
ITEM.category = "Junk";
ITEM.business = true;
ITEM.description = "A glass bottle filled with no liquid, it has a funny smell.";
ITEM.uniqueID = "empty_uu_beer";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();