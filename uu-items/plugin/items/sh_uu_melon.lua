--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "UU-Branded Melon";
ITEM.uniqueID = "UU_branded_melon";
ITEM.cost = 8;
ITEM.model = "models/props_junk/watermelon01.mdl";
ITEM.weight = 1;
ITEM.access = "u";
ITEM.useText = "Eat";
ITEM.category = "UU-Branded Items";
ITEM.business = true;
ITEM.description = "A green fruit, it has a hard outer shell.";
ITEM.hunger = 30;
ITEM.thirst = 35;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	player:SetCharacterData("stamina", 100);
	--player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 35, 0, 100) );
	--player:SetCharacterData( "sleep", math.Clamp(player:GetCharacterData("sleep") - 20, 0, 100) );
	--player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") - 30, 0, 100) );
	player:BoostAttribute(self.name, ATB_AGILITY, 3, 120);
	player:BoostAttribute(self.name, ATB_STAMINA, 3, 120);
	player:GiveItem(Clockwork.item:CreateInstance("eaten_melon"));		
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();