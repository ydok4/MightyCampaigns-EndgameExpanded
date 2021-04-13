ChaosVassalisationController = {
    MainController = {},
    ChaosFactions = {
        "wh_main_chs_chaos",
        "wh2_main_chs_chaos_incursion_def",
		"wh2_main_chs_chaos_incursion_hef",
        -- Mixus unlocker only
        "wh2_main_chs_the_cabal",
    },
    NorscanFactions = {
        "wh2_main_nor_aghol",
        "wh2_main_nor_mung",
        "wh_dlc08_nor_goromadny_tribe",
        "wh_dlc08_nor_helspire_tribe",
        "wh_dlc08_nor_naglfarlings",
        "wh_dlc08_nor_vanaheimlings",
        "wh_main_nor_aesling",
        "wh_main_nor_baersonling",
        "wh_main_nor_bjornling",
        "wh_main_nor_graeling",
        "wh_main_nor_sarl",
        "wh_main_nor_skaeling",
        "wh_main_nor_varg",
        "wh_dlc08_nor_norsca",
        "wh_dlc08_nor_wintertooth",
    },
    OtherFactions = {
        "wh2_main_skv_clan_moulder",
    },
}

function ChaosVassalisationController:new (o)
    o = o or {};
    setmetatable(o, self);
    self.__index = self;
    return o;
end

function ChaosVassalisationController:Initialise(core, enableLogging)
    self.Logger = Logger:new({});
    self.Logger:Initialise("MightyCampaigns-ChaosVassalisationController.txt", enableLogging);
    self:SetupListeners(core);
    self.Logger:Log_Start();
end

