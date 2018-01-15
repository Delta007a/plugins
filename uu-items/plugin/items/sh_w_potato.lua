--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Potato";
ITEM.uniqueID = "w_potato";
ITEM.cost = 2;
ITEM.model = "models/bioshockinfinite/loot_potato.mdl";
ITEM.weight = 0.1;
ITEM.access = "u";
ITEM.useText = "Eat";
ITEM.category = "Non-UU Items";
ITEM.business = true;
ITEM.description = "It's smiles, like...Lukashenko? :{)";
ITEM.hunger = 8;
--ITEM.sleep = 5;

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