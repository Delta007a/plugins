--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New();
ITEM.name = "Metropolice Grade Ration";
ITEM.model = "models/weapons/w_packatm.mdl";
ITEM.weight = 2;
ITEM.uniqueID = "metropolice_grade_ration";
ITEM.useText = "Open";
ITEM.description = "A ration package for Civil Protection Forces.";

ITEM.food = {"uu_branded_apple", "uu_branded_banana", "uu_branded_orange",
				"uu_branded_cornflakes", "uu_branded_bread",
				"uu_branded_milk_jug", "uu_branded_large_soda"};
--ITEM.book = {"book_c", "book_zotu", "book_tsod"};
--ITEM.misc = {"uu_bandage", "request_device", "boxed_bag"};

-- Called when a player attempts to pick up the item.
function ITEM:CanPickup(player, quickUse, itemEntity)
	if (quickUse) then
		if (!player:CanHoldWeight(self.weight)) then
			Clockwork.player:Notify(player, "You do not have enough inventory space!");
			
			return false;
		end;
	end;
end;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	--Clockwork.player:GiveCash(player, 50, "medium grade ration packet");
	
	player:GiveItem(Clockwork.item:CreateInstance("uu_branded_metropolice_supplements"), true);
	player:GiveItem(Clockwork.item:CreateInstance("uu_special_breens_water"), true);
	player:GiveItem(Clockwork.item:CreateInstance("uu_special_breens_water"), true);
	player:GiveItem(Clockwork.item:CreateInstance("uu_branded_apple"), true);
	player:GiveItem(Clockwork.item:CreateInstance("uu_branded_orange"), true);
	player:GiveItem(Clockwork.item:CreateInstance("uu_branded_banana"), true);
	
	-- Give random items if lucky.
	if (math.random(1,3) == 2) then
		local item = Clockwork.item:CreateInstance(self.food[math.random(1, #self.food)]);
		player:GiveItem(item, true);
	--[[elseif (math.random(1,10) == 2) then
		local item = Clockwork.item:CreateInstance(self.book[math.random(1, #self.book)]);
		player:GiveItem(item, true);
	elseif (math.random(1,20) == 2) then
		local item = Clockwork.item:CreateInstance(self.misc[math.random(1, #self.misc)]);
		player:GiveItem(item, true);
	elseif (math.random(1,20) == 2) then--]]
		--player:GiveItem(Clockwork.item:CreateInstance("ration_token"), true);
	end
	
	--Clockwork.plugin:Call("PlayerUseRation", player);
end;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();