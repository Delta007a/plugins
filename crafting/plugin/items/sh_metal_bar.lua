local ITEM = Clockwork.item:New();
ITEM.name = "Metal Bar";
ITEM.uniqueID = "metal_bar";
ITEM.model = "models/gibs/furniture_gibs/furniturewooddrawer003a_chunk04.mdl";
ITEM.weight = 6;
ITEM.category = "Metal";
ITEM.business = false;
ITEM.description = "A refined, heavy metal bar.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/gibs/metalgibs/metal_gibs");
	end;
ITEM:Register();


