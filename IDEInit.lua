-- Mock Data
testCharacter = {
    cqi = function() return 123 end,
    get_forename = function() return "Direfan"; end,
    get_surname = function() return "Cylostra"; end,
    character_subtype_key = function() return "chs_archaon"; end,
    character_subtype = function() return true; end,
    is_faction_leader = function() return true; end,
    command_queue_index = function() end,
    has_military_force = function() return false end,
    military_force = function() return testMilitaryForce; end,
    faction = function() return humanFaction; end,
    region = function() return get_cm():get_region(); end,
    logical_position_x = function() return 100; end,
    logical_position_y = function() return 110; end,
    command_queue_index = function() return 10; end,
    character_type = function() return false; end,
    is_null_interface = function() return false; end,
    is_wounded = function() return false; end,
}

testMilitaryForce = {
    is_null_interface = function() return false; end,
    command_queue_index = function() return 10; end,
    has_general = function() return true; end,
    is_armed_citizenry = function () return false; end,
    general_character = function() return testCharacter; end,
    faction = function() return humanFaction; end,
    unit_list = function() return {
        num_items = function() return 2; end,
        item_at = function(self, index)
            return test_unit;
        end,
        is_null_interface = function() return false; end,
    }
    end,
}

humanFaction = {
    command_queue_index = function() return 10; end,
    name = function()
        return "wh_main_dwf_dwarfs";
    end,
    culture = function()
        return "wh_main_brt_bretonnia";
    end,
    subculture = function()
        return "wh2_main_sc_def_dark_elves";
    end,
    is_dead = function() return false; end,
    character_list = function()
        return {
            num_items = function()
                return 1;
            end,
            item_at = function(self, index)
                return testCharacter;
            end,
            is_null_interface = function() return false; end,
        };
    end,
    region_list = function()
        return {
            num_items = function()
                return 1;
            end,
            item_at = function(self, index)
                return cm:get_region(index);
            end,
            is_null_interface = function() return false; end,
        };
    end,
    home_region = function ()
        return {
            name = function()
                return "";
            end,
            is_null_interface = function()
                return false;
            end,
        }
    end,
    faction_leader = function() return testCharacter; end,
    is_quest_battle_faction = function() return false; end,
    is_null_interface = function() return false; end,
    is_human = function() return true; end,
    has_effect_bundle = function() return false; end,
    is_horde = function() return false; end,
    can_be_horde = function() return false; end,
    factions_of_same_culture = function() return {
            num_items = function()
                return 1;
            end,
            item_at = function()
                return testFaction;
            end,
        };
    end,
    at_war_with = function() return false; end,
    factions_non_aggression_pact_with = function() return {
            num_items = function()
                return 1;
            end,
            item_at = function()
                return testFaction;
            end,
        };
    end,
    factions_trading_with = function() return {
            num_items = function()
                return 1;
            end,
            item_at = function()
                return testFaction;
            end,
        }
    end,
    diplomatic_standing_with = function() return 10; end,
    diplomatic_attitude_towards = function() return 15; end,
    military_allies_with = function() return true; end,
    defensive_allies_with = function() return true; end,
    get_climate_suitability = function() return "suitability_good"; end,
    is_allowed_to_capture_territory = function() return true; end,
    treasury = function() return 2000; end,
    imperium_level = function() return 2; end,
}

