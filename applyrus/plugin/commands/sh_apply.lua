--[[
	� 2013 TheGarry =D
    Have fun with this plugin.
--]]

local COMMAND = Clockwork.command:New("Apply");
COMMAND.tip = "Говорит ваше имя и CID.";
COMMAND.flags = CMD_DEFAULT;
local Clockwork = Clockwork;




-- Called when the command has been run.
function COMMAND:OnRun(player)
	local citizenID = player:GetSharedVar("citizenID");
	local name = player:Name()
	local faction = player:GetFaction();
    local radius = Clockwork.config:Get("talk_radius"):Get();
	
    
	if ( faction == FACTION_CITIZEN or faction == FACTION_CWU or faction == FACTION_VORT ) then
		if(player:HasItemByID("cid_card") or player:HasItemByID("cwu_card") or faction == FACTION_VORT) then
			--Clockwork.chatBox:AddInTargetRadius(player, "ic", Owner..", "..CombineID..".", player:GetPos(), radius);	
			Clockwork.chatBox:AddInTargetRadius(player, "ic", name..", "..citizenID..".", player:GetPos(), radius);	
		else 
			Clockwork.player:Notify(player, "У Вас нет CID!");
		end
    else
        Clockwork.player:Notify(player, "У Вас нет CID!");
    end

	for k, v in pairs(_player.GetAll()) do
	    if(v:GetPos():Distance(player:GetPos()) <= radius and Clockwork.config:Get("apply_recognize_enable"):Get() and IsValid(v) and v:HasInitialized()) then
			Clockwork.player:SetRecognises(v, player, RECOGNISE_TOTAL)
		end
	end
end

COMMAND:Register();