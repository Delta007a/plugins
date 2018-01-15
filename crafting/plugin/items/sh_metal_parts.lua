local ITEM = Clockwork.item:New();
ITEM.name = "Metal Parts";
ITEM.uniqueID = "metal_parts";
ITEM.model = "models/props_canal/boat001b_chunk03.mdl";
ITEM.weight = 4;
ITEM.category = "Metal";
ITEM.business = false;
ITEM.description = "Assorted metal parts used for various things.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

	-- Called when the item entity has spawned.
	function ITEM:OnEntitySpawned(entity)
		entity:SetMaterial("models/gibs/metalgibs/metal_gibs");
	end;
ITEM:Register();