testFaction = {
    command_queue_index = function() return 10; end,
    name = function()
        return "wh_main_chs_chaos";
    end,
    culture = function()
        return "wh_main_grn_greenskins";
    end,
    subculture = function()
        return "wh_main_sc_chs_chaos";
    end,
    is_dead = function() return false; end,
    character_list = function()
        return {
            num_items = function()
                return 1;
            end,
            item_at = function()
                return testCharacter;
            end,
            is_null_interface = function() return false; end,
        };
    end,
    region_list = function()
        return {
            num_items = function()
                return 1;
            end,
            item_at = function(self, index)
                return cm:get_region(index);
            end,
            is_null_interface = function() return false; end,
        };
    end,
    home_region = function ()
        return {
            name = function()
                return "";
            end,
            is_null_interface = function()
                return false;
            end,
        }
    end,
    faction_leader = function() return testCharacter; end,
    is_quest_battle_faction = function() return false; end,
    is_null_interface = function() return false; end,
    is_human = function() return false; end,
    has_effect_bundle = function() return false; end,
    is_horde = function() return false; end,
    can_be_horde = function() return false; end,
    factions_of_same_culture = function() return {
            num_items = function()
                return 1;
            end,
            item_at = function()
                return testFaction;
            end,
        };
    end,
    at_war_with = function() return false; end,
    factions_non_aggression_pact_with = function() return {
            num_items = function()
                return 1;
            end,
            item_at = function()
                return testFaction;
            end,
        };
    end,
    factions_trading_with = function() return {
            num_items = function()
                return 1;
            end,
            item_at = function()
                return testFaction;
            end,
        }
    end,
    diplomatic_standing_with = function() return 10; end,
    diplomatic_attitude_towards = function() return 15; end,
    military_allies_with = function() return true; end,
    defensive_allies_with = function() return true; end,
    get_climate_suitability = function() return "suitability_good"; end,
    is_allowed_to_capture_territory = function() return true; end,
    treasury = function() return 2000; end,
    imperium_level = function() return 2; end,
    military_force_list = function()
        return {
            num_items = function()
                return 1;
            end,
            item_at = function(self, index)
                return testMilitaryForce;
            end,
            is_null_interface = function() return false; end,
        };
    end,
}

testFaction2 = {
    name = function()
        return "wh2_dlc11_cst_rogue_grey_point_scuttlers";
    end,
    subculture = function()
        return "wh_main_sc_nor_norsca";
    end,
    is_dead = function() return false; end,
    character_list = function()
        return {
            num_items = function()
                return 0;
            end,
            is_null_interface = function() return false; end,
        };
    end,
    region_list = function()
        return {
            num_items = function()
                return 0;
            end,
            is_null_interface = function() return false; end,
        };
    end,
    home_region = function ()
        return {
            name = function()
                return "";
            end,
            is_null_interface = function()
                return false;
            end,
        }
    end,
    faction_leader = function() return testCharacter; end,
    is_quest_battle_faction = function() return false; end,
    is_null_interface = function() return false; end,
    is_human = function() return false; end,
    has_effect_bundle = function() return false; end,
    command_queue_index = function() return 10; end,
    imperium_level = function() return 2; end,
}

test_unit = {
    unit_key = function() return "wh2_main_hef_inf_archers_1"; end,
    force_commander = function() return testCharacter; end,
    faction = function() return testFaction; end,
    percentage_proportion_of_full_strength = function() return 80; end,
}

effect = {
    get_localised_string = function()
        return "Murdredesa";
    end,
}

-- This can be modified in the testing driver
-- so we can simulate turns changing easily
local turn_number = 1;

-- Mock functions
mock_listeners = {
    listeners = {},
    trigger_listener = function(self, mockListenerObject)
        local listener = self.listeners[mockListenerObject.Key];
        if listener and listener.Condition(mockListenerObject.Context) then
            listener.Callback(mockListenerObject.Context);
        end
    end,
}

-- Mock save structures
mockSaveData = {

}

-- slot (building) data
slot_1 = {
    has_building = function() return true; end,
    building = function() return {
        name = function() return "wh_msl_barracks_1"; end,
    }
    end,
}

slot_2 = {
    has_building = function() return true; end,
    building = function() return {
        name = function() return "wh_main_vmp_cemetary_2"; end,
    }
    end,
}

