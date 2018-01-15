local ITEM = Clockwork.item:New();
ITEM.name = "Tailoring Kit";
ITEM.uniqueID = "tailoring_kit";
ITEM.model = "models/bioshockinfinite/loot_lockbox_closed.mdl";
ITEM.weight = 1.5;
ITEM.category = "Tools";
ITEM.business = false;
ITEM.description = "A small pouch containing sewing needles, thread and other relevant things for professional tailoring.";

function ITEM:OnDrop(player, position) end;

ITEM:Register();