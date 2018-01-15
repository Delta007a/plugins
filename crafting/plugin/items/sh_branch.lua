local ITEM = Clockwork.item:New();
ITEM.name = "Branch";
ITEM.uniqueID = "branch";
ITEM.plural = "Branches"
ITEM.model = "models/props_c17/furniturechair001a_chunk03.mdl";
ITEM.weight = 0.7;
ITEM.category = "Wood";
ITEM.business = false;
ITEM.description = "A wooden branch recovered from a larger stick.";

function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/props_foliage/oak_tree01");
	end;
ITEM:Register();