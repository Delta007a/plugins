--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Chocolate";
ITEM.uniqueID = "w_chocolate";
ITEM.cost = 6;
ITEM.model = "models/bioshockinfinite/loot_candy_chocolate.mdl";
ITEM.weight = 0.3;
ITEM.access = "u";
ITEM.useText = "Eat";
ITEM.category = "Non-UU Items";
ITEM.business = true;
ITEM.description = "Such sweet chocolate. Like in old times.";
ITEM.hunger = 18;
ITEM.sleep = 5;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	--player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 5, 0, 100) );
	--player:SetCharacterData( "sleep", math.Clamp(player:GetCharacterData("sleep") - 20, 0, 100) );
	--player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") - 25, 0, 100) );
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
	player:GiveItem(Clockwork.item:CreateInstance("empty_chocolate"));
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();