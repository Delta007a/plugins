--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Chinese Takeout";
ITEM.cost = 8;
ITEM.uniqueID = "w_chinese_takeout";
ITEM.model = "models/props_junk/garbage_takeoutcarton001a.mdl";
ITEM.weight = 0.4;
ITEM.access = "u";
ITEM.useText = "Eat";
ITEM.category = "Non-UU Items";
ITEM.business = true;
ITEM.description = "A takeout carton, it's filled with cold noodles.";
ITEM.hunger = 45;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	player:SetCharacterData("stamina", 100);
	--player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 50, 0, 100) );
	--player:SetCharacterData( "sleep", math.Clamp(player:GetCharacterData("sleep") - 20, 0, 100) );
	--player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") - 45, 0, 100) );
	player:BoostAttribute(self.name, ATB_AGILITY, 3, 120);
	player:BoostAttribute(self.name, ATB_STAMINA, 3, 120);
	player:GiveItem(Clockwork.item:CreateInstance("empty_chinese_takeout"));
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();