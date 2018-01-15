local ITEM = Clockwork.item:New();
ITEM.name = "Refined Metal";
ITEM.uniqueID = "metal_refined";
ITEM.model = "models/gibs/furniture_gibs/furniturewooddrawer003a_chunk03.mdl";
ITEM.weight = 5;
ITEM.category = "Metal";
ITEM.business = false;
ITEM.description = "A flat-shaped square of refined, blank metal.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/gibs/metalgibs/metal_gibs");
	end;
ITEM:Register();