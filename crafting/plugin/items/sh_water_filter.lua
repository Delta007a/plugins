local ITEM = Clockwork.item:New("crafting_station");
ITEM.name = "Water Filter";
ITEM.uniqueID = "water_filter";
ITEM.cost = 0;
ITEM.model = "models/props_c17/FurnitureBoiler001a.mdl";
ITEM.baseWeight = 45;
ITEM.category = "Crafting Station";
ITEM.business = false;
ITEM.description = "A water filtration system.";

ITEM.maxWater = 10; -- Maximum capacity in liters
ITEM.refillInterval = 5; -- Amount of minuntes to refill the refillAmount
ITEM.refillAmount = 1; -- Amount to refill every refillInterval

ITEM:AddData("Water", -1, true);

function ITEM:GetWeight()
	return self("baseWeight", 45) + self:GetData("Water", 0);
end;
ITEM:AddQueryProxy("weight", ITEM.GetWeight);

if (SERVER) then
	function ITEM:OnInstantiated()
		if (self:GetData("Water", 0) == -1) then
			self:SetData("Water", self("maxWater", 10));
		end;
	end;

	function ITEM:OnEntityThink(entity)
		self:SetData("Water", math.Round(math.Clamp(self:GetData("Water", 0) + self("refillAmount", 1) / self("refillInterval", 5), 0, self("maxWater", 10)), 2));
		return 60;
	end;
else
	function ITEM:OnHUDPaintTargetID(ent, x, y, alpha) 
		return Clockwork.kernel:DrawInfo("[Water: "..self:GetData("Water", 0).."l/"..self("maxWater", 10).."l]", x, y, Color(255, 255, 255), alpha);
	end;
end;

ITEM:Register();