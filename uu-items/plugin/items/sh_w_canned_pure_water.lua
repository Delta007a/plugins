--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Canned Pure Water";
ITEM.uniqueID = "w_canned_pure_water";
ITEM.cost = 3;
ITEM.model = "models/props_nunk/popcan01a.mdl";
ITEM.weight = 0.4;
ITEM.access = "u";
ITEM.useText = "Drink";
ITEM.category = "Non-UU Items";
ITEM.business = true;
ITEM.description = "Canned pure water, what you want to know?";
ITEM.thirst = 35;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	--player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 35, 0, 100) );
	--player:SetCharacterData( "sleep", math.Clamp(player:GetCharacterData("sleep") + 15, 0, 100) );
	--player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") - 20, 0, 100) );
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
	player:GiveItem(Clockwork.item:CreateInstance("empty_gray_can"));		
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();