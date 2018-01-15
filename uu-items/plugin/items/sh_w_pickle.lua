--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Jar of pickles";
ITEM.uniqueID = "w_pickle";
ITEM.cost = 9;
ITEM.model = "models/bioshockinfinite/pickle_jar.mdl";
ITEM.weight = 0.5;
ITEM.access = "u";
ITEM.useText = "Eat";
ITEM.category = "Non-UU Items";
ITEM.business = true;
ITEM.description = "CUCUMBERS in jar, move away.";
ITEM.hunger = 20;
ITEM.thirst = 5;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	player:SetHealth( math.Clamp(player:Health() + 5, 0, 100) );
	--player:SetCharacterData( "thirst", math.Clamp(player:GetCharacterData("thirst") - 5, 0, 100) );
	--player:SetCharacterData( "sleep", math.Clamp(player:GetCharacterData("sleep") - 20, 0, 100) );
	--player:SetCharacterData( "hunger", math.Clamp(player:GetCharacterData("hunger") - 25, 0, 100) );
	player:BoostAttribute(self.name, ATB_ENDURANCE, 1, 120);
	player:BoostAttribute(self.name, ATB_STRENGTH, 1, 120);
	player:GiveItem(Clockwork.item:CreateInstance("empty_pickle"));	
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();