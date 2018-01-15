--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("alcohol_base");
ITEM.name = "Gin";
ITEM.uniqueID = "w_gin";
ITEM.cost = 11;
ITEM.model = "models/bioshockinfinite/gin_bottle.mdl";
ITEM.weight = 0.6;
ITEM.access = "U";
ITEM.category = "Non-UU Items";
ITEM.business = true;
ITEM.useText = "Drink";
ITEM.attributes = {Strength = 2};
ITEM.description = "A glass bottle filled with liquid, it has a funny smell.";
--ITEM.hunger = 5;
ITEM.thirst = 45;
ITEM.sleep = -25;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	player:SetCharacterData("stamina", 100);
	--player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 30, 0, 100) );
	--player:SetCharacterData( "sleep", math.Clamp(player:GetCharacterData("sleep") + 5, 0, 100) );
	--player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") - 5, 0, 100) );
	player:BoostAttribute(self.name, ATB_AGILITY, 3, 120);
	player:BoostAttribute(self.name, ATB_STAMINA, 3, 120);
	player:GiveItem(Clockwork.item:CreateInstance("empty_gin"));		
end;

ITEM:Register();