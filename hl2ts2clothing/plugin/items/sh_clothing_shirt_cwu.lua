local ITEM = Clockwork.item:New();
ITEM.name = "CWU Shirt";
ITEM.model = "models/tnb/items/shirt_citizen1.mdl";
ITEM.skin = 2;
ITEM.weight = 0.5;
ITEM.useText = "Wear Shirt";
ITEM.category = "Clothing";
ITEM.description = "A shirt, given to the higher ranks of the Civil Workers Union, it is quite comfortable.";
ITEM.customFunctions = {"Remove"};
ITEM.access = "1";
ITEM.business = false;  
ITEM.addInvSpace = 1;
 
local bodyGroup = 1;

-- Called when a player drops the item.
function ITEM:OnDrop(player, position)
 
 
                        local target = player
                        local targetBodyGroups = target:GetCharacterData("BodyGroups") or {};
                        local bodyGroupState = 0;
                        local model = target:GetModel();
               
                        if( bodyGroup < target:GetNumBodyGroups() )then
                                targetBodyGroups[model] = targetBodyGroups[model] or {};
                       
                                if( bodyGroupState == 0 )then
                                        targetBodyGroups[model][tostring(bodyGroup)] = nil;
                                else
                                        targetBodyGroups[model][tostring(bodyGroup)] = bodyGroupState;
                                end;
                       
                                target:SetBodygroup(bodyGroup, bodyGroupState);
                       
                                target:SetCharacterData("BodyGroups", targetBodyGroups);
                               
                        end;
return true
               
end;
 
 
-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
        if (player:Alive() and !player:IsRagdolled()) then
                if (!self.CanPlayerWear or self:CanPlayerWear(player, itemEntity) != false) then
               
                local target = player
                local targetBodyGroups = target:GetCharacterData("BodyGroups") or {};
                local bodyGroupState = 2;
 
                local model = target:GetModel();
               
                if( bodyGroup < target:GetNumBodyGroups() )then
                        targetBodyGroups[model] = targetBodyGroups[model] or {};
                       
                        if( bodyGroupState == 0 )then
                                targetBodyGroups[model][tostring(bodyGroup)] = nil;
                        else
                                targetBodyGroups[model][tostring(bodyGroup)] = bodyGroupState;
                        end;
                       
                        target:SetBodygroup(bodyGroup, bodyGroupState);
                       
                        target:SetCharacterData("BodyGroups", targetBodyGroups);
               
                        return true;
 
                        end;
                end;
        end;
end;
 
if (SERVER) then
        function ITEM:OnCustomFunction(player, name)
                if (name == "Remove") then
               
                        local target = player
                        local targetBodyGroups = target:GetCharacterData("BodyGroups") or {};
                        local bodyGroupState = 0;
                        local model = target:GetModel();
               
                        if( bodyGroup < target:GetNumBodyGroups() )then
                                targetBodyGroups[model] = targetBodyGroups[model] or {};
                       
                                if( bodyGroupState == 0 )then
                                        targetBodyGroups[model][tostring(bodyGroup)] = nil;
                                else
                                        targetBodyGroups[model][tostring(bodyGroup)] = bodyGroupState;
                                end;
                       
                                target:SetBodygroup(bodyGroup, bodyGroupState);
                       
                                target:SetCharacterData("BodyGroups", targetBodyGroups);
                               
                        end;
                                               
end;
end;
end;
 
ITEM:Register();