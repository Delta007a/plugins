--[[
	© 2011 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "UU-Branded Coffee";
ITEM.uniqueID = "uu_branded_coffee";
ITEM.cost = 11;
ITEM.model = "models/bioshockinfinite/xoffee_mug_closed.mdl";
ITEM.weight = 0.5;
ITEM.useText = "Drink";
ITEM.category = "UU-Branded Items";
ITEM.business = false;
ITEM.description = "A cup of bad coffee.";
ITEM.sleep = 20;
ITEM.thirst = 20;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	--player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 20, 0, 100) );
	--player:SetCharacterData( "sleep", math.Clamp(player:GetCharacterData("sleep") - 20, 0, 100) );
	--player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") - 20, 0, 100) );
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
	player:GiveItem(Clockwork.item:CreateInstance("empty_uu_coffee"));
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register(ITEM);