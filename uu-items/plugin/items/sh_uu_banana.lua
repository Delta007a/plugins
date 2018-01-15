--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "UU-Branded banana";
ITEM.uniqueID = "uu_branded_banana";
ITEM.cost = 4;
ITEM.model = "models/bioshockinfinite/hext_banana.mdl";
ITEM.weight = 0.2;
ITEM.access = "u";
ITEM.useText = "Eat";
ITEM.category = "UU-Branded Items";
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