local ITEM = Clockwork.item:New();
ITEM.name = "Stick";
ITEM.uniqueID = "Stick";
ITEM.model = "models/gibs/furniture_gibs/furnituretable002a_chunk08.mdl";
ITEM.weight = 1.2;
ITEM.category = "Wood";
ITEM.business = false;
ITEM.description = "A heavy stick recovered from a tree. Maybe you could hit someone over the head with it.";

function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/props_foliage/oak_tree01");
	end;
ITEM:Register();