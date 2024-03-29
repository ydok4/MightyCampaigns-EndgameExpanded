AG = {};
_G.AG = AG;

CG = {};
_G.CG = CG;

-- Required for helpers who can't access it without either importing or the global tag
_G.weighted_list = weighted_list;

-- Models
require 'script/_lib/core/model/ArmyGenerator';
require 'script/_lib/core/model/CharacterGenerator';
require 'script/_lib/core/helpers/EndEx_DataHelpers';

function z_mc_endgame_expanded()
    local enableLogging = true;
    if CI_EVENT_DATA == nil then
        return;
    end
    out("EndEx: Main mod function");
    if get_mct then
        out("EndEx: Found MCT reborn");
        local mct = get_mct();
        EndgameExpandedCheckMCTRebornOptions(core, mct);
    else
        out("EndEx: No MCT");
        if cm:is_new_game() == false then
            DisableTrackingMissions();
        end
    end

    AG = ArmyGenerator:new({});
    AG:Initialise(random_army_manager, enableLogging);
    _G.AG = AG;
    CG = CharacterGenerator:new({});
    CG:Initialise(enableLogging);
    _G.CG = CG;
    LoadAdditionalResources();
    CI_debug_setup();
    MC_ENDEX_CI_Initialisation();
    out("EndEx: Finished setup");
end

function EndgameExpandedCheckMCTRebornOptions(core, mct)
    out("EndEx: Initialising MCT Options");
    local endExpMct = mct:get_mod_by_key("mc_endgame_expanded");

    --[[local enable_tracking_missions = endExpMct:get_option_by_key("enable_chaos_tracking_missions");
    local enable_tracking_missions_value = enable_tracking_missions:get_finalized_setting();
    out("enable_tracking_missions_value: "..tostring(enable_tracking_missions_value));--]]
    local enable_tracking_missions_value = false;
    if enable_tracking_missions_value == false
    and cm:is_new_game() == false then
        DisableTrackingMissions();
    end
    local enable_debug_mode = endExpMct:get_option_by_key("enable_debug_mode");
    local enable_debug_mode_value = enable_debug_mode:get_finalized_setting();
    CI_DEBUG = enable_debug_mode_value;


    local enable_doom_tide = endExpMct:get_option_by_key("enable_doom_tide");
    local enable_doom_tide_value = enable_doom_tide:get_finalized_setting();
    CI_ENABLE_DOOM_TIDE = enable_doom_tide;

    local enable_chaos_naggaroth_invasion = endExpMct:get_option_by_key("enable_chaos_naggaroth_invasion");
    local enable_chaos_naggaroth_invasion_value = enable_chaos_naggaroth_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS.invasions["naggaroth"].enabled = enable_chaos_naggaroth_invasion_value;

    local enable_chaos_darklands_invasion = endExpMct:get_option_by_key("enable_chaos_darklands_invasion");
    local enable_chaos_darklands_invasion_value = enable_chaos_darklands_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS.invasions["darklands"].enabled = enable_chaos_darklands_invasion_value;

    local enable_bst_chaos_wastes_invasion = endExpMct:get_option_by_key("enable_bst_chaos_wastes_invasion");
    local enable_bst_chaos_wastes_invasion_value = enable_bst_chaos_wastes_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_BEASTMEN_ARMY_SPAWNS.invasions["bst_chaos_wastes"].enabled = enable_bst_chaos_wastes_invasion_value;

    local enable_bst_forest_invasion = endExpMct:get_option_by_key("enable_bst_forest_invasion");
    local enable_bst_forest_invasion_value = enable_bst_forest_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_BEASTMEN_FOREST_SPAWNS.invasions["bst_old_world_forests"].enabled = enable_bst_forest_invasion_value;

    local enable_nor_norscan_invasion = endExpMct:get_option_by_key("enable_nor_norscan_invasion");
    local enable_nor_norscan_invasion_value = enable_nor_norscan_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_NORSCA_ARMY_SPAWNS.invasions["nor_retake_norsca"].enabled = enable_nor_norscan_invasion_value;

    local enable_nor_ulthuan_invasion = endExpMct:get_option_by_key("enable_nor_ne_ulthuan");
    local enable_nor_ulthuan_invasion_value = enable_nor_ulthuan_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_NORSCA_ARMY_SPAWNS.invasions["nor_ne_ulthuan_mid"].enabled = enable_nor_ulthuan_invasion_value;
    CI_EVENT_DATA.Invasions.CI_NORSCA_ARMY_SPAWNS.invasions["nor_ne_ulthuan_late"].enabled = enable_nor_ulthuan_invasion_value;

    local enable_nor_eastern_invasion = endExpMct:get_option_by_key("enable_nor_eastern_invasion");
    local enable_nor_eastern_invasion_value = enable_nor_eastern_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_NORSCA_ARMY_SPAWNS.invasions["nor_eastern_invasion"].enabled = enable_nor_eastern_invasion_value;

    local enable_skv_lustria_invasion = endExpMct:get_option_by_key("enable_skv_lustria_invasion");
    local enable_skv_lustria_invasion_value = enable_skv_lustria_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_SKAVEN_LUSTRIA_ARMY_SPAWNS.invasions["skv_invade_lustria_mid"].enabled = enable_skv_lustria_invasion_value;
    CI_EVENT_DATA.Invasions.CI_SKAVEN_LUSTRIA_ARMY_SPAWNS.invasions["skv_invade_lustria_late"].enabled = enable_skv_lustria_invasion_value;

    local enable_skv_undercity_expansion = endExpMct:get_option_by_key("enable_skv_undercity_expansion");
    local enable_skv_undercity_expansion_value = enable_skv_undercity_expansion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_UNDER_EMPIRE_SPAWNS.enabled = enable_skv_undercity_expansion_value;

    local enable_cst_cylostra_invasion = endExpMct:get_option_by_key("enable_cst_cylostra_invasion");
    local enable_cst_cylostra_invasion_value = enable_cst_cylostra_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_VAMPIRE_COAST_CYLOSTRA_ARMY_SPAWNS.invasions["cst_sw_ulthuan"].enabled = enable_cst_cylostra_invasion_value;

    local enable_cst_noctilus_invasion = endExpMct:get_option_by_key("enable_cst_noctilus_invasion");
    local enable_cst_noctilus_invasion_value = enable_cst_noctilus_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_VAMPIRE_COAST_NOCTILUS_ARMY_SPAWNS.invasions["cst_se_ulthuan"].enabled = enable_cst_noctilus_invasion_value;

    local enable_rogue_vashnarr_invasion = endExpMct:get_option_by_key("enable_rogue_vashnarr_invasion");
    local enable_rogue_vashnarr_invasion_value = enable_rogue_vashnarr_invasion:get_finalized_setting();
    CI_EVENT_DATA.Invasions.CI_LUSTRIA_VASHNARR_ARMY_SPAWNS.invasions["lustria_def_chs"].enabled = enable_rogue_vashnarr_invasion_value;
    out("EndEx: Finished MCT Option setup");