function ChaosVassalisationController:SetupListeners(core)
    --[[core:add_listener(
        "MC_Chaos_ClanBecomesVassal",
        "ClanBecomesVassal",
        function(context)
            return context:faction():subculture() == "wh_main_sc_chs_chaos";
        end,
        function(context)
            self.Logger:Log("A chaos faction has vassalised someone");
            self:UpdateInterVassalDiplomacy();
            self.Logger:Log_Finished();
        end,
        true
    );--]]

    --[[core:add_listener(
        "MC_CVC_DoWarDeclaration",
        "FactionTurnEnd",
        function(context)
            return context:faction():name() == "wh_main_chs_chaos"
            and cm:get_saved_value("mc_cvc_war_declaration") == false
            and cm:get_saved_value("ci_stage") == 2;
        end,
        function(context)
            self.Logger:Log_Start();
            self:UpdateInterVassalDiplomacy();
            self.Logger:Log_Finished();
        end,
        true
    );--]]

    --[[core:add_listener(
		"Mixu_Doombull",
		"MilitaryForceBuildingCompleteEvent",
		function(context)
            return context:character():faction():culture() == "wh_dlc03_bst_beastmen"
            and context:character():faction():name() ~= "wh_dlc03_bst_beastmen_chaos";
		end,
		function(context)
			local faction = context:character():faction()
			local faction_name = faction:name()
			local culture = faction:culture()
			if context:building() == "wh_dlc03_horde_beastmen_minotaurs_1" then
				random_etunimi = "names_name_" .. mixu_ttl_name_list[culture]["etunimi"][cm:random_number(#mixu_ttl_name_list[culture]["etunimi"])]
				random_sukunimi = "names_name_" .. mixu_ttl_name_list[culture]["sukunimi"][cm:random_number(#mixu_ttl_name_list[culture]["sukunimi"])]
				cm:spawn_character_to_pool(faction_name, random_etunimi, random_sukunimi, "", "", 50, true, "general", "bst_doombull", false, "")	
			end
		end,
		true
	);--]]


    --[[core:add_listener(
        "MC_CVC_FixNorscanDiplomacy",
        "FactionTurnEnd",
        function(context)
            return context:faction():name() == "wh_main_chs_chaos"
            and cm:get_saved_value("ci_archaon_not_spawned") == false
            and cm:get_saved_value("ci_stage") < 3;
        end,
        function(context)
            self:UpdateInterVassalDiplomacy(false);
            self.Logger:Log_Finished();
        end,
        true
    );--]]

    --[[core:add_listener(
        "MC_CVC_RemoveNorscanDiplomacy",
        "FactionTurnEnd",
        function(context)
            return context:faction():name() == "wh_main_chs_chaos"
            and cm:get_saved_value("ci_archaon_not_spawned") == false
            and cm:get_saved_value("ci_stage") == 3
            and not cm:get_saved_value("mc_cvc_reset_norscan_diplomacy");
        end,
        function(context)
            self:UpdateInterVassalDiplomacy(true);
            cm:set_saved_value("mc_cvc_reset_norscan_diplomacy", true);
            self.Logger:Log_Finished();
        end,
        false
    );--]]

    --[[core:add_listener(
        "MC_CVC_RemoveDiplomacyChanges",
        "FactionTurnEnd",
        function(context)
            return context:faction():name() == "wh_main_chs_chaos"
            and context:faction():is_dead() == true
            and cm:get_saved_value("ci_stage") == 3;
        end,
        function(context)
            self:RemoveInterVassalDiplomacy();
            self.Logger:Log_Finished();
        end,
        true
    );--]]

    --[[core:remove_listener("Chaos_FactionBecomesLiberationVassal");
    core:add_listener(
        "Chaos_FactionBecomesLiberationVassal",
        "FactionBecomesLiberationVassal",
        function(context)
            return context:liberating_character():faction():subculture() == "wh_main_sc_chs_chaos";
        end,
        function(context)
            local chaosFaction = context:liberating_character():faction();
            local chaosFactionKey = chaosFaction:name();
            local vassalisedFactionKey = context:faction():name();
            cm:force_make_vassal(chaosFactionKey, vassalisedFactionKey);
            self.Logger:Log("Norscan faction: "..vassalisedFactionKey.." awakened by chaos faction: "..chaosFactionKey);
            cm:callback(function()
                self:UpdateInterVassalDiplomacy(false);
                self.Logger:Log_Finished();
            end,
            1);
            self.Logger:Log_Finished();
        end,
        true
    );--]]

    --[[core:add_listener(
		"Chaos_Troubleshooting",
		"NegativeDiplomaticEvent",
		true,
        function(context)
            local proposer_name = context:proposer():name();
            local recipient_name = context:recipient():name();
            --if TableHasValue(self.NorscanFactions, proposer_name)
            --or TableHasValue(self.NorscanFactions, proposer_name) then
                self.Logger:Log("Negative event between faction: "..proposer_name.." and: "..recipient_name);
                if context:was_vassalage() then
                    self.Logger:Log("was_vassalge");
                    if context:was_vassalage() then
                        self.Logger:Log("proposer_was_vassal");
                    end
                end
                if context:is_war() then
                    self.Logger:Log("is_war");
                end
                if context:was_defensive_alliance() then
                    self.Logger:Log("was_defensive_alliance");
                end
                if context:was_military_alliance() then
                    self.Logger:Log("was_military_alliance");
                end
                self.Logger:Log_Finished();
            --end
        end,
		true
	);--]]
end

function ChaosVassalisationController:UpdateInterVassalDiplomacy(diplomacyValue)
    for index, chaosFactionKey in pairs(self.ChaosFactions) do
        local chaosFaction = cm:get_faction(chaosFactionKey);
        if chaosFaction
        and not chaosFaction:is_null_interface()
        and not chaosFaction:is_dead() then
            local vassalisedNorscans = {};
            local nonVassalisedNorscans = {};
            for index, norscanFactionKey in pairs(self.NorscanFactions) do
                local faction = cm:get_faction(norscanFactionKey);
                if faction and not faction:is_dead() then
                    if faction:is_ally_vassal_or_client_state_of(chaosFaction) then
                        self.Logger:Log("Faction: "..norscanFactionKey.." is vassal of chaos faction: "..chaosFactionKey);
                        table.insert(vassalisedNorscans, norscanFactionKey);
                    else
                        table.insert(nonVassalisedNorscans, norscanFactionKey);
                    end
                end
            end

            for index, norscanFactionKey in pairs(vassalisedNorscans) do
                -- Redo vassalisation rules for chaos
                cm:force_diplomacy("faction:" .. norscanFactionKey, "faction:"..chaosFactionKey, "war,break vassal,break alliance,break client state", diplomacyValue, diplomacyValue, true);
                --cm:force_diplomacy("faction:" .. norscanFactionKey, "all", "all", false, false, true);
                --cm:force_diplomacy("faction:" .. norscanFactionKey, "faction:"..chaosFactionKey, "join war", true, true, true);
                for index2, norscanFactionKeyInternal in pairs(vassalisedNorscans) do
                    if norscanFactionKey ~= norscanFactionKeyInternal then
                        cm:force_make_peace(norscanFactionKey, norscanFactionKeyInternal);
                        cm:force_diplomacy("faction:"..norscanFactionKey, "faction:"..norscanFactionKeyInternal, "war,break alliance", diplomacyValue, diplomacyValue, true);
                    end
                end
                for index, otherFactionKey in pairs(self.OtherFactions) do
                    cm:force_diplomacy("faction:" .. otherFactionKey, "faction:"..chaosFactionKey, "war,break vassal,break alliance,break client state", diplomacyValue, diplomacyValue, true);
                    cm:force_diplomacy("faction:" .. otherFactionKey, "faction:"..norscanFactionKey, "war,break vassal,break alliance,break client state", diplomacyValue, diplomacyValue, true);
                end
            end

            --[[for index, norscanFactionKey in pairs(nonVassalisedNorscans) do
                for index2, norscanFactionKeyInternal in pairs(vassalisedNorscans) do
                    --self.Logger:Log("Making peace between: "..norscanFactionKey.." and: "..norscanFactionKeyInternal);
                    cm:force_make_peace(norscanFactionKey, norscanFactionKeyInternal);
                    cm:force_diplomacy("faction:"..norscanFactionKey, "faction:"..norscanFactionKeyInternal, "war,break alliance", diplomacyValue, diplomacyValue, true);
                end
            end--]]
        end
    end
end