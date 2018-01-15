local ITEM = Clockwork.item:New();
ITEM.name = "Charcoal";
ITEM.model = "models/props_debris/concrete_chunk05g.mdl";
ITEM.weight = 0.2;
ITEM.category = "Resource";
ITEM.business = false;
ITEM.description = "A lump of charcoal.";

function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/props_foliage/tree_deciduous_01a_trunk");
	end;

ITEM:Register();