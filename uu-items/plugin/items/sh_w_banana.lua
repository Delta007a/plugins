--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Banana";
ITEM.uniqueID = "w_banana";
ITEM.cost = 4;
ITEM.model = "models/bioshockinfinite/loot_banana.mdl.mdl";
ITEM.weight = 0.2;
ITEM.access = "u";
ITEM.useText = "Eat";
ITEM.category = "Non-UU Items";
ITEM.business = true;
ITEM.description = "Just banana, nothing else, i guess...";
ITEM.hunger = 13;
--ITEM.thirst = 5;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	--player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 5, 0, 100) );
	--player:SetCharacterData( "sleep", math.Clamp(player:GetCharacterData("sleep") - 20, 0, 100) );
	--player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") - 25, 0, 100) );
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();