testRegion = {
    cqi = function() return 123; end,
    province_name = function() return "wh_main_zhufbar"; end,
    faction_province_growth = function() return 3; end,
    religion_proportion = function() return 0; end,
    public_order = function() return -99; end,
    owning_faction = function() return testFaction; end,
    name = function() return "wh_main_couronne_et_languille_couronne"; end,
    is_province_capital = function() return false; end,
    is_abandoned = function() return false; end,
    command_queue_index = function() return 10; end,
    adjacent_region_list = function()
        return {
            item_at = function(self, i)
                if i == 0 then
                    return get_cm():get_region();
                elseif i == 1 then
                    return get_cm():get_region();
                elseif i == 2 then
                    return get_cm():get_region();
                elseif i == 3 then
                    return get_cm():get_region();
                else
                    return nil;
                end
            end,
            num_items = function()
                return 3;
            end,
            is_null_interface = function() return false; end,
        }
    end,
    is_null_interface = function() return false; end,
    garrison_residence = function() return {
        army = function() return {
            strength = function() return 50; end,
        } end ,
    } end,
    settlement = function() return {
        is_null_interface = function() return false; end,
        get_climate = function() return "climate_mountain"; end,
        primary_slot = function() return {
            is_null_interface = function() return false; end,
            has_building = function() return true; end,
            building = function() return {
                is_null_interface = function() return false; end,
                name = function() return
                    "main_settlement";
                end,
                chain = function() return "wh2_main_def_murder"; end,
                superchain = function()
                    return "wh2_main_sch_infrastructure1_farm";
                end,
                building_level = function()
                    return 2;
                end,
            };
        end
        };
        end,
        port_slot = function() return {
            is_null_interface = function() return false; end,
            has_building = function() return true; end,
            building = function() return {
                is_null_interface = function() return false; end,
                name = function() return
                    "port";
                end,
                chain = function() return "wh2_main_def_sorcery"; end,
                superchain = function()
                    return "wh2_main_sch_infrastructure1_farm";
                end,
                building_level = function()
                    return 2;
                end,
                };
            end
            };
        end,
        is_port = function()
            return true;
        end,
        slot_list = function() return {
            num_items = function () return 2; end,
            item_at = function(index)
                if index == 1 then
                    return slot_1;
                else
                    return slot_2;
                end
            end
        };
        end,
    };
    end,
    town_wealth_growth = function() return 100; end,
    faction_province_has_effect_bundle = function() return false; end,
};

