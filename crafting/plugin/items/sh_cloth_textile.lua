local ITEM = Clockwork.item:New();
ITEM.name = "Cloth Scraps";
ITEM.uniqueID = "cloth_scraps";
ITEM.model = "models/props_junk/garbage_newspaper001a.mdl";
ITEM.weight = 0.225;
ITEM.category = "Cloth";
ITEM.business = false;
ITEM.description = "A square of soft, light cloth fabric used in creating tailoring goods.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/props_c17/FurnitureFabric003a");
	end;
ITEM:Register();