end

function DisableTrackingMissions()
    out("EndEx: Cancelling missions");
    local human_factions = cm:get_human_factions();
    for i = 1, #human_factions do
        local humanFaction = cm:get_faction(human_factions[i]);
        local humanFactionKey = humanFaction:name();
        cm:cancel_custom_mission(humanFactionKey, "mc_endgame_expanded_archaon_tracker");
        cm:cancel_custom_mission(humanFactionKey, "mc_endgame_expanded_sigvald_tracker");
        cm:cancel_custom_mission(humanFactionKey, "mc_endgame_expanded_kholek_tracker");
    end
end

function LoadAdditionalResources()
    if effect.get_localised_string("land_units_onscreen_name_rbt_nurgle_daemon") ~= ""
    and effect.get_localised_string("land_units_onscreen_name_kho_bloodletter") ~= ""
    and effect.get_localised_string("land_units_onscreen_name_bacr_chs_inf_daemonette") ~= "" then
        out("EndEx: Loading Balint Daemon resources");
        CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS.army_archetypes["ChaosSorcerorLordDaemonsInvasionStage2"] = {
            AgentSubtypes = {"chs_sorcerer_lord_death", "chs_sorcerer_lord_fire", "chs_sorcerer_lord_metal", "dlc07_chs_sorcerer_lord_shadow", },
            MandatoryUnits = {
                wh_main_chs_mon_chaos_spawn = 2,
                wh_dlc01_chs_inf_forsaken_0 = 3,
            },
            UnitTags = { "ChaosWarriors", "Beasts", "Daemons" },
        };
    end

    if core:is_mod_loaded("mixu_ttl") then
        out("EndEx: Loading Mixu ttl resources");
        -- Chaos
        CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS.army_archetypes["DragonOgreInvasionStage2"] = {
            AgentSubtypes = {"chs_shaggoth_champion", },
            MandatoryUnits = {
                wh_dlc01_chs_mon_dragon_ogre = 1,
                wh_dlc01_chs_mon_dragon_ogre_shaggoth = 1,
            },
            UnitTags = {"Beasts", "Monsters", "ChaosCavalry"},
        };

        -- Norsca
        CI_EVENT_DATA.Invasions.CI_NORSCA_ARMY_SPAWNS.army_archetypes["ShamanLordMonstersChaosInvasionStage1"] = {
            AgentSubtypes = {"nor_shaman_sorcerer_lord_death", "nor_shaman_sorcerer_lord_fire", "nor_shaman_sorcerer_lord_metal",  },
            MandatoryUnits = {
                wh_dlc08_nor_mon_norscan_giant_0 = 1,
            },
            UnitTags = {"Warriors", "WarBeasts", "Trolls" },
        };
        CI_EVENT_DATA.Invasions.CI_NORSCA_ARMY_SPAWNS.army_archetypes["ShamanLordMonstersChaosInvasionStage2"] = {
            AgentSubtypes = {"nor_shaman_sorcerer_lord_death", "nor_shaman_sorcerer_lord_fire", "nor_shaman_sorcerer_lord_metal",  },
            MandatoryUnits = {
                wh_dlc08_nor_mon_frost_wyrm_0 = 1,
            },
            UnitTags = {"Warriors", "WarBeasts", "Trolls" },
        };
        CI_EVENT_DATA.Invasions.CI_NORSCA_ARMY_SPAWNS.army_archetypes["FimirWarlordChaosInvasionStage2"] = {
            AgentSubtypes = {"nor_fimir_warlord",  },
            UnitTags = {"FimirExclusive", "WarBeasts", "SkinWolves", },
        };

        -- Load the name resources
        -- This is separate so I can use this in other mods
        require 'script/_lib/dbexports/MixuDataResources'
        if _G.CG_NameResources then
            _G.CG_NameResources:ConcatTableWithKeys(_G.CG_NameResources.campaign_character_data, GetMixuDataResources());
        end
    end

    if effect.get_localised_string("land_units_onscreen_name_cr_bst_mon_preyton_0") ~= ""
    and effect.get_localised_string("land_units_onscreen_name_cr_bst_mon_ghorgon_0") ~= "" then
        out("EndEx: Loading Preyton data");
        CI_EVENT_DATA.Invasions.CI_BEASTMEN_ARMY_SPAWNS.army_archetypes["BeastLordMonstersChaosInvasionStage2"] = {
            AgentSubtypes = {"dlc03_bst_beastlord", },
            MandatoryUnits = {
                { wh_dlc03_bst_mon_giant_0 = 2, wh_dlc03_bst_inf_cygor_0 = 2, },
                wh_dlc03_bst_mon_chaos_spawn_0 = 1,
                cr_bst_mon_preyton_0 = 1,
            },
            UnitTags = {"Gors", "WarBeasts", "Monsters" },
        };
        if core:is_mod_loaded("mixu_ttl") then
            out("EndEx: Loading Ghorgon data");
            CI_EVENT_DATA.Invasions.CI_BEASTMEN_ARMY_SPAWNS.army_archetypes["DoomBullChaosInvasionStage2"] = {
                AgentSubtypes = {"bst_doombull", },
                MandatoryUnits = {
                    wh_dlc03_bst_inf_minotaurs_0 = 2,
                    cr_bst_mon_ghorgon_0 = 1,
                },
                UnitTags = {"Gors", "WarBeasts", "Minotaurs"},
            };
        end
    end

    if effect.get_localised_string("land_units_onscreen_name_wh2_dlc11_cst_cav_knights_of_the_realm_recruited") ~= "" then
        out("EndEx: Loading AOV damned knights");
        require 'script/_lib/pooldata/ArmyPoolData/AOVSubcultureArmyPoolDataResources'
        _G.ArmyPoolResources.AddAdditionalArmyPoolResources(GetAOVGhostKnightSubcultureArmyPoolDataResources());
        CI_EVENT_DATA.Invasions.CI_VAMPIRE_COAST_CYLOSTRA_ARMY_SPAWNS.army_archetypes["VampireAdmiralGhostsInvasionStage1"] = {
            AgentSubtypes = {"wh2_dlc11_cst_admiral_death", "wh2_dlc11_cst_admiral_deep", "wh2_dlc11_cst_admiral_fem_death", "wh2_dlc11_cst_admiral_fem_deep", "wh2_dlc11_cst_admiral", "wh2_dlc11_cst_admiral_fem",},
            MandatoryUnits = {
                wh2_dlc11_cst_inf_syreens = 2,
                wh2_dlc11_cst_cav_questing_knights_recruited = 1,
                wh2_dlc11_cst_cav_knights_of_the_realm_recruited = 2,
                wh2_dlc11_cst_cav_knights_errant_recruited = 3,
            },
            UnitTags = {"Zombies", "Beasts", "Artillery", },
            CanSpawnOnSea = true,
        };
    end
end