function get_cm()
    return   {
        is_new_game = function() return true; end,
        create_agent = function()
            return;
        end,
        get_human_factions = function()
            return {humanFaction:name()};
        end,
        disable_event_feed_events = function() end,
        turn_number = function() return turn_number; end,
        get_local_faction_name = function() return humanFaction; end,
        model = function ()
            return {
                military_force_for_command_queue_index = function() return testMilitaryForce; end,
                turn_number = function() return turn_number; end,
                difficulty_level =  function() return 3; end,
                random_percent = function() return true; end,
                world = function()
                    return {
                        faction_by_key = function ()
                            return testFaction;
                        end,
                        faction_list = function ()
                            return {
                                item_at = function(self, i)
                                    if i == 0 then
                                        return testFaction;
                                    elseif i == 1 then
                                        return humanFaction;
                                    elseif i == 2 then
                                        return testFaction2;
                                    elseif i == 3 then
                                        return testFaction2
                                    else
                                        return nil;
                                    end
                                end,
                                num_items = function()
                                    return 3;
                                end,
                            }
                        end
                    }
                end
            }
        end,
        first_tick_callbacks = {},
        add_saving_game_callback = function() end,
        add_loading_game_callback = function() end,
        spawn_character_to_pool = function() end,
        callback = function(self, callbackFunction, delay) callbackFunction() end,
        transfer_region_to_faction = function() end,
        get_faction = function() return testFaction; end,
        lift_all_shroud = function() end,
        kill_all_armies_for_faction = function() end,
        get_region = function()
            return testRegion;
        end,
        set_character_immortality = function() end,
        get_campaign_name = function() return "main_warhammer"; end,
        apply_effect_bundle_to_characters_force = function() end,
        kill_character = function() end,
        trigger_incident = function() end,
        trigger_dilemma = function() end,
        trigger_mission = function() end,
        create_force_with_general = function(self, factionKey, forceString, regionKey, spawnX, spawnY, generalType, agentSubTypeKey, clanNameKey, dummyName1, foreNameKey, dummyName2, umm, callbackFunction)
            callbackFunction(123);
        end,
        create_force_with_existing_general = function(self, cqi, factionKey, forceString, regionKey, spawnX, spawnY, callbackFunction)
            callbackFunction(123);
        end,
        force_add_trait = function() end,
        force_remove_trait = function() end,
        get_character_by_cqi = function() return testCharacter; end,
        char_is_mobile_general_with_army = function() return true; end,
        restrict_units_for_faction = function() end,
        save_named_value = function(self, saveKey, data, context)
            mockSaveData[saveKey] = data;
        end,
        load_named_value = function(self, saveKey, datastructure, context)
            if mockSaveData[saveKey] == nil then
                return nil;
            end
            return mockSaveData[saveKey];
        end,
        remove_effect_bundle = function() end,
        apply_effect_bundle = function() end,
        char_is_agent = function() return false end,
        steal_user_input = function() end,
        disable_rebellions_worldwide = function() end,
        find_valid_spawn_location_for_character_from_settlement = function() return 1, 1; end,
        force_diplomacy = function() end,
        apply_effect_bundle_to_force = function() end,
        force_declare_war = function() end,
        enable_movement_for_character = function() end,
        disable_movement_for_character = function() end,
        cai_enable_movement_for_character = function() end,
        cai_disable_movement_for_character = function() end,
        add_unit_model_overrides = function() end,
        force_character_force_into_stance = function() end,
        attack_region = function() end,
        char_lookup_str = function() end,
        suppress_all_event_feed_messages = function() end,
        grant_unit_to_character = function() end,
        show_message_event = function() end,
        show_message_event_located = function() end,
        trigger_incident_with_targets = function() end,
        force_add_and_equip_ancillary = function() end,
        force_add_ancillary = function() end,
        add_agent_experience = function() end,
        apply_effect_bundle_to_region = function() end,
        remove_effect_bundle_from_region = function() end,
        get_saved_value = function() return nil; end,
        create_new_custom_effect_bundle = function()
            return {
                set_duration = function() end,
                add_effect = function() end,
            };
        end,
        apply_custom_effect_bundle_to_region = function() end,
        apply_effect_bundle_to_faction_province = function() end,
        apply_custom_effect_bundle_to_faction = function() end,
        get_difficulty = function() return "hard"; end,
        add_first_tick_callback = function() end,
        appoint_character_to_most_expensive_force = function() end,
        change_localised_faction_name = function() end,
        set_region_abandoned = function() end,
        create_force = function() end,
        char_is_general_with_army = function() return true; end,
        force_make_vassal = function() return {}; end,
        random_number = function(self, limit, start)
            if not start then
                start = 1;
            end
            return math.random(start, limit);
        end,
        find_valid_spawn_location_for_character_from_position = function(self, factionKey, x, y)
            return 1, 2;
        end,
        is_multiplayer = function()
            return false;
        end,
        force_alliance = function()
        end,
        make_region_visible_in_shroud = function()
        end,
        complete_scripted_mission_objective = function()
        end,
    };
end

cm = get_cm();
mock_max_unit_ui_component = {
    Id = function() return "wh2_dlc10_hef_inf_shadow_walkers_0_recruitable" end,
    ChildCount = function() return 1; end,
    Find = function() return mock_unit_ui_component; end,
    SetVisible = function() end,
    MoveTo = function() end,
    SetStateText = function() end,
    SetInteractive = function() end,
    Visible = function() return true; end,
    Position = function() return 0, 1 end,
    Bounds = function() return 0, 1 end,
    Width = function() return 1; end,
    Resize = function() return; end,
    SetCanResizeWidth = function() return; end,
    SimulateMouseOn = function() return; end,
    GetStateText = function() return "/unit/wh_main_vmp_inf_zombie]]"; end,
    --GetStateText = function() return "Unlocks recruitment of:"; end,
    SetCanResizeHeight = function() end;
    SetCanResizeWidth = function() end;
}

