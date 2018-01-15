--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Special Breen's water";
ITEM.uniqueID = "uu_special_breens_water";
ITEM.cost = 3;
ITEM.model = "models/props_junk/PopCan01a.mdl";
ITEM.skin = 2;
ITEM.weight = 0.4;
ITEM.access = "u";
ITEM.useText = "Drink";
ITEM.category = "UU-Branded Items";
ITEM.business = true;
ITEM.description = "Standart citizen water. Red can.";
ITEM.thirst = 30;
--ITEM.sleep = -7;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	--player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 30, 0, 100) );
	--player:SetCharacterData( "sleep", math.Clamp(player:GetCharacterData("sleep") - 7, 0, 100) );
	--player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") - 20, 0, 100) );
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
	player:GiveItem(Clockwork.item:CreateInstance("empty_yellow_can"));
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();