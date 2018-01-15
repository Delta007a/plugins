local FACTION = Clockwork.faction:New("Civil Worker's Union");

FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.giveCard = "cwu_card"
FACTION.canGetRations = true;
FACTION.rationUniqueID = "medium_grade_ration";
FACTION.models = {
	female = {
		"models/tnb/citizens/female_01.mdl",
		"models/tnb/citizens/female_02.mdl",
		"models/tnb/citizens/female_03.mdl",
		"models/tnb/citizens/female_04.mdl",
		"models/tnb/citizens/female_05.mdl",
		"models/tnb/citizens/female_06.mdl",
		"models/tnb/citizens/female_07.mdl",
		"models/tnb/citizens/female_08.mdl",
		"models/tnb/citizens/female_09.mdl",
		"models/tnb/citizens/female_10.mdl",
		"models/tnb/citizens/female_11.mdl",


	},
	male = {
		"models/tnb/citizens/male_01.mdl",
		"models/tnb/citizens/male_02.mdl",
		"models/tnb/citizens/male_03.mdl",
		"models/tnb/citizens/male_04.mdl",
		"models/tnb/citizens/male_05.mdl",
		"models/tnb/citizens/male_06.mdl",
		"models/tnb/citizens/male_07.mdl",
		"models/tnb/citizens/male_08.mdl",
		"models/tnb/citizens/male_09.mdl",
		"models/tnb/citizens/male_10.mdl",
		"models/tnb/citizens/male_11.mdl",
		"models/tnb/citizens/male_12.mdl",
		"models/tnb/citizens/male_13.mdl",
		"models/tnb/citizens/male_14.mdl",
		"models/tnb/citizens/male_15.mdl",
		"models/tnb/citizens/male_16.mdl",
		"models/tnb/citizens/male_17.mdl",
		"models/tnb/citizens/male_18.mdl",

	};
};
 
-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (player:QueryCharacter("gender") == GENDER_MALE) then
        player:SetCharacterData("model", self.models.male[1], true);
    else
        player:SetCharacterData("model", self.models.female[1], true);
    end;
end;

FACTION_CWU = FACTION:Register();