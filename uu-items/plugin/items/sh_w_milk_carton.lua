--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Milk Carton";
ITEM.uniqueID = "w_milk_carton";
ITEM.cost = 6;
ITEM.model = "models/props_junk/garbage_milkcarton002a.mdl";
ITEM.weight = 0.8;
ITEM.access = "u";
ITEM.useText = "Drink";
ITEM.category = "Non-UU Items";
ITEM.business = true;
ITEM.description = "A carton filled with delicious milk.";
ITEM.hunger = 10;
ITEM.thirst = 40;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	player:SetCharacterData("stamina", 100);
	--player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 40, 0, 100) );
	--player:SetCharacterData( "sleep", math.Clamp(player:GetCharacterData("sleep") - 20, 0, 100) );
	--player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") - 10, 0, 100) );
	player:BoostAttribute(self.name, ATB_AGILITY, 3, 120);
	player:BoostAttribute(self.name, ATB_STAMINA, 3, 120);
	player:GiveItem(Clockwork.item:CreateInstance("empty_milk_carton"));	
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();