mock_unit_ui_component = {
    Id = function() return "wh_main_vmp_inf_zombie_mercenary" end,
    --Id = function() return "building_info_recruitment_effects" end,
    ChildCount = function() return 1; end,
    Find = function() return mock_max_unit_ui_component; end,
    SetVisible = function() end,
    MoveTo = function() end,
    SetStateText = function() end,
    SetInteractive = function() end,
    Visible = function() return true; end,
    Position = function() return 0, 1 end,
    Bounds = function() return 0, 1 end,
    Width = function() return 1; end,
    Resize = function() return; end,
    SetCanResizeWidth = function() return; end,
    SimulateMouseOn = function() return; end,
    GetStateText = function() return "/unit/wh_main_vmp_inf_zombie]]"; end,
    SetCanResizeHeight = function() end;
    SetCanResizeWidth = function() end;
}

mock_unit_ui_list_component = {
    Id = function() return "mock_list" end,
    ChildCount = function() return 1; end,
    Find = function() return mock_unit_ui_component; end,
    SetVisible = function() end,
    MoveTo = function() end,
    SetStateText = function() end,
    SetInteractive = function() end,
    Visible = function() return true; end,
    Position = function() return 0, 1 end,
    Bounds = function() return 0, 1 end,
    Width = function() return 1; end,
    Resize = function() return; end,
    SetCanResizeWidth = function() return; end,
    SimulateMouseOn = function() return; end,
    GetStateText = function() return "/unit/wh_main_vmp_inf_zombie]]"; end,
    --GetStateText = function() return "Unlocks recruitment of:"; end,
    SetCanResizeHeight = function() end;
    SetCanResizeWidth = function() end;
}

find_uicomponent = function()
    return mock_unit_ui_list_component;
end

UIComponent = function(mock_ui_find) return mock_ui_find; end

core = {
    trigger_event = function() end,
    remove_listener = function() end,
    add_listener = function (self, key, eventKey, condition, callback)
        mock_listeners.listeners[key] = {
            Condition = condition,
            Callback = callback,
        }
    end,
    get_ui_root = function() end,
    get_screen_resolution = function() return 0, 1 end;
    is_mod_loaded = function() return true; end,
    get_unique_counter = function() return cm:random_number(1000); end
}

random_army_manager = {
    new_force = function() end,
    remove_force = function() end,
    add_mandatory_unit = function() end,
    add_unit = function() end,
    generate_force = function() return ""; end,
}

invasion_manager = {
    new_invasion = function()
        return {
            set_target = function() end,
            apply_effect = function() end,
            add_character_experience = function() end,
            start_invasion = function() end,
            assign_general = function() end,
            create_general = function() end,
        }
    end,
    get_invasion = function() return {
        release = function() return end,
        create_general = function() end,
    };
    end,
};

weighted_list = {
    weighted_items = {},
    new = function()
        weighted_list.weighted_items = {};
        return weighted_list;
    end,
    add_item = function(self, object, weight)
        weighted_list.weighted_items[1] = object;
        return;
    end,
    weighted_select = function()
        return weighted_list.weighted_items[1];
    end,
};

out = function(text)
  print(text);
end
_G.IsIDE = true;
--package.path = package.path .. ";C:\\Users\\Kody\\Documents\\Totalwar-Warhammer Modding\\Enhanced Rebellions\\?.lua;"
--require 'script/campaign/main_warhammer/wh_chaos_invasion'
require 'script/campaign/main_warhammer/wh2_chaos_invasion'
--require 'script/campaign/mod/a_er_core_resource_loader'
require 'script/campaign/mod/a_subculture_army_resource_loader'
require 'script/campaign/mod/z_mc_endgame_expanded'
--require 'script/campaign/mod/zz_enhanced_rebellions'

math.randomseed(os.time())
-- This is used in game by Warhammer but we have it hear so it won't throw errors when running

