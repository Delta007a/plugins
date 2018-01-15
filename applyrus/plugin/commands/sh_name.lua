--[[
	© 2013 TheGarry =D
    Have fun with this plugin.
--]]

local COMMAND = Clockwork.command:New("Name");
COMMAND.tip = "Сказать Ваше имя.";
COMMAND.flags = CMD_DEFAULT;

-- Called when the command has been run.
function COMMAND:OnRun(player)
	local name = player:Name()
	local faction = player:GetFaction();
    local radius = Clockwork.config:Get("talk_radius"):Get();
    
	if ( !faction == FACTION_MPF or !faction == FACTION_OTA ) then
	    Clockwork.chatBox:AddInTargetRadius(player, "ic", name..".", player:GetPos(), radius);
    else
	    Clockwork.chatBox:AddInTargetRadius(player, "ic", "Юнит "..name..".", player:GetPos(), radius);
	end
	

	for k, v in pairs(_player.GetAll()) do
	    if(v:GetPos():Distance(player:GetPos()) <= radius and Clockwork.config:Get("apply_recognize_enable"):Get() and IsValid(v) and v:HasInitialized()) then
			Clockwork.player:SetRecognises(v, player, RECOGNISE_TOTAL)
		end
	end
end

COMMAND:Register();