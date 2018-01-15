local ITEM = Clockwork.item:New();
ITEM.name = "Torn Cloth";
ITEM.uniqueID = "cloth_torn";
ITEM.model = "models/props_debris/concrete_chunk04a.mdl";
ITEM.weight = 0.1;
ITEM.category = "Junk";
ITEM.business = false;
ITEM.description = "A torn piece of cloth. Somebody must've been working with cloth with their bare hands.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/props_c17/FurnitureFabric003a");
	end;
ITEM:Register();