--zz_enhanced_rebellions();
z_mc_endgame_expanded();

out = {
    chaos = function(text)
        print(text);
    end,
    inc_tab = function(text)
        print(text);
    end,
    dec_tab = function(text)
        print(text);
    end
}


unpack = function(value)
    return table.unpack(value);
end

local mock_faction_turn_start_context = {
    faction = function()
        return humanFaction;
    end
};




CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS = 1;


--[[testFaction.subculture = function()
    return "wh2_dlc11_sc_cst_vampire_coast";
end;
CI_Event_2_MidGame(CI_EVENTS["MID_CYLOSTRA"]);
CI_spawn_invasion_for_event(_G.CI_EVENT_DATA.Invasions.CI_VAMPIRE_COAST_CYLOSTRA_ARMY_SPAWNS, _G.CI_EVENTS[CI_DATA.CI_INVASION_STAGE]);
CI_FactionTurnStart(mock_faction_turn_start_context);

testFaction.subculture = function()
    return "wh_main_sc_chs_chaos";
end;
CI_Event_2_MidGame(CI_EVENTS["MID_GAME"]);
CI_spawn_invasion_for_event(_G.CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS, _G.CI_EVENTS[CI_DATA.CI_INVASION_STAGE]);
CI_FactionTurnStart(mock_faction_turn_start_context);

testFaction.subculture = function()
    return "wh_main_sc_nor_norsca";
end;

CI_spawn_invasion_for_event(_G.CI_EVENT_DATA.Invasions.CI_NORSCA_ARMY_SPAWNS, _G.CI_EVENTS[CI_DATA.CI_INVASION_STAGE]);

testFaction.subculture = function()
    return "wh2_main_sc_skv_skaven";
end;

CI_spawn_invasion_for_event(_G.CI_EVENT_DATA.Invasions.CI_SKAVEN_LUSTRIA_ARMY_SPAWNS, _G.CI_EVENTS[CI_DATA.CI_INVASION_STAGE]);--]]

CI_setup();
CI_DATA.CI_SETTING = 2;
--[[local CI_CharacterCreated = {
    Key = "CI_CharacterCreated",
    Context = {
        character = function()
            return testCharacter;
        end,
    },
};
turn_number = 2;
mock_listeners:trigger_listener(CI_CharacterCreated);

CI_SPAWNED_EVENTS["END_GAME"] = true;
local CI_FactionTurnStartChaos = {
    Key = "CI_FactionTurnStartChaos",
    Context = {
        faction = function()
            return testFaction;
        end,
    },
};
turn_number = 2;
mock_listeners:trigger_listener(CI_FactionTurnStartChaos);--]]
CI_Event_4_Victory();

_G.CG:GetCharacterNameForSubculture(testFaction, "dlc07_chs_sorcerer_lord_shadow");

turn_number = 30;
CI_DATA.CI_INVASION_STAGE = 1;
CI_FactionTurnStart(mock_faction_turn_start_context);

CI_DATA.CI_INVASION_STAGE = 2;

testFaction.subculture = function()
    return "wh_dlc03_sc_bst_beastmen";
end;

CI_spawn_invasion_for_event(_G.CI_EVENT_DATA.Invasions.CI_BEASTMEN_ARMY_SPAWNS, _G.CI_EVENTS["MID_GAME"]);

CI_Event_2_MidGame(CI_EVENTS["MID_GAME"]);
CI_Event_Doom_Tide(CI_RECURRING_EVENTS[1]);
CI_DATA.CI_INVASION_STAGE = 3;
CI_Event_3_EndGame(CI_EVENTS["END_GAME"]);
CI_Event_Doom_Tide(CI_RECURRING_EVENTS[3]);




testFaction.subculture = function()
    return "wh_main_sc_chs_chaos";
end;
CI_spawn_invasion_for_event(_G.CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS, _G.CI_EVENTS[CI_DATA.CI_INVASION_STAGE]);




CI_FactionTurnStart(mock_faction_turn_start_context);

CI_Event_2_Undercity_Expansion(event);