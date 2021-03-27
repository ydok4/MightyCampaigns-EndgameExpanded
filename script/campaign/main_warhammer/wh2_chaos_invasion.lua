CI_DEBUG = false;
CI_EVENTS = {
	INTRO = {key = "INTRO", required_stage = 1, first_turn = 15, last_turn = 25, army_spawns = 0, agent_spawns = 0, chaos_effect = ""},
	-- rises events
	--MID_CYLOSTRA = {key = "MID_CYLOSTRA", required_stage = 2, first_turn = 60, last_turn = 70, army_spawns = 6, agent_spawns = 3, chaos_effect = ""}, 
	MID_GAME = {key = "MID_GAME", required_stage = 2, first_turn = 80, last_turn = 90, army_spawns = 5, agent_spawns = 3, chaos_effect = "rises"},
	--MID_VASHNARR = {key = "MID_VASHNARR", required_stage = 2, first_turn = 85, last_turn = 95, army_spawns = 6, agent_spawns = 3, chaos_effect = ""},
	-- major invasion events
	END_GAME = {key = "END_GAME", required_stage = 3, first_turn = 95, last_turn = 105, army_spawns = 9, agent_spawns = 4, chaos_effect = ""},
	--LATE_NOCTILUS = {key = "LATE_NOCTILUS", required_stage = 3, first_turn = 100, last_turn = 110, army_spawns = 8, agent_spawns = 4, chaos_effect = ""},
	VICTORY = {key = "VICTORY", required_stage = -1, first_turn = -1, last_turn = -1, army_spawns = 0, agent_spawns = 0, chaos_effect = ""}
};
CI_RECURRING_EVENTS = {
	-- Expansion happens during the mid game and late game
	{key = "SKV_UNDERCITY_EXPANSION", required_stage = 3, turn_interval = 2, spawns = 1, },
	-- These only trigger during the late game
	{key = "CHS_DOOM_TIDE", required_stage = 3, turn_interval = 1, spawns = 4, }, -- This gets checked every turn to see if a spawn triggers
	{key = "SKV_UNDERCITY_SPAWNS", required_stage = 3, turn_interval = 4, spawns = 2, },
	{key = "BST_FOREST_SPAWNS", required_stage = 3, turn_interval = 3, spawns = 2, },
};
-- Contains all spawn data information
CI_EVENT_DATA = {
	Diplomacy = {
		-- Used to force norscan factions into war with major order factions
		-- Bjornling is excluded because they're in the alliance with chaos
		CI_NORSCAN_FACTIONS = {
			-- Norscan
			--"wh2_main_nor_aghol",
			--"wh2_main_nor_mung",
			"wh_dlc08_nor_goromadny_tribe",
			"wh_dlc08_nor_helspire_tribe",
			"wh_dlc08_nor_naglfarlings",
			"wh_dlc08_nor_vanaheimlings",
			"wh_main_nor_aesling",
			"wh_main_nor_baersonling",
			"wh_main_nor_graeling",
			"wh_main_nor_sarl",
			"wh_main_nor_skaeling",
			"wh_main_nor_varg",
			"wh_dlc08_nor_norsca",
			"wh_dlc08_nor_wintertooth",
			"wh_main_nor_bjornling",
			-- Skaven
			"wh2_main_skv_clan_moulder",
		};
		CI_Manual_diplomacy_changes = {
			ForcesOfChaos = {
				-- Chaos includes Norsca
				wh_main_chs_chaos = true,
				wh_dlc03_bst_beastmen = true,
			},
			ForcesOfDestruction = {
				wh_main_vmp_vampire_counts = true,
				wh_main_grn_greenskins = true,
				wh2_main_skv_skaven = true,
				wh2_dlc11_cst_vampire_coast = true,
				wh2_main_def_dark_elves = true,
			},
			ForcesOfOrder = {
				-- Empire includes TEB and Kislev
				wh_main_emp_empire = true,
				wh_main_brt_bretonnia = true,
				wh2_main_hef_high_elves = true,
				wh2_main_lzd_lizardmen = true,
				wh_main_dwf_dwarfs = true,
			},
			Unaligned = {
				wh2_dlc09_tmb_tomb_kings = true,
				wh_dlc05_wef_wood_elves = true,
			},
			EnemiesOfChaos = {
				"wh_main_emp_empire",
				"wh2_dlc13_emp_golden_order",
				"wh_main_dwf_dwarfs",
				"wh_main_dwf_karak_izor",
				"wh_main_brt_bretonnia",
				"wh_main_brt_bordeleaux",
				"wh_main_brt_carcassonne",
				"wh_main_ksl_kislev",
				"wh_main_emp_middenland",
				"wh_main_emp_ostermark",
				"wh_main_emp_ostland",
				"wh_main_dwf_kraka_drak",
				"wh_main_emp_nordland",
				"wh_dlc05_wef_wood_elves",
				"wh_dlc05_wef_argwylon",
				"wh2_dlc16_wef_drycha",
				"wh_main_emp_hochland",
				--[["wh2_main_hef_eataine",
				"wh2_main_hef_order_of_loremasters",
				"wh2_main_hef_nagarythe",
				"wh2_main_hef_avelorn",
				"wh2_main_lzd_hexoatl",
				"wh2_main_lzd_last_defenders",
				"wh2_dlc12_lzd_cult_of_sotek",
				"wh2_main_lzd_tlaqua",
				"wh2_main_lzd_itza",--]]
				"wh2_dlc13_lzd_spirits_of_the_jungle",
				--"wh_main_vmp_vampire_counts",
				--"wh_main_vmp_schwartzhafen",
				--Expanded vanilla factions
				"wh_main_dwf_karak_kadrin",
				-- Mod added factions
				-- Error checking has been included to ensure the script works fine
				"wh_main_ksl_erengrad",
				"wh_main_ksl_praag",
				"wh_main_ksl_ungol",
				"wh_main_vmp_tri",
			},
		},
	},
	Invasions = {
		CI_CHAOS_ARMY_SPAWNS = {
			faction_key = "wh_main_chs_chaos",
			effect_bundle = "wh_main_bundle_military_upkeep_free_force_chaos_invasion",
			default_force_key = "CI_chaos",
			buildings = {
				-- Used for the special characters (this is all buildings)
				[1] = {"wh_main_horde_chaos_settlement_5",	"wh_main_horde_chaos_warriors_3", "wh_main_horde_chaos_trolls_1", "wh_main_horde_chaos_magic_2", "wh_main_horde_chaos_knights_2", "wh_main_horde_chaos_dragon_ogres_2", "wh_main_horde_chaos_giants_1", "wh_main_horde_chaos_forge_2",},
				-- Defaults used at different invasion stages
				[2] = { "wh_main_horde_chaos_settlement_3", "wh_main_horde_chaos_warriors_2", "wh_main_horde_chaos_forge_1", },
				[3] = { "wh_main_horde_chaos_settlement_5",	"wh_main_horde_chaos_warriors_3", "wh_main_horde_chaos_forge_2", "wh_main_horde_chaos_knights_2", },
			},
			--buildings = {"wh_main_horde_chaos_settlement_5",	"wh_main_horde_chaos_warriors_3", "wh_main_horde_chaos_trolls_1", "wh_main_horde_chaos_magic_2", "wh_main_horde_chaos_knights_2", "wh_main_horde_chaos_dragon_ogres_2", "wh_main_horde_chaos_giants_1", "wh_main_horde_chaos_marauders_3", "wh_main_horde_chaos_forge_2",},
			excluded_war_declaration = {
				-- Vanilla equivalent
				wh_dlc03_sc_bst_beastmen = -1,
				wh_main_sc_chs_chaos = -1,
				wh_main_sc_nor_norsca = -1,
				-- New
				wh2_main_sc_skv_skaven = -1,
				-- Targeted
				wh_main_vmp_vampire_counts = 2, -- I've found the Vamps need all the help they can get
				wh2_dlc16_vmp_lahmian_sisterhood = 2, -- Ensures the darklands invasion doesn't get distracted by the vamps
				wh_main_dwf_kraka_drak = 2, -- Chaos typically splits its forces to deal with kraka drak. Fine for the late game invasion, not so much for mid game.
				wh2_main_rogue_def_chs_vashnaar = -1,
			},
			alliance_factions = {
				-- Invasion factions
				wh_dlc03_bst_beastmen_chaos = 2,
				wh2_main_chs_chaos_incursion_def = 2,
				wh2_main_chs_chaos_incursion_hef = 2,
				-- Other chaos aligned factions
				-- Beastmen
				wh_dlc03_bst_beastmen = 2,
				wh_dlc03_bst_redhorn = 2,
				wh_dlc03_bst_jagged_horn = 2,
				wh2_main_bst_blooded_axe = 2,
				wh2_main_bst_manblight = 2,
				wh2_main_bst_ripper_horn = 2,
				wh2_main_bst_shadowgor = 2,
				-- Skaven
				wh2_main_skv_clan_moulder = 3,
			},
			special_characters = {
				[3] = {
					["archaon"] = {
						["id"] = "archaon",
						["agent_subtype"] = "chs_archaon",
						["forename"] = "names_name_2147343903",
						["family_name"] = "names_name_2147357364",
						["faction_leader"] = true,
						["immortal"] = true,
						["force_key"] = "CI_archaon",
						["force_xp"] = 9,
						["effect"] = "wh_main_bundle_military_upkeep_free_force_unbreakable",
						["spawn_pos_center"] = {x = 775, y = 625}
					},
					["kholek"] = {
						["id"] = "kholek",
						["agent_subtype"] = "chs_kholek_suneater",
						["forename"] = "names_name_2147345931",
						["family_name"] = "names_name_2147345934",
						["faction_leader"] = false,
						["immortal"] = true,
						["force_key"] = "CI_kholek",
						["force_xp"] = 0,
						["effect"] = "wh_main_bundle_military_upkeep_free_force_unbreakable_endgame_expanded",
						["spawn_pos_center"] = {x = 770, y = 625}
					},
					["sigvald"] = {
						["id"] = "sigvald",
						["agent_subtype"] = "chs_prince_sigvald",
						["forename"] = "names_name_2147345922",
						["family_name"] = "names_name_2147357370",
						["faction_leader"] = false,
						["immortal"] = true,
						["force_key"] = "CI_sigvald",
						["force_xp"] = 0,
						["effect"] = "wh_main_bundle_military_upkeep_free_force_unbreakable_endgame_expanded",
						["spawn_pos_center"] = {x = 780, y = 625}
					},
					["sarthorael"] = {
						["id"] = "sarthorael",
						["agent_subtype"] = "chs_lord_of_change",
						["forename"] = "names_name_2147357518",
						["family_name"] = "names_name_2147357523",
						["faction_leader"] = false,
						["immortal"] = true,
						["force_key"] = "CI_sarthorael",
						["force_xp"] = 0,
						["effect"] = "wh_main_bundle_military_upkeep_free_force_unbreakable_endgame_expanded",
						["spawn_pos_center"] = {x = 775, y = 628}
					}
				},
			},
			agents = {
				agent_types = {
					{agent = "wizard", subtype = "chs_sorcerer_fire", weight = 1},
					{agent = "wizard", subtype = "chs_sorcerer_metal", weight = 1},
					{agent = "wizard", subtype = "chs_sorcerer_death", weight = 1},
					{agent = "champion", subtype = "chs_exalted_hero", weight = 3}
				},
				positions = {
					{487, 438},	{516, 428},	{503, 483},	{681, 352},	{751, 358},	{687, 334},	{738, 311}, {704, 283}, {755, 278},
					{671, 411},	{673, 446},	{647, 394},	{496, 520},	{680, 532},	{542, 372},	{412, 399},	{652, 257}
				},
			},
			army_archetypes = {
				ChaosLord = {
					AgentSubtypes = {"chs_lord", },
					UnitTags = {"Marauders", "MarauderHorsemen", "ChaosWarriors", "Beasts", },
				},
				ChaosSorcerorLordInvasionStage1 = {
					Key = "ChaosSorcerorLordInvasionStage1",
					AgentSubtypes = {"chs_sorcerer_lord_death", "chs_sorcerer_lord_fire", "chs_sorcerer_lord_metal", "dlc07_chs_sorcerer_lord_shadow", },
					MandatoryUnits = {
						wh_main_chs_mon_chaos_spawn = 1,
						wh_dlc01_chs_inf_forsaken_0 = 3,
					},
					UnitTags = { "ChaosWarriors", "Monsters", },
				},
				ChaosLordWarriorsInvasionStage2 = {
					Key = "ChaosLordWarriorsInvasionStage2",
					AgentSubtypes = {"chs_lord", },
					MandatoryUnits = {
						wh_main_chs_cav_chaos_knights_0 = 1,
					},
					UnitTags = { "ChaosWarriors", "Chosen",  "ChaosCavalry", },
				},
				ChaosLordMonstersInvasionStage2 = {
					Key = "ChaosLordMonstersInvasionStage2",
					AgentSubtypes = {"chs_lord", },
					MandatoryUnits = {
						wh_dlc01_chs_mon_dragon_ogre_shaggoth = 1,
					},
					UnitTags = {"ChaosWarriors", "Chosen", "Monsters", },
				},
			},
			invasions = {
				chaos_wastes = {
					key = "chaos_wastes",
					enabled = true,
					use_random_spawn = false,
					positions = {
						{770, 607+3 }, {775, 607+3 }, {780, 607+3 },
						{770, 607+6 }, {775, 607+6 }, {780, 607+6 },
						{770, 607+9 }, {775, 607+9 }, {780, 607+9 },
						{770, 607+12}, {775, 607+12}, {780, 607+12},
						{770, 607+15}, {775, 607+15}, {780, 607+15}
					},
					min_character_xp_levels = 10,
					max_character_xp_levels = 25,
					army_spawn_multiplier = 0.75,
					army_compositions = {
						-- Invasion stage 2 (Mid game)
						[2] = {
							ChaosLord = {
								Key = "ChaosLord",
								Weighting = 5,
							},
							ChaosSorcerorLordInvasionStage1 = {
								Key = "ChaosSorcerorLordInvasionStage1",
								Buildings = {"wh_main_horde_chaos_settlement_4", "wh_main_horde_chaos_warriors_2", "wh_main_horde_chaos_forge_1", "wh_main_horde_chaos_magic_1"},
								Weighting = 2,
							},
							ChaosSorcerorLordDaemons = {
								Key = "ChaosSorcerorLordDaemons",
								Buildings = {"wh_main_horde_chaos_settlement_5", "wh_main_horde_chaos_warriors_2", "wh_main_horde_chaos_forge_1", "wh_main_horde_chaos_magic_2"},
								Weighting = 1,
							},
						},
						-- Invasion stage 3 (End game)
						[3] = {
							ChaosLordWarriorsInvasionStage2 = {
								Key = "ChaosLordWarriorsInvasionStage2",
								Weighting = 3,
							},
							ChaosLordMonstersInvasionStage2 = {
								Key = "ChaosLordMonstersInvasionStage2",
								Buildings = {"wh_main_horde_chaos_settlement_5", "wh_main_horde_chaos_warriors_3", "wh_main_horde_chaos_forge_2", "wh_main_horde_chaos_trolls_1", "wh_main_horde_chaos_giants_1", },
								Weighting = 2,
							},
							ChaosSorcerorLordDaemonsInvasionStage2 = {
								Key = "ChaosSorcerorLordDaemonsInvasionStage2",
								Buildings = {"wh_main_horde_chaos_settlement_5", "wh_main_horde_chaos_warriors_3", "wh_main_horde_chaos_forge_2", "wh_main_horde_chaos_magic_2"},
								Weighting = 2,
							},
							DragonOgreInvasionStage2 = {
								Key = "DragonOgreInvasionStage2",
								Buildings = {"wh_main_horde_chaos_settlement_5", "wh_main_horde_chaos_warriors_3", "wh_main_horde_chaos_forge_2", "wh_main_horde_chaos_trolls_1", "wh_main_horde_chaos_dragon_ogres_2", },
								Weighting = 1,
							},
						},
					},
				},
				naggaroth = {
					key = "naggaroth",
					enabled = true,
					faction_key_override = "wh2_main_chs_chaos_incursion_def",
					use_random_spawn = false,
					positions = {
						-- Order is reversed from vanilla. This means that more armies spawn away from Naggarond
						{213, 710}, {172, 713}, {130, 711}, {91, 712}, {49, 712}
					},
					min_character_xp_levels = 8,
					max_character_xp_levels = 16,
					-- I've made this weaker so Naggarond has an easier time dealing with Chaos
					-- They should be the main antagonist of the High Elves
					army_spawn_multiplier = 0.6,
					army_compositions = {
						-- Invasion stage 2 (Mid game)
						[2] = {
							ChaosLord = {
								Key = "ChaosLord",
								Weighting = 5,
							},
							ChaosSorcerorLordInvasionStage1 = {
								Key = "ChaosSorcerorLordInvasionStage1",
								Buildings = {"wh_main_horde_chaos_settlement_4", "wh_main_horde_chaos_warriors_2", "wh_main_horde_chaos_forge_1", "wh_main_horde_chaos_magic_1"},
								Weighting = 2,
							},
							ChaosSorcerorLordDaemons = {
								Key = "ChaosSorcerorLordDaemons",
								Buildings = {"wh_main_horde_chaos_settlement_5", "wh_main_horde_chaos_warriors_2", "wh_main_horde_chaos_forge_1", "wh_main_horde_chaos_magic_2"},
								Weighting = 1,
							},
						},
						-- Invasion stage 3 (end game)
						[3] = {
							ChaosLordWarriorsInvasionStage2 = {
								Key = "ChaosLordWarriorsInvasionStage2",
								Weighting = 2,
							},
							ChaosSorcerorLordDaemons = {
								Key = "ChaosSorcerorLordDaemons",
								Buildings = {"wh_main_horde_chaos_settlement_5", "wh_main_horde_chaos_warriors_3", "wh_main_horde_chaos_forge_2", "wh_main_horde_chaos_magic_2"},
								Weighting = 4,
							},
							DragonOgreInvasionStage2 = {
								Key = "DragonOgreInvasionStage2",
								Buildings = {"wh_main_horde_chaos_settlement_5", "wh_main_horde_chaos_warriors_3", "wh_main_horde_chaos_forge_2", "wh_main_horde_chaos_trolls_1", "wh_main_horde_chaos_dragon_ogres_2", },
								Weighting = 1,
							},
						},
					},
				},
				darklands = {
					key = "darklands",
					enabled = true,
					faction_key_override = "wh2_main_chs_chaos_incursion_hef",
					use_random_spawn = false,
					positions = {
						{824, 470}, {819, 388},
					},
					min_character_xp_levels = 10,
					max_character_xp_levels = 20,
					army_spawn_multiplier = 0.75,
					army_compositions = {
						-- Invasion stage 2 (Mid game)
						[2] = {
							ChaosLord = {
								Key = "ChaosLord",
								Weighting = 5,
							},
							ChaosSorcerorLordInvasionStage1 = {
								Key = "ChaosSorcerorLordInvasionStage1",
								Buildings = {"wh_main_horde_chaos_settlement_4", "wh_main_horde_chaos_warriors_2", "wh_main_horde_chaos_forge_1", "wh_main_horde_chaos_magic_1"},
								Weighting = 2,
							},
						},
						-- Invasion stage 3 (End game)
						[3] = {
							ChaosLordWarriorsInvasionStage2 = {
								Key = "ChaosLordWarriorsInvasionStage2",
								Weighting = 3,
							},
							ChaosLordMonstersInvasionStage2 = {
								Key = "ChaosLordMonstersInvasionStage2",
								Buildings = {"wh_main_horde_chaos_settlement_5", "wh_main_horde_chaos_warriors_3", "wh_main_horde_chaos_forge_2", "wh_main_horde_chaos_trolls_1", "wh_main_horde_chaos_giants_1", },
								Weighting = 2,
							},
						},
					},
				},
			}
		},
		CI_BEASTMEN_ARMY_SPAWNS = {
			faction_key = "wh_dlc03_bst_beastmen_chaos",
			effect_bundle = "wh_main_bundle_military_upkeep_free_force_chaos_invasion",
			buildings = {
				--"wh_dlc03_horde_beastmen_herd_5", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_minotaurs_1"
				-- Will be used for the special characters (this is all buildings)
				[1] = { "wh_dlc03_horde_beastmen_herd_5", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_creatures_3", "wh_dlc03_horde_beastmen_centigors_3", "wh_dlc03_horde_beastmen_arcane_2", "wh_dlc03_horde_beastmen_giants_1", "wh_dlc03_horde_beastmen_minotaurs_3", "wh_dlc03_horde_beastmen_razorgors_2", "wh_dlc03_horde_beastmen_arcane_2", "wh_dlc03_horde_beastmen_weapons_2", },
				-- Defaults used at different invasion stages
				[2] = { "wh_dlc03_horde_beastmen_herd_3", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_centigors_1", "wh_dlc03_horde_beastmen_weapons_1", },
				[3] = { "wh_dlc03_horde_beastmen_herd_5", "wh_dlc03_horde_beastmen_gors_4", "wh_dlc03_horde_beastmen_creatures_3", "wh_dlc03_horde_beastmen_weapons_2", "wh_dlc03_horde_beastmen_minotaurs_1", },
			},
			-- { "wh_dlc03_horde_beastmen_herd_5", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_creatures_3", "wh_dlc03_horde_beastmen_centigors_3", "wh_dlc03_horde_beastmen_arcane_2", "wh_dlc03_horde_beastmen_giants_1", "wh_dlc03_horde_beastmen_minotaurs_3", "wh_dlc03_horde_beastmen_arcane_2", "wh_dlc03_horde_beastmen_weapons_2", }
			default_force_key = "CI_beastmen",
			excluded_war_declaration = {
				-- Vanilla equivalent
				wh_dlc03_sc_bst_beastmen = -1,
				wh_main_sc_chs_chaos = -1,
				wh_main_sc_nor_norsca = -1,
				-- New
				wh2_main_sc_skv_skaven = -1,
				-- Targeted
				wh_main_vmp_vampire_counts = 2,
				wh2_dlc16_vmp_lahmian_sisterhood = 2, -- Ensures the badlands invasion doesn't get distracted by the vamps
				wh_main_dwf_kraka_drak = 2, -- Chaos typically splits its forces to deal with kraka drak. We can let the norscan invasion deal with them.
				wh2_main_rogue_def_chs_vashnaar = -1,
			},
			army_archetypes = {
				BeastLordGorsChaosInvasionStage1 = {
					AgentSubtypes = {"dlc03_bst_beastlord", },
					MandatoryUnits = {
						wh_dlc03_bst_inf_bestigor_herd_0 = 2,
						wh_dlc03_bst_mon_chaos_spawn_0 = 1,
					},
					UnitTags = {"Gors", "WarBeasts", "Centigors", },
				},
				BeastLordMonstersChaosInvasionStage1 = {
					AgentSubtypes = {"dlc03_bst_beastlord", },
					MandatoryUnits = {
						wh_dlc03_bst_mon_giant_0 = 1,
						wh_dlc03_bst_mon_chaos_spawn_0 = 1,
					},
					UnitTags = {"Gors", "WarBeasts", },
				},
				BeastLordGorsChaosInvasionStage2 = {
					AgentSubtypes = {"dlc03_bst_beastlord", },
					MandatoryUnits = {
						wh_dlc03_bst_inf_bestigor_herd_0 = 2,
						wh_dlc03_bst_mon_chaos_spawn_0 = 1,
					},
					UnitTags = {"Gors", "WarBeasts", "Centigors", },
				},
				BeastLordMonstersChaosInvasionStage2 = {
					AgentSubtypes = {"dlc03_bst_beastlord", },
					MandatoryUnits = {
						wh_dlc03_bst_mon_giant_0 = 2,
						wh_dlc03_bst_mon_chaos_spawn_0 = 1,
					},
					UnitTags = {"Gors", "WarBeasts", "Monsters" },
				},
			},
			invasions = {
				bst_chaos_wastes = {
					key = "bst_chaos_wastes",
					enabled = true,
					use_random_spawn = false,
					positions = {
						{770, 605}, {775, 605}, {780, 605},
					},
					min_character_xp_levels = 10,
					max_character_xp_levels = 20,
					army_spawn_multiplier = 0.5,
					army_compositions = {
						-- Invasion stage 2 (Mid game)
						[2] = {
							BeastLordGorsChaosInvasionStage1 = {
								Key = "BeastLordGorsChaosInvasionStage1",
								Weighting = 4,
							},
							BeastLordMonstersChaosInvasionStage1 = {
								Key = "BeastLordMonstersChaosInvasionStage1",
								Buildings = { "wh_dlc03_horde_beastmen_herd_3", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_creatures_2", "wh_dlc03_horde_beastmen_razorgors_1", "wh_dlc03_horde_beastmen_weapons_1", },
								Weighting = 2,
							},
							GreatBrayShamanChaosInvasionStage1 = {
								Key = "GreatBrayShamanChaosInvasionStage1",
								Buildings = { "wh_dlc03_horde_beastmen_herd_3", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_centigors_1", "wh_dlc03_horde_beastmen_weapons_1", "wh_dlc03_horde_beastmen_arcane_1", },
								Weighting = 3,
							},
						},
						-- Invasion stage 3 (end game)
						[3] = {
							BeastLordGorsChaosInvasionStage2 = {
								Key = "BeastLordGorsChaosInvasionStage2",
								Weighting = 4,
							},
							DoomBullChaosInvasionStage2 = {
								Key = "DoomBullChaosInvasionStage2",
								Buildings = { "wh_dlc03_horde_beastmen_herd_5", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_minotaurs_3", "wh_dlc03_horde_beastmen_razorgors_1", "wh_dlc03_horde_beastmen_weapons_2", },
								Weighting = 2,
							},
							BeastLordMonstersChaosInvasionStage2 = {
								Key = "BeastLordMonstersChaosInvasionStage2",
								Buildings = { "wh_dlc03_horde_beastmen_herd_5", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_creatures_3", "wh_dlc03_horde_beastmen_razorgors_2", "wh_dlc03_horde_beastmen_weapons_2", },
								Weighting = 1,
							},
							GreatBrayShamanChaosInvasionStage2 = {
								Key = "GreatBrayShamanChaosInvasionStage2",
								Buildings = { "wh_dlc03_horde_beastmen_herd_5", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_centigors_2", "wh_dlc03_horde_beastmen_weapons_2", "wh_dlc03_horde_beastmen_arcane_2", },
								Weighting = 2,
							},
						},
					},
				},
			},
		},
		CI_NORSCA_ARMY_SPAWNS = {
			faction_key = "wh_main_nor_bjornling",
			effect_bundle = "wh_main_bundle_military_upkeep_free_force_chaos_invasion",
			default_force_key = "CI_norsca",
			excluded_war_declaration = {
				-- Vanilla equivalent
				wh_dlc03_sc_bst_beastmen = -1,
				wh_main_sc_chs_chaos = -1,
				wh_main_sc_nor_norsca = -1,
				-- New
				wh2_main_sc_skv_skaven = -1,
				wh_main_sc_vmp_vampire_counts = 2,
				wh2_main_rogue_def_chs_vashnaar = -1,
				-- Stops the norscan invasions (NE Ulthuan) from being distracted by the Def AI
				wh2_main_def_naggarond = -1,
				wh2_main_def_har_ganeth = -1,
				wh2_twa03_def_rakarth = -1,
				wh2_main_def_karond_kar = -1,
				wh2_main_def_the_forgebound = -1,
			},
			army_archetypes = {
				ChieftainChaosInvasionStage1 = {
					AgentSubtypes = {"nor_marauder_chieftain",  },
					MandatoryUnits = {
						wh_dlc08_nor_mon_war_mammoth_0 = 1,
						wh_dlc08_nor_inf_marauder_berserkers_0 = 2,
						wh_dlc08_nor_inf_marauder_champions_0 = 1,
					},
					UnitTags = {"Warriors", "Horsemen", "WarBeasts", },
				},
				ChieftainHorsemenChaosInvasionStage1 = {
					AgentSubtypes = {"nor_marauder_chieftain",  },
					MandatoryUnits = {
						wh_dlc08_nor_cav_marauder_horsemasters_0 = 2,
						wh_main_nor_mon_chaos_warhounds_0 = 2,
						wh_main_nor_mon_chaos_warhounds_1 = 1,
					},
					UnitTags = {"Horsemen", "Trolls", },
				},
				ChieftainChaosInvasionStage2 = {
					AgentSubtypes = {"nor_marauder_chieftain",  },
					MandatoryUnits = {
						wh_dlc08_nor_mon_war_mammoth_1 = 1,
						wh_dlc08_nor_inf_marauder_berserkers_0 = 3,
						wh_dlc08_nor_inf_marauder_champions_0 = 2,
						wh_dlc08_nor_inf_marauder_champions_1 = 1,
					},
					UnitTags = {"Warriors", "Horsemen", "WarBeasts", },
				},
				ChieftainHorsemenChaosInvasionStage2 = {
					AgentSubtypes = {"nor_marauder_chieftain",  },
					MandatoryUnits = {
						wh_dlc08_nor_cav_marauder_horsemasters_0 = 3,
						wh_main_nor_cav_chaos_chariot = 1,
						wh_main_nor_mon_chaos_warhounds_1 = 2,
					},
					UnitTags = {"Horsemen", "Trolls", },
				},
			},
			invasions = {
				nor_retake_norsca = {
					key = "nor_retake_norsca",
					enabled = true,
					use_random_spawn = true,
					positions = {
						{630, 680},	
						{697, 659}, -- Kraka Drak
						-- {588, 708}, 
						-- {540, 698}, 
						--{520, 693}, 
						-- {494, 675}, 
						--{411, 673}, 
						--{374, 644},
						--{420, 625}, 
						{447, 639}, {519, 662}, {589, 688}, {495, 635}, {437, 610},
						{504, 609}, {448, 589}, 
						--{377, 565}
					},
					min_character_xp_levels = 12,
					max_character_xp_levels = 20,
					army_spawn_multiplier = 0.75,
					army_compositions = {
						-- Invasion stage 3 (end game)
						[3] = {
							ChieftainChaosInvasionStage2 = {
								Key = "ChieftainChaosInvasionStage2",
								Weighting = 5,
							},
							ShamanLordMonstersChaosInvasionStage2 = {
								Key = "ShamanLordMonstersChaosInvasionStage2",
								Weighting = 3,
							},
							FimirWarlordChaosInvasionStage2 = {
								Key = "FimirWarlordChaosInvasionStage2",
								Weighting = 1,
							},
						},
					},
				},
				nor_ne_ulthuan = {
					key = "nor_ne_ulthuan",
					enabled = true,
					use_random_spawn = true,
					positions = {
						{262, 504}, {266, 497}, {273, 497},
						{174, 502}, {280, 507}, {279, 502}
					},
					min_character_xp_levels = 15,
					max_character_xp_levels = 20,
					army_spawn_multiplier = 1,
					army_compositions = {
						-- Invasion stage 1 (mid game)
						[2] = {
							ChieftainChaosInvasionStage2 = {
								Key = "ChieftainChaosInvasionStage1",
								Weighting = 5,
							},
							ShamanLordMonstersChaosInvasionStage2 = {
								Key = "ShamanLordMonstersChaosInvasionStage1",
								Weighting = 3,
							},
						},
						-- Invasion stage 2 (end game)
						[3] = {
							ChieftainChaosInvasionStage2 = {
								Key = "ChieftainChaosInvasionStage2",
								Weighting = 5,
							},
							ShamanLordMonstersChaosInvasionStage2 = {
								Key = "ShamanLordMonstersChaosInvasionStage2",
								Weighting = 3,
							},
						},
					},
				},
				nor_eastern_invasion = {
					key = "nor_eastern_invasion",
					enabled = true,
					faction_key_override = "wh2_main_rogue_hung_warband",
					use_random_spawn = false,
					positions = {
						{835, 305}, {830, 305},
						{835, 300}, {830, 300},
					},
					min_character_xp_levels = 10,
					max_character_xp_levels = 14,
					army_spawn_multiplier = 0.4,
					army_compositions = {
						-- Invasion stage 2 (Mid game)
						[2] = {
							CI_mung = {
								Key = "CI_mung",
								AgentSubtypes = {
									nor_marauder_chieftain = {
										Weighting = 1,
									},
								},
								Weighting = 3,
							},
						},
						-- Invasion stage 3 (End game)
						[3] = {
							CI_mung = {
								Key = "CI_mung",
								AgentSubtypes = {
									nor_marauder_chieftain = {
										Weighting = 1,
									},
								},
								Weighting = 3,
							},
						},
					},
				},
			},
		},
		CI_SKAVEN_LUSTRIA_ARMY_SPAWNS = {
			faction_key = "wh2_main_skv_clan_pestilens",
			effect_bundle = "wh_main_bundle_military_upkeep_free_force_chaos_invasion",
			default_force_key = "CI_skaven",
			included_war_declaration = {
				wh2_main_sc_lzd_lizardmen = true,
				wh2_main_hef_order_of_loremasters = true,
				wh2_dlc11_def_the_blessed_dread = true,
				wh2_main_dwf_spine_of_sotek_dwarfs = true,
			},
			alliance_factions = {
				-- Invasion factions
				wh2_main_skv_clan_pestilens = 2,
				wh2_dlc12_skv_clan_fester = 2,
			},
			army_archetypes = {
				ClanPestilensChaosInvasionStage1 = {
					AgentSubtypes = {"wh2_main_skv_warlord", },
					MandatoryUnits = {
						wh2_main_skv_inf_plague_monks = 5,
						wh2_main_skv_inf_plague_monk_censer_bearer = 2,
						wh2_main_skv_art_plagueclaw_catapult = 1,
					},
					UnitTags = {"Warriors", "ClanPestilens"},
				},
				ClanPestilensChaosInvasionStage2 = {
					AgentSubtypes = {"wh2_main_skv_warlord", },
					MandatoryUnits = {
						wh2_main_skv_inf_plague_monks = 6,
						wh2_main_skv_inf_plague_monk_censer_bearer = 4,
						wh2_main_skv_art_plagueclaw_catapult = 3,
					},
					UnitTags = {"Warriors", "ClanPestilens"},
				},
			},
			invasions = {
				skv_invade_lustria_mid = {
					key = "skv_invade_lustria_mid",
					enabled = true,
					faction_key_override = "wh2_dlc12_skv_clan_fester",
					use_random_spawn = true,
					positions = {
						{21, 30}, {19, 25}, {23, 22},
						{29, 22}, {29, 28}, {32, 32},
					},
					min_character_xp_levels = 5,
					max_character_xp_levels = 12,
					army_spawn_multiplier = 1,
					army_compositions = {
						-- Invasion stage 2 (Mid game)
						[2] = {
							ClanPestilensChaosInvasionStage1 = {
								Key = "ClanPestilensChaosInvasionStage1",
								Weighting = 4,
							},
						},
					},
				},
				skv_invade_lustria_late = {
					key = "skv_invade_lustria_late",
					enabled = true,
					use_random_spawn = true,
					positions = {
						{200,    13}, {200,    13+5}, {200,    13+10},
						{200+5,  13}, {200+5,  13+5}, {200+5,  13+10},
						{200+10, 13}, {200+10, 13+5}, {200+10, 13+10},
					},
					min_character_xp_levels = 10,
					max_character_xp_levels = 20,
					army_spawn_multiplier = 1,
					army_compositions = {
						-- Invasion stage 3 (end game)
						[3] = {
							ClanPestilensChaosInvasionStage2 = {
								Key = "ClanPestilensChaosInvasionStage2",
								Weighting = 4,
							},
						},
					},
				},
			},
		},
		CI_VAMPIRE_COAST_CYLOSTRA_ARMY_SPAWNS = {
			faction_key = "wh2_dlc11_cst_the_drowned",
			effect_bundle = "wh_main_bundle_military_upkeep_free_force_chaos_invasion",
			default_force_key = "CI_coast",
			included_war_declaration = {
				--wh2_main_sc_hef_high_elves = true,
				--wh_main_sc_brt_bretonnia = true,
				-- We need to focus Cylostra onto a few factions
				wh2_main_hef_eataine = true,
				wh2_main_hef_caledor = true,
				wh2_main_hef_tiranoc = true,
				wh2_main_hef_avelorn = true,
				wh2_main_hef_ellyrion = true,
			},
			army_archetypes = {
				VampireAdmiralGhostsInvasionStage1 = {
					AgentSubtypes = {"wh2_dlc11_cst_admiral_death", "wh2_dlc11_cst_admiral_deep", "wh2_dlc11_cst_admiral_fem_death", "wh2_dlc11_cst_admiral_fem_deep", "wh2_dlc11_cst_admiral", "wh2_dlc11_cst_admiral_fem",},
					MandatoryUnits = {
						wh2_dlc11_cst_inf_syreens = 2,
						wh2_dlc11_cst_mon_mournguls_0 = 2,
						wh2_dlc11_cst_mon_animated_hulks_0 = 2,
					},
					UnitTags = {"Zombies", "Beasts", "Artillery", },
					CanSpawnOnSea = true,
				},
				VampireAdmiralInvasionStage1 = {
					AgentSubtypes = {"wh2_dlc11_cst_admiral_death", "wh2_dlc11_cst_admiral_deep", "wh2_dlc11_cst_admiral_fem_death", "wh2_dlc11_cst_admiral_fem_deep", "wh2_dlc11_cst_admiral", "wh2_dlc11_cst_admiral_fem",},
					MandatoryUnits = {
						wh2_dlc11_cst_mon_rotting_leviathan_0 = 1,
						wh2_dlc11_cst_mon_rotting_prometheans_0 = 1,
					},
					UnitTags = {"Zombies", "Beasts", "Artillery", },
					CanSpawnOnSea = true,
				},
			},
			invasions = {
				cst_sw_ulthuan = {
					key = "cst_sw_ulthuan",
					enabled = true,
					positions = {
						{120, 246}, {128, 240}, {139, 234},
					},
					min_character_xp_levels = 8,
					max_character_xp_levels = 12,
					army_spawn_multiplier = 0.75,
					army_compositions = {
						-- Invasion stage 2 (Mid game)
						[2] = {
							VampireAdmiralInvasionStage1 = {
								Key = "VampireAdmiralInvasionStage1",
								Weighting = 4,
							},
							VampireAdmiralGhostsInvasionStage1 = {
								Key = "VampireAdmiralGhostsInvasionStage1",
								Weighting = 1,
							},
						},
					},
				},
			},
		},
		CI_VAMPIRE_COAST_NOCTILUS_ARMY_SPAWNS = {
			faction_key = "wh2_dlc11_cst_noctilus",
			effect_bundle = "wh_main_bundle_military_upkeep_free_force_chaos_invasion",
			default_force_key = "CI_coast",
			included_war_declaration = {
				--wh2_main_sc_hef_high_elves = true,
				--wh_main_sc_brt_bretonnia = true,
				--wh_main_sc_teb_teb = true,
				wh2_main_hef_eataine = true,
				wh2_main_hef_saphery = true,
				wh2_main_hef_avelorn = true,
				wh2_main_hef_yvresse = true,
				wh_main_teb_estalia = true,
				wh_main_teb_tilea = true,
				wh_main_brt_carcassonne = true,
				wh_main_brt_parravon = true,
				wh_main_brt_bordeleaux = true,
				wh2_dlc11_cst_pirates_of_sartosa = true,
			},
			army_archetypes = {
				VampireAdmiralInvasionStage2 = {
					AgentSubtypes = {"wh2_dlc11_cst_admiral_death", "wh2_dlc11_cst_admiral_deep", "wh2_dlc11_cst_admiral_fem_death", "wh2_dlc11_cst_admiral_fem_deep", "wh2_dlc11_cst_admiral", "wh2_dlc11_cst_admiral_fem",},
					MandatoryUnits = {
						wh2_dlc11_cst_mon_necrofex_colossus_0 = 1,
						wh2_dlc11_cst_inf_depth_guard_0 = 3,
						wh2_dlc11_cst_inf_depth_guard_1 = 2,
					},
					UnitTags = { "Zombies", "DepthGuard", "Artillery", },
					CanSpawnOnSea = true,
				},
				VampireAdmiralMonstersInvasionStage2 = {
					AgentSubtypes = {"wh2_dlc11_cst_admiral_death", "wh2_dlc11_cst_admiral_deep", "wh2_dlc11_cst_admiral_fem_death", "wh2_dlc11_cst_admiral_fem_deep", "wh2_dlc11_cst_admiral", "wh2_dlc11_cst_admiral_fem",},
					MandatoryUnits = {
						wh2_dlc11_cst_mon_terrorgheist = 1,
						wh2_dlc11_cst_mon_animated_hulks_0 = 3,
						wh2_dlc11_cst_mon_mournguls_0 = 2,
					},
					UnitTags = { "Zombies", "Beasts", "Monsters", "Artillery", },
					CanSpawnOnSea = true,
				},
				VampireAdmiralSeaBeastsInvasionStage2 = {
					AgentSubtypes = {"wh2_dlc11_cst_admiral_death", "wh2_dlc11_cst_admiral_deep", "wh2_dlc11_cst_admiral_fem_death", "wh2_dlc11_cst_admiral_fem_deep", "wh2_dlc11_cst_admiral", "wh2_dlc11_cst_admiral_fem",},
					MandatoryUnits = {
						wh2_dlc11_cst_mon_rotting_leviathan_0 = 1,
						wh2_dlc11_cst_mon_rotting_prometheans_0 = 2,
						wh2_dlc11_cst_mon_rotting_prometheans_gunnery_mob_0 = 2,
					},
					UnitTags = { "Zombies", "Beasts", "Artillery", },
					CanSpawnOnSea = true,
				},
			},
			invasions = {
				cst_se_ulthuan = {
					key = "cst_se_ulthuan",
					enabled = true,
					positions = {
						{302, 234}, {313, 234}, {327, 249},
					},
					min_character_xp_levels = 10,
					max_character_xp_levels = 20,
					army_spawn_multiplier = 1,
					army_compositions = {
						-- Invasion stage 3 (End game)
						[3] = {
							VampireAdmiralInvasionStage2 = {
								Key = "VampireAdmiralInvasionStage2",
								Weighting = 2,
							},
							VampireAdmiralMonstersInvasionStage2 = {
								Key = "VampireAdmiralMonstersInvasionStage2",
								Weighting = 2,
							},
							VampireAdmiralSeaBeastsInvasionStage2 = {
								Key = "VampireAdmiralSeaBeastsInvasionStage2",
								Weighting = 2,
							},
						},
					},
				},
			},
		},
		CI_LUSTRIA_VASHNARR_ARMY_SPAWNS = {
			faction_key = "wh2_main_rogue_def_chs_vashnaar",
			effect_bundle = "wh_main_bundle_military_upkeep_free_force",
			default_force_key = "CI_vashnarr_def",
			included_war_declaration = {
				--wh2_main_sc_lzd_lizardmen = true,
				--wh2_main_sc_hef_high_elves = true,
				-- Vashnarrs AI will travel across the world to fight other lizardmen factions
				-- Need to focus them on the major players of Lustria
				wh2_dlc12_lzd_cult_of_sotek = true,
				wh2_main_lzd_hexoatl = true,
				wh2_main_lzd_itza = true,
				wh2_dlc13_emp_the_huntmarshals_expedition = true,
				wh2_main_emp_new_world_colonies = true,
				wh2_main_hef_nagarythe = true,
			},
			invasions = {
				lustria_def_chs = {
					key = "lustria_def_chs",
					enabled = true,
					positions = {
						{40, 336}, {33, 334}, {6, 337},
					},
					min_character_xp_levels = 8,
					max_character_xp_levels = 12,
					army_spawn_multiplier = 0.6,
					army_compositions = {
						-- Invasion stage 3 (End game)
						[3] = {
							CI_vashnarr_def = {
								Key = "CI_vashnarr_def",
								AgentSubtypes = {
									wh2_main_def_dreadlord = {
										Weighting = 1,
									},
									wh2_main_def_dreadlord_fem = {
										Weighting = 1,
									},
								},
								Weighting = 3,
							},
							CI_vashnarr_chs = {
								Key = "CI_vashnarr_chs",
								AgentSubtypes = {
									chs_lord = {
										Weighting = 1,
									},
								},
								Weighting = 2,
							},
						},
					},
				},
			},
		},
		-- Slightly different spawns
		CI_BEASTMEN_FOREST_SPAWNS = {
			faction_key = "wh_dlc03_bst_beastmen_chaos",
			effect_bundle = "wh_main_bundle_military_upkeep_free_force_chaos_invasion",
			buildings = {
				-- Will be used for the special characters (this is all buildings)
				[1] = { "wh_dlc03_horde_beastmen_herd_5", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_creatures_3", "wh_dlc03_horde_beastmen_centigors_3", "wh_dlc03_horde_beastmen_arcane_2", "wh_dlc03_horde_beastmen_giants_1", "wh_dlc03_horde_beastmen_minotaurs_3", "wh_dlc03_horde_beastmen_razorgors_2", "wh_dlc03_horde_beastmen_arcane_2", "wh_dlc03_horde_beastmen_weapons_2", },
				-- Defaults used at different invasion stages
				[2] = { "wh_dlc03_horde_beastmen_herd_3", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_centigors_1", "wh_dlc03_horde_beastmen_weapons_1", },
				[3] = { "wh_dlc03_horde_beastmen_herd_5", "wh_dlc03_horde_beastmen_gors_4", "wh_dlc03_horde_beastmen_creatures_3", "wh_dlc03_horde_beastmen_weapons_2", "wh_dlc03_horde_beastmen_minotaurs_1", },
			},
			default_force_key = "CI_beastmen",
			excluded_war_declaration = {
				-- Vanilla equivalent
				wh_dlc03_sc_bst_beastmen = -1,
				wh_main_sc_chs_chaos = -1,
				wh_main_sc_nor_norsca = -1,
				-- New
				wh2_main_sc_skv_skaven = -1,
				wh2_main_rogue_def_chs_vashnaar = -1,
			},
			alliance_factions = {
				-- Invasion factions
				wh_dlc03_bst_beastmen_chaos = 2,
				wh_main_chs_chaos = 2,
			},
			army_archetypes = {
				BeastLordGorsChaosInvasionStage1 = {
					AgentSubtypes = {"dlc03_bst_beastlord", },
					MandatoryUnits = {
						wh_dlc03_bst_inf_bestigor_herd_0 = 2,
						wh_dlc03_bst_mon_chaos_spawn_0 = 1,
					},
					UnitTags = {"Gors", "WarBeasts", "Centigors", },
				},
				BeastLordGorsChaosInvasionStage2 = {
					AgentSubtypes = {"dlc03_bst_beastlord", },
					MandatoryUnits = {
						wh_dlc03_bst_inf_bestigor_herd_0 = 2,
						wh_dlc03_bst_mon_chaos_spawn_0 = 1,
					},
					UnitTags = {"Gors", "WarBeasts", "Centigors", },
				},
			},
			invasions = {
				bst_old_world_forests = {
					key = "bst_old_world_forests",
					enabled = true,
					faction_key_override = {
						"wh_dlc03_bst_beastmen",
						"wh_dlc03_bst_redhorn",
						"wh_dlc03_bst_jagged_horn",
						"wh2_main_bst_blooded_axe",
						"wh2_main_bst_manblight",
						"wh2_main_bst_ripper_horn",
						"wh2_main_bst_shadowgor",
					},
					use_random_spawn = true,
					use_same_spawn_pos = true,
					positions = {
						-- Southern Empire
						{605, 440}, -- Stirland
						{563, 412}, -- Averland
						-- Central Empire
						{600, 486}, -- Talabecland
						{546, 470},
						{534, 516}, -- Middenland
						{455, 478},
						-- Northern Empire
						{483, 550}, -- Nordland
						-- Western Empire
						{470, 439}, -- Reikland
						-- Eastern Empire
						{660, 505}, -- Ostermark
						-- Disabled for now, Empire needs more of a focus
						-- Northern Bretonnia
						--[[{365, 433}, -- Lyonesse
						{370, 466}, -- Couronne
						-- Southern Bretonnia
						{432, 392}, -- Bastonne
						{432, 348}, -- Parravon--]]
					},
					min_character_xp_levels = 5,
					max_character_xp_levels = 10,
					army_spawn_multiplier = 1,
					army_compositions = {
						-- Invasion stage 2 (mid game)
						[2] = {
							BeastLordGorsChaosInvasionStage1 = {
								Key = "BeastLordGorsChaosInvasionStage1",
								Weighting = 4,
							},
							GreatBrayShamanChaosInvasionStage1 = {
								Key = "GreatBrayShamanChaosInvasionStage1",
								Weighting = 2,
							},
						},
						-- Invasion stage 3 (end game)
						[3] = {
							BeastLordGorsChaosInvasionStage2 = {
								Key = "BeastLordGorsChaosInvasionStage2",
								Weighting = 4,
							},
							GreatBrayShamanChaosInvasionStage2 = {
								Key = "GreatBrayShamanChaosInvasionStage2",
								Buildings = { "wh_dlc03_horde_beastmen_herd_5", "wh_dlc03_horde_beastmen_gors_3", "wh_dlc03_horde_beastmen_centigors_2", "wh_dlc03_horde_beastmen_weapons_2", "wh_dlc03_horde_beastmen_arcane_2", },
								Weighting = 2,
							},
						},
					},
				},
			},
		},
		CI_UNDER_EMPIRE_SPAWNS = {
			enabled = true,
			factions = {
				"wh2_dlc09_skv_clan_rictus",
				"wh2_dlc12_skv_clan_fester",
				"wh2_dlc12_skv_clan_mange",
				"wh2_dlc15_skv_clan_ferrik",
				"wh2_dlc15_skv_clan_kreepus",
				"wh2_dlc15_skv_clan_volkn",
				"wh2_dlc16_skv_clan_gritus",
				"wh2_main_skv_clan_eshin",
				"wh2_main_skv_clan_gnaw",
				"wh2_main_skv_clan_mordkin",
				"wh2_main_skv_clan_mors",
				"wh2_main_skv_clan_moulder",
				"wh2_main_skv_clan_pestilens",
				"wh2_main_skv_clan_septik",
				"wh2_main_skv_clan_skyre",
				"wh2_main_skv_clan_spittel",
			},
			regions = {
				old_world = {
					"wh_main_reikland_helmgart", --Ubersreik
					"wh_main_stirland_flensburg",
					"wh_main_black_mountains_mighdal_vongalbarak",
					"wh2_main_solland_steingart",
					"wh_main_reikland_altdorf",
					"wh_main_western_sylvania_castle_templehof",
					"wh_main_ostermark_nagenhof",
					"wh_main_middenland_carroburg",
					"wh_main_middenland_middenheim",
					"wh_main_ostland_castle_von_rauken",
					"wh_main_hochland_brass_keep",
					"wh_main_ostermark_mordheim",
					"wh_main_northern_worlds_edge_mountains_khazid_irkulaz",
					"wh_main_rib_peaks_grom_peak",
					"wh_main_zhufbar_karag_dromar",
					"wh_main_zhufbar_oakenhammer",
					"wh_main_northern_grey_mountains_karak_ziflin",
					"wh_main_southern_grey_mountains_karak_azgaraz",
					"wh_main_eastern_oblast_praag",
					"wh_main_northern_oblast_fort_ostrosk",
				},
				--[[bretonnia = {
					"wh_main_bordeleaux_et_aquitaine_aquitaine",
					"wh_main_forest_of_arden_castle_artois",
				},--]]
				southern_realms = {
					"wh_main_estalia_tobaro",
					"wh_main_estalia_bilbali",
					"wh_main_tilea_miragliano",
					"wh_main_tilea_luccini",
				},
				lustria = {
					"wh2_main_spine_of_sotek_hualotal",
					"wh2_main_spine_of_sotek_monument_of_izzatal",
					"wh2_main_spine_of_sotek_mine_of_the_bearded_skulls",
					"wh2_main_jungles_of_green_mist_pillars_of_unseen_constellations",
					"wh2_main_jungles_of_green_mists_spektazuma",
					"wh2_main_the_creeping_jungle_temple_of_kara",
					"wh2_main_northern_great_jungle_xahutec",
					"wh2_main_headhunters_jungle_marks_of_the_old_ones",
					"wh2_main_southern_great_jungle_subatuun",
				},
				badlands = {
					"wh_main_desolation_of_nagash_spitepeak",
					"wh_main_blightwater_deff_gorge",
					"wh_main_eastern_badlands_karak_eight_peaks",
					"wh_main_eastern_badlands_crooked_fang_fort",
					"wh2_main_the_wolf_lands_crookback_mountain",
					"wh2_main_the_wolf_lands_mount_greyhag",
					"wh_main_death_pass_karag_dron",
				},
				nehekhara = {
					"wh2_main_shifting_sands_bhagar",
					"wh2_main_great_desert_of_araby_el-kalabad",
					"wh2_main_land_of_assassins_lashiek",
					"wh2_main_charnel_valley_karag_orrud",
					"wh2_main_southlands_worlds_edge_mountains_lost_plateau",
				},
			},
		},
	},
};

CI_DATA = {
	CI_LAST_UPDATE = -1,
	CI_INVASION_STAGE = 1,
	CI_SETTING = 2,
	CI_RAZED_REGIONS = 0,
	CI_LAST_EFFECT = "",
	CI_AUTORUN = false,
	-- New
	CI_INVASION_STAGE_START_TURN = 0,
	CI_RAZED_REGIONS_STAGE_2 = 0,
	CI_RAZED_SKAVEN_CITY_SPAWNS = 0,
	CI_RAZED_BEASTMEN_CITY_SPAWNS = 0,
	CI_RAZED_CHAOS_WAVE_SPAWNS = 0,
};
CI_SPAWNED_EVENTS = {

};
CI_ARMY_SETTINGS = {
	{key = "Off", multiplier = 0},
	{key = "On", multiplier = 1},
	{key = "Hard", multiplier = 1.5},
	{key = "Very Hard", multiplier = 2},
	{key = "Legendary", multiplier = 3}
};

function CI_setup()
	CI_debug_setup();
	out.chaos("CI_setup()");
	out.inc_tab("chaos");

	if cm:get_local_faction_name(true) then
		CI_DATA.CI_AUTORUN = false;
	else
		out.chaos("Autorun detected!");
		CI_DATA.CI_AUTORUN = true;
	end

	if CI_DATA.CI_AUTORUN == false then
		if cm:is_multiplayer() == false then
			local human_norscan = false;
			local human_factions = cm:get_human_factions();
			local player_faction = cm:model():world():faction_by_key(human_factions[1]);

			if player_faction:subculture() == "wh_main_sc_nor_norsca" then
				human_norscan = true;
			end

			if human_norscan == true then
				out.chaos("Aborting Chaos invasion script, a player is Norsca!");
				out.dec_tab("chaos");
				Setup_Norsca_Chaos_Invasion();
				return;
			end

			-- Tweak number of army spawns and spawn turn if the human player is Kislev or Kraka Drak
			if player_faction:subculture() == "wh_main_sc_ksl_kislev"
			or player_faction:name() == "wh_main_dwf_kraka_drak" then
				CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS.invasions["chaos_wastes"].army_spawn_multiplier = 0.6;
				CI_EVENT_DATA.Invasions.CI_BEASTMEN_ARMY_SPAWNS.invasions["bst_chaos_wastes"].army_spawn_multiplier = 0.3;
				CI_EVENTS["MID_GAME"].first_turn = 95;
				CI_EVENTS["MID_GAME"].last_turn = 105;
				CI_EVENTS["END_GAME"].first_turn = 105;
				CI_EVENTS["END_GAME"].last_turn = 115;
			end
		end

		if cm:is_new_game() == true then
			if cm:is_multiplayer() == false then
				out.chaos("Reading Singleplayer Chaos Setting");
				local shared_states_manager = cm:model():shared_states_manager();
				local chaos_setting_value = shared_states_manager:get_state_as_float_value("ChaosInvasion");
				CI_DATA.CI_SETTING = chaos_setting_value + 1;
			else
				out.chaos("Defaulting Multiplayer Chaos Setting");
				CI_DATA.CI_SETTING = 2;
			end
		end
		out.chaos("Frontend Setting: "..tostring(CI_ARMY_SETTINGS[CI_DATA.CI_SETTING].key).." ("..tostring(CI_DATA.CI_SETTING)..")");
	else
		if cm:is_new_game() == true then
			out.chaos("Reading Autorun Chaos Setting");
			local shared_states_manager = cm:model():shared_states_manager();
			local chaos_setting_value = shared_states_manager:get_state_as_float_value("ChaosInvasion");
			CI_DATA.CI_SETTING = chaos_setting_value + 1;
			out.chaos("Preferences Setting: "..tostring(CI_ARMY_SETTINGS[CI_DATA.CI_SETTING].key).." ("..tostring(CI_DATA.CI_SETTING)..")");
		end
	end

	local chaos_faction = cm:model():world():faction_by_key("wh_main_chs_chaos");

	if chaos_faction:is_human() == false then
		CI_setup_armies();

		if cm:is_new_game() == true then
			cm:disable_event_feed_events(true, "wh_event_category_diplomacy", "", "");

			out.chaos("Killing Archaon! - '"..chaos_faction:faction_leader():command_queue_index().."'");
			cm:set_character_immortality("character_cqi:"..chaos_faction:faction_leader():command_queue_index(), false);
			cm:kill_character(chaos_faction:faction_leader():command_queue_index(), true, false);

			cm:callback(function()
				cm:disable_event_feed_events(false, "wh_event_category_diplomacy", "", "");
			end, 1);
		end

		if CI_DATA.CI_SETTING > 1 then
			out.chaos("Creating Script Listeners");
			core:add_listener(
				"CI_FactionTurnStart",
				"FactionTurnStart",
				true,
				function(context) CI_FactionTurnStart(context); end,
				true
			);
			core:add_listener(
				"CI_CharacterRazedSettlement",
				"CharacterRazedSettlement",
				true,
				function(context) CI_CharacterRazedSettlement(context) end,
				true
			);
			core:add_listener(
				"CI_CharacterConvalescedOrKilled",
				"CharacterConvalescedOrKilled",
				true,
				function(context) CI_CharacterConvalescedOrKilled(context) end,
				true
			);
		else
			out.chaos("Disabling Chaos Invasion! (Off Setting)");
			cm:complete_scripted_mission_objective("wh_main_short_victory", "archaon_spawned", true);
			cm:complete_scripted_mission_objective("wh_main_long_victory", "archaon_spawned", true);
		end
	else
		out.chaos("Disabling Chaos Invasion! (Human Chaos)");
	end
	out.dec_tab("chaos");
end

function CI_FactionTurnStart(context)
	if context:faction():name() == "wh_main_chs_chaos" then
		out.chaos("Chaos reasury information");
		out.chaos("Treasury: "..context:faction():treasury());
		out.chaos("losing_money: "..tostring(context:faction():losing_money()));
		out.chaos("upkeep_expenditure_percent: "..context:faction():upkeep_expenditure_percent());
		out.chaos("num_generals: "..context:faction():num_generals());
	end
	if context:faction():is_human() == true or CI_DATA.CI_AUTORUN == true then
		local turn_number = cm:model():turn_number();

		if CI_DATA.CI_LAST_UPDATE < turn_number then
			out.chaos("Chaos Event Update : Turn "..turn_number);
			out.chaos("Stage: "..CI_DATA.CI_INVASION_STAGE);
			out.inc_tab("chaos");
			out.chaos("Stage start turn: "..CI_DATA.CI_INVASION_STAGE_START_TURN);
			if CI_DATA.CI_INVASION_STAGE == 2
			or CI_DATA.CI_INVASION_STAGE == 3 then
				out.chaos("Razed regions in stage 2: "..CI_DATA.CI_RAZED_REGIONS_STAGE_2);
				out.chaos("Skaven undercity spawns: "..CI_DATA.CI_RAZED_SKAVEN_CITY_SPAWNS);
				out.chaos("Beastmen forest spawns: "..CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS);
				out.chaos("Chaos wave spawns: "..CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS)
			end
			CI_DATA.CI_LAST_UPDATE = turn_number;
			out.chaos("turn_number: "..turn_number);
			out.chaos("CI_DATA.CI_INVASION_STAGE_START_TURN: "..CI_DATA.CI_INVASION_STAGE_START_TURN);
			-- Check for recurring triggers
			for i = 1, #CI_RECURRING_EVENTS do
				out.chaos("CI_RECURRING_EVENTS[i].turn_interval: "..CI_RECURRING_EVENTS[i].turn_interval);
				if CI_RECURRING_EVENTS[i].required_stage == CI_DATA.CI_INVASION_STAGE
				and ((turn_number - CI_DATA.CI_INVASION_STAGE_START_TURN) % CI_RECURRING_EVENTS[i].turn_interval == 0) then
					if CI_RECURRING_EVENTS[i].key == "SKV_UNDERCITY_EXPANSION" then
						out.chaos("\t\tSpawning recurring event!: "..CI_RECURRING_EVENTS[i].key);
						CI_Event_2_Undercity_Expansion(CI_RECURRING_EVENTS[i]);
					elseif CI_RECURRING_EVENTS[i].key == "BST_FOREST_SPAWNS"
					and CI_SPAWNED_EVENTS["END_GAME"] then
						out.chaos("\t\tSpawning recurring event!: "..CI_RECURRING_EVENTS[i].key);
						CI_Event_3_Forest_Spawns(CI_RECURRING_EVENTS[i]);
					elseif CI_RECURRING_EVENTS[i].key == "SKV_UNDERCITY_SPAWNS"
					and CI_SPAWNED_EVENTS["END_GAME"] then
						out.chaos("\t\tSpawning recurring event!: "..CI_RECURRING_EVENTS[i].key);
						CI_Event_3_Undercity_Spawns(CI_RECURRING_EVENTS[i]);
					elseif CI_RECURRING_EVENTS[i].key == "CHS_DOOM_TIDE"
					and CI_SPAWNED_EVENTS["END_GAME"] then
						CI_Event_3_Doom_Tide(CI_RECURRING_EVENTS[i]);
					end
				end
			end

			-- Check for event triggers
			for event_key, event in pairs(CI_EVENTS) do
				if not CI_SPAWNED_EVENTS[event_key]
				and event.required_stage == CI_DATA.CI_INVASION_STAGE then
					local turn_min = event.first_turn;
					local turn_max = event.last_turn;
					local chance = ((turn_number - turn_min) / (turn_max - turn_min)) * 100;

					out.chaos("Next Event: "..event_key);
					out.chaos("\tFirst Possible Turn: "..turn_min);
					out.chaos("\tLast Possible Turn: "..turn_max);
					out.chaos("\tCurrent Chance: "..chance.."%");

					if chance > 0 then
						if cm:model():random_percent(chance) then
							out.chaos("\t\tSuccess!");
							if event.required_stage == 1 then
								CI_Event_1_Intro(CI_EVENTS[event_key]);
							elseif event.required_stage == 2 then
								CI_Event_2_MidGame(CI_EVENTS[event_key]);
							elseif event.required_stage == 3 then
								CI_Event_3_EndGame(CI_EVENTS[event_key]);
							end
							local go_to_next_stage = true;
							-- If the invasion stage is 3 or higher then we use a different method to progress
							if CI_DATA.CI_INVASION_STAGE < 3 then
								-- We only progress to the next stage if all the events have been triggered
								for event_key, event_data in pairs(CI_EVENTS) do
									if event_data.required_stage == CI_DATA.CI_INVASION_STAGE
									and not CI_SPAWNED_EVENTS[event_key] then
										go_to_next_stage = false;
									end
								end
							else
								go_to_next_stage = false;
							end

							if go_to_next_stage == true then
								out.chaos("All events triggered. Progressing to next stage.");
								out.chaos("Last stage: "..CI_DATA.CI_INVASION_STAGE);
								CI_DATA.CI_INVASION_STAGE_START_TURN = turn_number;
								CI_DATA.CI_INVASION_STAGE = CI_DATA.CI_INVASION_STAGE + 1;
								out.chaos("Next stage: "..CI_DATA.CI_INVASION_STAGE);
							end
							break;
						else
							out.chaos("\t\tFailed!");
						end
					end
				end
			end
		end
	end
	out.dec_tab("chaos");
end

function CI_CharacterRazedSettlement(context)
	local faction = context:character():faction();
	if faction:is_quest_battle_faction() == true then
		return;
	end
	local culture = faction:culture();
	if CI_DATA.CI_INVASION_STAGE == 2
	or (CI_DATA.CI_INVASION_STAGE == 3
	and not CI_SPAWNED_EVENTS["END_GAME"]) then
		-- wh_main_chs_chaos includes Norsca
		if culture == "wh_main_chs_chaos"
		or culture == "wh_dlc03_bst_beastmen"
		or culture == "wh2_main_skv_skaven" then
			out.chaos("Mid game settlement razed");
			CI_DATA.CI_RAZED_REGIONS_STAGE_2 = CI_DATA.CI_RAZED_REGIONS_STAGE_2 + 1;
			out.chaos("Total settlements razed is now: "..CI_DATA.CI_RAZED_REGIONS_STAGE_2);
		end
	elseif CI_DATA.CI_INVASION_STAGE == 3
	and CI_SPAWNED_EVENTS["END_GAME"] then
		-- wh_main_chs_chaos includes Norsca
		if culture == "wh_main_chs_chaos"
		or culture == "wh_dlc03_bst_beastmen"
		or culture == "wh2_main_skv_skaven" then
			CI_DATA.CI_RAZED_REGIONS = CI_DATA.CI_RAZED_REGIONS + 1;
			out.chaos("Late game settlement razed");
			out.chaos("Total settlements razed is now: "..CI_DATA.CI_RAZED_REGIONS);
			if CI_DATA.CI_RAZED_REGIONS % 5 == 0 then
				out.chaos("Increasing beastment/skaven spawns");
				CI_DATA.CI_RAZED_SKAVEN_CITY_SPAWNS = CI_DATA.CI_RAZED_SKAVEN_CITY_SPAWNS + 1;
				CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS = CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS + 1;
				out.chaos("Total skaven city spawns is now: "..CI_DATA.CI_RAZED_SKAVEN_CITY_SPAWNS);
				out.chaos("Total beastmen forest spawns is now: "..CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS);
			end
			if CI_DATA.CI_RAZED_REGIONS % 10 == 0 then
				CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS = CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS + 1;
				out.chaos("Total Chaos wave spawns is now: "..CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS);
			end
			CI_invasion_effect_bundle_update();
		end
	end
end

function CI_CharacterConvalescedOrKilled(context)
	if CI_DATA.CI_INVASION_STAGE == 3 
	and CI_SPAWNED_EVENTS["END_GAME"] then
		local character = context:character();
		local faction = character:faction();

		if faction:name() == CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS.faction_key then
			if (character:character_subtype("chs_archaon") == true and character:is_faction_leader() == true) or
					character:character_subtype("chs_kholek_suneater") == true or
					character:character_subtype("chs_prince_sigvald") == true then
				local archaon, kholek, sigvald = CI_invasion_deaths();
				CI_invasion_effect_bundle_update();
				if archaon == 0 and kholek == 0 and sigvald == 0 then
					CI_Event_4_Victory(CI_EVENTS["VICTORY"]);
				end
			end
		end
	end
end

function CI_Event_1_Intro(event)
	out.chaos("CI_Event_1_Intro()");
	out.inc_tab("chaos");
	local human_factions = cm:get_human_factions();

	for i = 1, #human_factions do
		cm:show_message_event(
			human_factions[i],
			"event_feed_strings_text_wh_event_feed_string_scripted_event_chaos_invasion_early_primary_detail",
			"",
			"event_feed_strings_text_wh_event_feed_string_scripted_event_chaos_invasion_early_secondary_detail",
			true, 29
		);
		out.chaos("Showing Chaos Event : "..human_factions[i]);
	end

	CI_apply_chaos_corruption(event.chaos_effect);
	CI_SPAWNED_EVENTS[event.key] = true;
	out.dec_tab("chaos");
end

function CI_Event_2_MidGame(event)
	out.chaos("CI_Event_2_MidGame()");
	out.inc_tab("chaos");
	if event.key == "MID_GAME" then
		local main_chaos_invasion = CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS;
		local human_factions = cm:get_human_factions();

		for i = 1, #human_factions do
			cm:show_message_event_located(
				human_factions[i],
				"event_feed_strings_text_wh_event_feed_string_scripted_event_chaos_invasion_mid_primary_detail",
				"",
				"event_feed_strings_text_wh_event_feed_string_scripted_event_chaos_invasion_mid_secondary_detail",
				main_chaos_invasion.special_characters[3]["archaon"]["spawn_pos_center"].x,
				main_chaos_invasion.special_characters[3]["archaon"]["spawn_pos_center"].y,
				true, 30
			);
			out.chaos("Showing Chaos Event : "..human_factions[i]);
			cm:make_region_visible_in_shroud(human_factions[i], "wh_main_chaos_wastes");
		end

		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS, event);
		if _G.IsIDE == true then
			testFaction.subculture = function()
				return "wh_dlc03_sc_bst_beastmen";
			end;
		end
		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_BEASTMEN_ARMY_SPAWNS, event);
		if _G.IsIDE == true then
			testFaction.subculture = function()
				return "wh_main_sc_nor_norsca";
			end;
		end
		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_NORSCA_ARMY_SPAWNS, event);
		if _G.IsIDE == true then
			testFaction.subculture = function()
				return "wh2_main_sc_skv_skaven";
			end;
		end
		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_SKAVEN_LUSTRIA_ARMY_SPAWNS, event);
		-- Cylostra isn't chaos aligned but will have a greater impact if they spawn at the same time
		if _G.IsIDE == true then
			testFaction.subculture = function()
				return "wh2_dlc11_sc_cst_vampire_coast";
			end;
		end
		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_VAMPIRE_COAST_CYLOSTRA_ARMY_SPAWNS, event);
		if _G.IsIDE ~= true then
			CI_apply_chaos_corruption(event.chaos_effect);
			CI_personality_swap(2);
			cm:set_camera_position(518.37, 473.95, 10.83, 0.0, 11.30);
			out.dec_tab("chaos");
		end
	end
	CI_SPAWNED_EVENTS[event.key] = true;
end

function CI_Event_3_EndGame(event)
	out.chaos("CI_Event_3_EndGame()");
	out.inc_tab("chaos");
	if event.key == "END_GAME" then
		local main_chaos_invasion = CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS;
		local human_factions = cm:get_human_factions();
		for i = 1, #human_factions do
			cm:show_message_event_located(
				human_factions[i],
				"event_feed_strings_text_wh_event_feed_string_scripted_event_chaos_invasion_end_primary_detail",
				"",
				"event_feed_strings_text_wh_event_feed_string_scripted_event_chaos_invasion_end_secondary_detail",
				main_chaos_invasion.special_characters[3]["archaon"]["spawn_pos_center"].x,
				main_chaos_invasion.special_characters[3]["archaon"]["spawn_pos_center"].y,
				true, 31
			);
			out.chaos("Showing Chaos Event : "..human_factions[i]);
			cm:make_region_visible_in_shroud(human_factions[i], "wh_main_chaos_wastes");
		end

		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS, event);
		cm:complete_scripted_mission_objective("wh_main_short_victory", "archaon_spawned", true);
		cm:complete_scripted_mission_objective("wh_main_long_victory", "archaon_spawned", true);

		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_BEASTMEN_ARMY_SPAWNS, event);
		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_NORSCA_ARMY_SPAWNS, event);
		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_SKAVEN_LUSTRIA_ARMY_SPAWNS, event);
		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_LUSTRIA_VASHNARR_ARMY_SPAWNS, event);
		-- Noctilus isn't chaos aligned but will have a greater impact if they spawn at the same time
		CI_spawn_invasion_for_event(CI_EVENT_DATA.Invasions.CI_VAMPIRE_COAST_NOCTILUS_ARMY_SPAWNS, event);
		if _G.IsIDE ~= true then
			CI_apply_chaos_corruption(event.chaos_effect);
			CI_personality_swap(3);
		end
		CI_DATA.CI_RAZED_SKAVEN_CITY_SPAWNS = 3 + math.ceil(CI_DATA.CI_RAZED_REGIONS_STAGE_2 / 5);
		CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS = 4 + math.ceil(CI_DATA.CI_RAZED_REGIONS_STAGE_2 / 5);
		CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS = 2 + math.ceil(CI_DATA.CI_RAZED_REGIONS_STAGE_2 / 10);
		CI_invasion_effect_bundle_update();

		cm:register_instant_movie("Warhammer/chs_rises");
		cm:set_camera_position(518.37, 473.95, 10.83, 0.0, 11.30);

		cm:callback(function()
			CI_update_global_diplomacy(false);
		end,
		0.3);
	end
	CI_SPAWNED_EVENTS[event.key] = true;
	out.dec_tab("chaos");
end

function CI_Event_4_Victory(event)
	out.chaos("CI_Event_4_Victory()");
	out.inc_tab("chaos");
	CI_DATA.CI_INVASION_STAGE = 4;
	local human_factions = cm:get_human_factions();

	for i = 1, #human_factions do
		cm:show_message_event(
			human_factions[i],
			"event_feed_strings_text_wh_event_feed_string_scripted_event_chaos_invasion_defeated_primary_detail",
			"",
			"event_feed_strings_text_wh_event_feed_string_scripted_event_chaos_invasion_defeated_secondary_detail",
			true, 35
		);
		cm:remove_effect_bundle("wh2_main_bundle_chaos_invasion", human_factions[i]);
		out.chaos("Showing Chaos Event : "..human_factions[i]);
	end

	local region_list = cm:model():world():region_manager():region_list();

	for i = 0, region_list:num_items() - 1 do
		local current_region = region_list:item_at(i);
		local region_key = current_region:name();

		if current_region:is_province_capital() == true then
			cm:remove_effect_bundle_from_region("wh2_main_bundle_chaos_invasion_region", region_key);
		end
	end

	local chaos_faction = cm:model():world():faction_by_key(CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS.faction_key);
	local chaos_force_list = chaos_faction:military_force_list();

	for i = 0, chaos_force_list:num_items() - 1 do
		local force = chaos_force_list:item_at(i);

		if force:has_general() == true then
			local force_cqi = force:general_character():command_queue_index();
			cm:kill_character(force_cqi, true, true);
		end
	end

	cm:complete_scripted_mission_objective("wh_main_short_victory", "archaon_spawned", true);
	cm:complete_scripted_mission_objective("wh_main_long_victory", "archaon_spawned", true);

	CI_apply_chaos_corruption(event.chaos_effect);
	CI_personality_swap(4);

	cm:callback(function()
		CI_update_global_diplomacy(true);
	end,
	0.3);
	out.dec_tab("chaos");
end

function CI_Event_2_Undercity_Expansion(event)
	local invasion_data = CI_EVENT_DATA.Invasions.CI_UNDER_EMPIRE_SPAWNS;
	if invasion_data.enabled == false then
		return;
	end
	out.chaos("Expanding under empire");
	local dead_skaven_factions = {};
	local alive_skaven_factions = {};
	for index, faction_key in pairs(invasion_data.factions) do
		local faction = cm:get_faction(faction_key);
		-- Prioritise dead factions to get them back in the game
		if faction
		and not faction:is_null_interface()
		and faction:is_human() == false then
			if faction:is_dead() then
				table.insert(dead_skaven_factions, faction_key);
			else
				table.insert(alive_skaven_factions, faction_key);
			end
		end
	end
	if #alive_skaven_factions > 0 then
		for area_key, region_data in pairs(invasion_data.regions) do
			local rand_faction_index = cm:random_number(#alive_skaven_factions);
			local spawn_for_faction_key = alive_skaven_factions[rand_faction_index];
			if area_key == "lustria" then
				if CI_DATA.CI_INVASION_STAGE == 2 then
					spawn_for_faction_key = "wh2_dlc12_skv_clan_fester";
				else
					spawn_for_faction_key = "wh2_main_skv_clan_pestilens";
				end
			end
			local number_of_spawns = 0;
			if area_key == "old_world" then
				number_of_spawns = 2;
			else
				number_of_spawns = 1;
			end
			local valid_regions = {};
			for index, region_key in pairs(region_data) do
				local region = 	cm:get_region(region_key);
				if region:foreign_slot_managers():is_empty() == true then
					table.insert(valid_regions, region_key);
				end
			end
			if #valid_regions > number_of_spawns then
				for i = 1, number_of_spawns do
					local rand_region_index = cm:random_number(#valid_regions);
					local spawn_for_region_key = valid_regions[rand_region_index];
					local region = 	cm:get_region(spawn_for_region_key);
					local reg_cqi = region:cqi();
					local faction = cm:get_faction(spawn_for_faction_key);
					local skv_cqi = faction:command_queue_index();
					out.chaos("Spawning undercity for faction: "..faction:name().." in region: "..region:name());
					cm:add_foreign_slot_set_to_region_for_faction(skv_cqi, reg_cqi, "wh2_dlc12_slot_set_underempire");
					cm:make_region_visible_in_shroud(faction:name(), region:name());
				end
			end
		end
	end
end

function CI_Event_3_Undercity_Spawns(event)
	local invasion_data = CI_EVENT_DATA.Invasions.CI_UNDER_EMPIRE_SPAWNS;
	if invasion_data.enabled == false then
		return;
	end
	out.chaos("Starting undercity spawns");
	-- Upgrade war camps to spawn army
	local alive_skaven_factions = {};
	for index, faction_key in pairs(invasion_data.factions) do
		local faction = cm:get_faction(faction_key);
		-- Prioritise dead factions to get them back in the game
		if faction
		and not faction:is_null_interface()
		and faction:is_human() == false then
			table.insert(alive_skaven_factions, faction_key);
		end
	end
	local spawned_undercity_army = false;
	for index, faction_key in pairs(alive_skaven_factions) do
		local skv_faction = cm:get_faction(faction_key);
		local fsm_skv_faction = skv_faction:foreign_slot_managers();
		if fsm_skv_faction:num_items() > 0
		and not skv_faction:is_human() then
			local first_fsm_slots = skv_faction:foreign_slot_managers():item_at(0):slots();
			if first_fsm_slots:num_items() > 0 then
				local fslot = first_fsm_slots:item_at(0);
				out.chaos("Upgrading war camp for faction: "..skv_faction:name());
				cm:foreign_slot_instantly_upgrade_building(fslot, "wh2_dlc12_under_empire_annexation_war_camp_2");
				spawned_undercity_army = true;
			end
		end
	end
	if spawned_undercity_army == true then
		CI_DATA.CI_RAZED_SKAVEN_CITY_SPAWNS = CI_DATA.CI_RAZED_SKAVEN_CITY_SPAWNS - 1;
	end
end

function CI_Event_3_Forest_Spawns(event)
	local invasion_data = CI_EVENT_DATA.Invasions.CI_BEASTMEN_FOREST_SPAWNS;
	if CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS > 0 then
		out.chaos("Beastmen spawns are available");
		local x, y = CI_spawn_invasion(invasion_data, event.spawns, true);
		if x ~= -1
		and y ~= -1 then
			CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS = CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS - 1;
			-- Now we trigger the horde reemergeance event message
			local primary_detail = "event_feed_strings_text_wh_event_feed_string_scripted_event_beastmen_primary_detail";
			local secondary_detail = "event_feed_strings_text_wh_event_feed_string_scripted_event_beastmen_secondary_detail";
			local id = 102;

			local human_factions = cm:get_human_factions();
			for i = 1, #human_factions do
				local current_faction = cm:get_faction(human_factions[i]);
				local current_faction_culture = current_faction:culture();
				-- we don't show the Beastmen event for a Beastmen or Chaos player as the text doesn't fit
				if not ((current_faction_culture == "wh_dlc03_bst_beastmen" or current_faction_culture == "wh_main_chs_chaos") and subculture == "wh_dlc03_sc_bst_beastmen") then
					cm:show_message_event_located(
						human_factions[i],
						primary_detail,
						"",
						secondary_detail,
						x,
						y,
						true,
						id
					);
				end;
			end
		end
	end
end

function CI_Event_3_Doom_Tide(event)
	out.chaos("Checking doomtide event");
	out.chaos("There are: "..	CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS.." waves remaining.");
	local invasion = CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS;
	local spawnedNumberOfHordes = math.ceil(CI_EVENTS["END_GAME"].army_spawns * invasion.invasions["chaos_wastes"].army_spawn_multiplier) * CI_ARMY_SETTINGS[CI_DATA.CI_SETTING].multiplier;
	out.chaos("Event spawned: "..spawnedNumberOfHordes);
	local currentNumberOfHordes = cm:get_faction("wh_main_chs_chaos"):military_force_list():num_items() + cm:get_faction("wh_dlc03_bst_beastmen_chaos"):military_force_list():num_items();
	out.chaos("Current number of hordes is: "..currentNumberOfHordes);
	if CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS > 0
	and currentNumberOfHordes <= math.floor(spawnedNumberOfHordes * 0.85) then
		CI_spawn_invasion(invasion, event.spawns);
		local human_factions = cm:get_human_factions();			
		for i = 1, #human_factions do
			cm:show_message_event_located(
				human_factions[i],
				"event_feed_strings_text_wh_event_feed_string_scripted_event_chaos_invasion_wave_primary_detail",
				"",
				"event_feed_strings_text_wh_event_feed_string_scripted_event_chaos_invasion_wave_late_secondary_detail",
				775,
				605,
				true,
				32
			);
		end;

		CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS = CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS - 1;
	end
end

function CI_spawn_invasion_for_event(invasion_data, event)
	local human_factions = cm:get_human_factions();
	-- If any of the human factions are involved with the invasion(s)
	-- do not perform any invasion actions
	for i = 1, #human_factions do
		if human_factions[i] == invasion_data.faction_key then
			return;
		end
		for key, invasion_stage_data in pairs(invasion_data.invasions) do
			if invasion_stage_data.faction_key_override ~= nil
			and invasion_stage_data.faction_key_override == human_factions[i] then
				return;
			end
		end
	end
	if not _G.IsIDE then
		CI_spawn_unique_characters(invasion_data);
	end
	CI_spawn_invasion(invasion_data, event.army_spawns);
	CI_spawn_agents(invasion_data, event.agent_spawns);
	cm:callback(function()
		CI_update_invasion_diplomacy(invasion_data);
	end,
	0.2);
end

function CI_spawn_unique_characters(invasion_data)
	if invasion_data.special_characters == nil
	or invasion_data.special_characters[CI_DATA.CI_INVASION_STAGE] == nil then
		out.chaos("No special characters to spawn");
		return;
	end
	out.chaos("CI_spawn_unique_characters()");
	out.inc_tab("chaos");
	local characters_for_stage = invasion_data.special_characters[CI_DATA.CI_INVASION_STAGE];
	for key, characterData in pairs(characters_for_stage) do
		CI_spawn_character(characterData, invasion_data);
		out.chaos("Spawned: "..key);
	end
	out.dec_tab("chaos");
end

function CI_spawn_character(char_details, invasion_data)
	local invasion_key = "CI_"..char_details["id"];
	local spawn_pos = char_details["spawn_pos_center"];

	local x, y = cm:find_valid_spawn_location_for_character_from_position(invasion_data.faction_key, spawn_pos.x, spawn_pos.y, true);

	if x > -1 and y > -1 then
		local force = random_army_manager:generate_force(char_details["force_key"], 19, false);
		local chaos_invasion = invasion_manager:new_invasion(invasion_key, invasion_data.faction_key, force, {x, y});
		chaos_invasion:create_general(
			char_details["faction_leader"], char_details["agent_subtype"],
			char_details["forename"], "", char_details["family_name"], ""
		);
		chaos_invasion:set_general_immortal(char_details["immortal"]);
		chaos_invasion:add_character_experience(40, true);
		chaos_invasion:apply_effect(char_details["effect"], 0);

		if char_details["force_xp"] > 0 then
			chaos_invasion:add_unit_experience(char_details["force_xp"]);
		else
			local xp = CI_army_xp();
			if xp > 0 then
				chaos_invasion:add_unit_experience(xp);
			end
		end

		chaos_invasion:start_invasion(
		function(self)
			local force = self:get_force();
			local force_cqi = force:command_queue_index();
			cm:add_building_to_force(force_cqi, invasion_data.buildings[1]);
		end);
	end
end

function CI_spawn_invasion(invasion_data, num_armies, ignoreDifficultyMultiplier)
	local x = -1;
	local y = -1;
	if invasion_data.invasions then
		for invasion_key, invasion in pairs(invasion_data.invasions) do
			if invasion.enabled == true then
				local army_compositions = invasion.army_compositions[CI_DATA.CI_INVASION_STAGE];
				if army_compositions ~= nil then
					local position_key = invasion.key;
					local positions = {unpack(invasion.positions)};
					local pos_i = 1;
					out.chaos("Invasion Area: "..position_key);
					out.inc_tab("chaos");
					local spawn_faction_key = invasion_data.faction_key;
					if invasion.faction_key_override ~= nil then
						-- If the override faction is a table, get a random object from the list
						-- prioritising non-dead factions
						if type(invasion.faction_key_override) == "table" then
							local dead_factions = {};
							local alive_factions = {};
							for index, faction_key in pairs(invasion.faction_key_override) do
								local faction = cm:get_faction(faction_key);
								if not faction:is_null_interface()
								and not faction:is_human() then
									if faction:is_dead() then
										table.insert(dead_factions, faction_key);
									else
										table.insert(alive_factions, faction_key);
									end
								end
							end
							if #dead_factions == 0 then
								spawn_faction_key = GetRandomObjectFromList(alive_factions);
							else
								spawn_faction_key = GetRandomObjectFromList(dead_factions);
							end
						else
							spawn_faction_key = invasion.faction_key_override;
						end
					end
					local army_count = math.ceil(num_armies * invasion.army_spawn_multiplier);
					out.chaos("CI_spawn: "..spawn_faction_key.." ("..tostring(army_count)..")");
					local difficulty_multiplier = 1;
					if event == nil then
						difficulty_multiplier = CI_ARMY_SETTINGS[CI_DATA.CI_SETTING].multiplier;
					end
					if ignoreDifficultyMultiplier == true then
						difficulty_multiplier = 1;
					end
					local num_armies_mod = army_count * difficulty_multiplier;
					num_armies_mod = math.ceil(num_armies_mod);
					out.inc_tab("chaos");
					out.chaos("Army Count Modified: "..tostring(num_armies_mod).." ("..num_armies.." * "..difficulty_multiplier..")");
					local temp_pos = {};
					for i = 1, num_armies_mod do
						if not invasion.use_same_spawn_pos then
							temp_pos = positions[pos_i];
						end
						pos_i = pos_i + 1;

						if pos_i > #positions then
							pos_i = 1;
						end

						if invasion.use_random_spawn == true
						and (not invasion.use_same_spawn_pos or x == -1 or y == -1) then
							local rand_pos = cm:random_number(#positions);
							temp_pos = positions[rand_pos];
						end
						x, y = cm:find_valid_spawn_location_for_character_from_position(spawn_faction_key, temp_pos[1], temp_pos[2], true);

						if x > -1 and y > -1 then
							local turn_number = cm:model():turn_number();
							local invasion_key = "CI_spawn: "..spawn_faction_key.." "..position_key.."_T"..turn_number.."_"..core:get_unique_counter();
							local invasion_object = {};
							out.chaos("Invasion stage is: "..CI_DATA.CI_INVASION_STAGE)
							local force = "";
							local army_data = {};
							--if core:is_mod_loaded("zz_enhanced_rebellions") then
								army_data = CI_get_army_data(invasion_data, spawn_faction_key, army_compositions);
								force = army_data.ArmyString;
								invasion_object = invasion_manager:new_invasion(invasion_key, spawn_faction_key, force, {x, y});
								invasion_object:create_general(false, army_data.AgentData.AgentSubTypeKey, army_data.AgentData.ForeNameKey, "", army_data.AgentData.ClanNameKey, "");
							--[[else
								force = random_army_manager:generate_force(invasion_data.default_force_key, 19, false);
								invasion_object = invasion_manager:new_invasion(invasion_key, spawn_faction_key, force, {x, y});
							end--]]
							local character_levels = cm:random_number(invasion.max_character_xp_levels, invasion.min_character_xp_levels);
							invasion_object:add_character_experience(character_levels, true);
							invasion_object:apply_effect(invasion_data.effect_bundle, 0);
							local xp = CI_army_xp();
							if xp > 0 then
								invasion_object:add_unit_experience(xp);
							end

							invasion_object:start_invasion(
							function(self)
								if invasion_data.buildings ~= nil then
									local buildings_for_force = {};
									-- Grab army specific buildings or use invasion stage defaults
									if army_data ~= nil
									and army_data.Buildings ~= nil then
										buildings_for_force = army_data.Buildings;
									else
										buildings_for_force = invasion_data.buildings[CI_DATA.CI_INVASION_STAGE];
									end
									local force = self:get_force();
									local force_cqi = force:command_queue_index();
									cm:add_building_to_force(force_cqi, buildings_for_force);
								end
							end);
							out.chaos("Spawned "..spawn_faction_key.." Army "..i.." ("..position_key..") ("..tostring(x).." / "..tostring(y)..")");
						else
							out.chaos("FAILED "..spawn_faction_key.." Army Spawn "..i.." ("..tostring(temp_pos[1]).." / "..tostring(temp_pos[2])..")");
						end
					end
					if invasion.faction_key_override ~= nil then
						cm:callback(function()
							CI_declare_war(invasion_data, spawn_faction_key);
						end, 0.2);
					end
					out.dec_tab("chaos");
				end
			else
				out.chaos("Invasion: "..invasion_key.." is not enabled");
			end
		end
		out.dec_tab("chaos");
	end

	return x, y;
end

function GetRandomItemFromWeightedList(items, returnKey)
    local validItems = {};
    local sumOfWeight = 0;
    for key, data in pairs(items) do
        if data["Weighting"] ~= nil and data["Weighting"] > 0 then
            sumOfWeight = sumOfWeight + data["Weighting"];
            validItems[key] = data;
        end
    end

    local weightingSeed = Random(sumOfWeight, 0);
    local lastKey = "";
    local lastData = "";
    for key, data in pairs(validItems) do
        if weightingSeed < data["Weighting"]
         then
            if returnKey == true then
                return key;
            else
                return data;
            end
        end
        weightingSeed = weightingSeed - data["Weighting"];
        lastKey = key;
        lastData = data;
    end
    if returnKey == true then
        return lastKey;
    else
        return lastData;
    end
end

function GetRandomObjectFromList(objectList)
    local tempTable = {}
    for key, value in pairs(objectList) do
      tempTable[#tempTable + 1] = key; --Store keys in another table
    end
    local index = tempTable[Random(#tempTable)];
    return objectList[index];
end

function GetRandomObjectKeyFromList(objectList)
    local tempTable = {}
    for key, value in pairs(objectList) do
      tempTable[#tempTable + 1] = key; --Store keys in another table
    end
    local index = tempTable[Random(#tempTable)];
    return index;
end

function Random(limit, start)
    if not start then
        start = 1;
    end
    return cm:random_number(limit, start);
end

function CI_get_army_data(invasionData, armyFactionKey, armyArchetypes)
	--out.chaos("Using PoE generation");
	out.chaos("Getting faction: "..armyFactionKey);
	local armyFaction = cm:get_faction(armyFactionKey);
	local armySubculture = armyFaction:subculture();
	out.chaos("ArmySubculture: "..armySubculture);
	local armyString = "";
	local agentSubTypeKey = "";
	local buildings = nil;
	if string.match(armySubculture, "rogue")
	or armyFactionKey == "wh2_main_rogue_hung_warband"
	or armyFactionKey == "wh2_main_rogue_def_chs_vashnaar" then
		local force = GetRandomItemFromWeightedList(armyArchetypes);
		armyString = random_army_manager:generate_force(force.Key, 19, false);
		agentSubTypeKey = GetRandomItemFromWeightedList(force.AgentSubtypes, true);
		buildings = force.Buildings;
	else
		local armyArchetypeKey = "";
		local armyArchetypeResources = nil;
		while armyArchetypeResources == nil do
			out.chaos("Getting army archetypes key");
			armyArchetypeKey = GetRandomItemFromWeightedList(armyArchetypes, true);
			armyArchetypeResources =  invasionData.army_archetypes[armyArchetypeKey];
		end
		out.chaos("armyArchetypeKey: "..armyArchetypeKey);
		for key, value in pairs(armyArchetypeResources.AgentSubtypes) do
			if key == 1 then
				agentSubTypeKey = GetRandomObjectFromList(armyArchetypeResources.AgentSubtypes);
			else
				agentSubTypeKey = GetRandomObjectKeyFromList(armyArchetypeResources.AgentSubtypes);
			end
			break;
		end
		out.chaos("Selected general as: "..agentSubTypeKey);
		local encounterData = {
			ForceKey = "chaos_army_force",
			FactionKey = armyFactionKey,
			SubcultureKey = armySubculture,
			AgentSubTypeKey = agentSubTypeKey,
			MandatoryUnits = armyArchetypeResources.MandatoryUnits,
			UnitTags = armyArchetypeResources.UnitTags,
			ArmyArchetypeKey = armyArchetypeKey,
		};
		-- First we setup the new army force string
		local encounterArmySize = 19;
		local ramData = {
			ForceKey = encounterData.ForceKey,
			ArmySize = encounterArmySize,
			ForceData = encounterData,
		};
		out.chaos("Generating force with archetype: "..armyArchetypeKey);
		armyString = _G.AG:GenerateForceForTurn(ramData, encounterArmySize);
		out.chaos("Generated force");
		-- Finally, grab the buildings (if any)
		buildings = armyArchetypes[armyArchetypeKey].Buildings;
	end
	out.chaos("Got army string");
	local generatedName = {
		clan_name = "",
		forename = "",
	};
	generatedName = _G.CG:GetCharacterNameForSubculture(armyFaction, agentSubTypeKey);
	local agentSubTypeData = {
		AgentSubTypeKey = agentSubTypeKey,
		ClanNameKey = generatedName.forename,
		ForeNameKey = generatedName.clan_name,
	};

	return {
		ArmyString = armyString,
		AgentData = agentSubTypeData,
		Buildings = buildings,
	};
end;

function CI_spawn_agents(invasion_data, num_agents)
	if num_agents > 0
	and invasion_data.agents ~= nil then
		out.chaos("CI_spawn_agents("..tostring(num_agents)..")");
		out.inc_tab("chaos");
		local weighted_agents = weighted_list:new();
		local positions = {unpack(invasion_data.agents.positions)};

		for i = 1, #invasion_data.agents.agent_types do
			local agent = invasion_data.agents.agent_types[i];
			weighted_agents:add_item(agent, agent.weight);
		end

		for i = 1, num_agents do
			local selected_agent = weighted_agents:weighted_select();
			local rand_pos = cm:random_number(#positions);
			local temp_pos = positions[rand_pos];
			local x, y = cm:find_valid_spawn_location_for_character_from_position(invasion_data.faction_key, temp_pos[1], temp_pos[2], true);

			if x > -1 and y > -1 then
				cm:create_agent(
					invasion_data.faction_key,
					selected_agent.agent,
					selected_agent.subtype,
					x, y,
					false,
					function(cqi)
						cm:add_agent_experience("character_cqi:"..cqi, 10, true);
					end
				);
				out.chaos("Spawned Chaos Agent "..i.." ("..tostring(x).." / "..tostring(y)..")");
				table.remove(positions, rand_pos);
			else
				out.chaos("FAILED Chaos Agent Spawn "..i.." ("..tostring(temp_pos[1]).." / "..tostring(temp_pos[2])..")");
			end
		end
	end
	out.dec_tab("chaos");
end

function CI_apply_chaos_corruption(new_effect)
	if new_effect == "" and CI_DATA.CI_LAST_EFFECT == "" then
		return;
	end
	out.chaos("CI_apply_chaos_corruption()");
	out.inc_tab("chaos");

	local faction_effect_bundle = "wh_main_bundle_faction_chaos_"..new_effect;
	local region_effect_bundle = "wh_main_bundle_region_chaos_"..new_effect;
	local remove_faction_effect_bundle = "";
	local remove_region_effect_bundle = "";
	local last_effect = CI_DATA.CI_LAST_EFFECT;

	if last_effect ~= "" then
		remove_faction_effect_bundle = "wh_main_bundle_faction_chaos_"..last_effect;
		remove_region_effect_bundle = "wh_main_bundle_region_chaos_"..last_effect;
		out.chaos("Old Effects:");
		out.chaos("\tFaction: "..remove_faction_effect_bundle);
		out.chaos("\tRegion: "..remove_region_effect_bundle);
	end
	CI_DATA.CI_LAST_EFFECT = new_effect;

	if new_effect ~= "" then
		out.chaos("New Effects:");
		out.chaos("\tFaction: "..faction_effect_bundle);
		out.chaos("\tRegion: "..region_effect_bundle);
	end

	local faction_list = cm:model():world():faction_list();

	for i = 0, faction_list:num_items() - 1 do
		local current_faction = faction_list:item_at(i);

		if current_faction:is_human() == true then
			local faction_key = current_faction:name();

			if current_faction:state_religion() == "wh_main_religion_chaos" then
				if last_effect ~= "" then
					cm:remove_effect_bundle(remove_faction_effect_bundle.."_good", faction_key);
				end
				if new_effect ~= "" then
					cm:apply_effect_bundle(faction_effect_bundle.."_good", faction_key, 0);
				end
			else
				if last_effect ~= "" then
					cm:remove_effect_bundle(remove_faction_effect_bundle, faction_key);
				end
				if new_effect ~= "" then
					cm:apply_effect_bundle(faction_effect_bundle, faction_key, 0);
				end
			end
		end
	end

	local region_list = cm:model():world():region_manager():region_list();

	for i = 0, region_list:num_items() - 1 do
		local current_region = region_list:item_at(i);
		local region_key = current_region:name();

		if current_region:is_province_capital() == true then
			if last_effect ~= "" then
				cm:remove_effect_bundle_from_region(remove_region_effect_bundle, region_key);
			end
			if new_effect ~= "" then
				cm:apply_effect_bundle_to_region(region_effect_bundle, region_key, 0);
			end
		end
	end
	out.dec_tab("chaos");
end

function CI_personality_swap(override)
	out.chaos("CI_personality_swap("..tostring(override)..")");
	local round_override = 0;

	if override == 2 then
		round_override = 30;
	elseif override == 3 then
		round_override = 100;
	elseif override == 4 then
		round_override = 150;
	end

	local faction_list = cm:model():world():faction_list();

	local skip_norsca = false;

	if cm:get_faction("wh_dlc03_bst_beastmen"):is_human() == true and cm:is_multiplayer() == false then
		skip_norsca = true;
	end

	for i = 0, faction_list:num_items() - 1 do
		local faction = faction_list:item_at(i);

		if faction:is_human() == false then
			if skip_norsca == true and faction:subculture() == "wh_main_sc_nor_norsca" then
				break;
			end

			local faction_name = faction:name();

			if override then
				cm:cai_force_personality_change_with_override_round_number(faction_name, round_override);
			else
				cm:cai_force_personality_change(faction_name);
			end
		end
	end

	if override == 3 then
		local difficulty = ci_get_difficulty();
		local use_hard_personalities = false;
		local append = "allied";

		if (difficulty == 4 or difficulty == 5) and cm:is_multiplayer() == false then
			use_hard_personalities = true;
			append = "hard_allied";
		end

		local empire_personalities = {
			"wh_empire_default_allied",
			"wh_empire_subordinate_allied",
			"wh_empire_variant1_allied"
		};
		local empire_personalities_hard = {
			"wh_empire_default_hard_allied",
			"wh_empire_subordinate_hard_allied",
			"wh_empire_variant1_hard_allied"
		};
		local dwarfs_personalities = {
			"wh_dwarfs_default_allied",
			"wh_dwarfs_subordinate_allied",
			"wh_dwarfs_variant1_allied"
		};
		local dwarfs_personalities_hard = {
			"wh_dwarfs_default_hard_allied",
			"wh_dwarfs_subordinate_hard_allied",
			"wh_dwarfs_variant1_hard_allied"
		};
		local high_elves_personalities = {
			"wh2_highelf_allied",
			"wh2_highelf_defensive_allied",
			"wh2_highelf_internally_hostile_defensive_allied"
		};
		local high_elves_personalities_hard = {
			"wh2_highelf_hard_allied",
			"wh2_highelf_defensive_hard_allied",
			"wh2_highelf_internally_hostile_defensive_less_diplomatic_hard_allied"
		};
		local lizardmen_personalities = {
			"wh2_lizardmen_allied",
			"wh2_passive_straightforward_allied"
		};
		local lizardmen_personalities_hard = {
			"wh2_lizardmen_hard_allied",
			"wh2_passive_straightforward_hard_allied"
		};

		local faction_list = cm:model():world():faction_list();

		for i = 0, faction_list:num_items() - 1 do
			local faction = faction_list:item_at(i);
			local faction_name = faction:name();
			local faction_culture = faction:culture();

			if faction:is_human() == false then
				if faction_culture == "wh_main_emp_empire" or faction_culture == "wh_main_brt_bretonnia" then
					if faction_name == "wh_main_emp_empire" or faction_name == "wh_main_brt_bretonnia" then
						cm:force_change_cai_faction_personality(faction_name, "wh_empire_subjugator_"..append);
					elseif faction:subculture() == "wh_main_sc_teb_teb" or faction:subculture() == "wh_main_sc_ksl_kislev" then
						cm:force_change_cai_faction_personality(faction_name, "wh_teb_default_"..append);
					elseif use_hard_personalities == true then
						cm:force_change_cai_faction_personality(faction_name, empire_personalities_hard[cm:random_number(#empire_personalities_hard)]);
					else
						cm:force_change_cai_faction_personality(faction_name, empire_personalities[cm:random_number(#empire_personalities)]);
					end
				elseif faction_culture == "wh_main_dwf_dwarfs" then
					if faction_name == "wh_main_dwf_dwarfs" then
						cm:force_change_cai_faction_personality(faction_name, "wh_dwarfs_subjugator_"..append);
					elseif use_hard_personalities == true then
						cm:force_change_cai_faction_personality(faction_name, dwarfs_personalities_hard[cm:random_number(#dwarfs_personalities_hard)]);
					else
						cm:force_change_cai_faction_personality(faction_name, dwarfs_personalities[cm:random_number(#dwarfs_personalities)]);
					end
				elseif faction_culture == "wh2_main_hef_high_elves" then
					if faction_name == "wh2_main_hef_eataine" or faction_name == "wh2_main_hef_order_of_loremasters" then
						cm:force_change_cai_faction_personality(faction_name, "wh2_highelf_major_"..append);
					elseif use_hard_personalities == true then
						cm:force_change_cai_faction_personality(faction_name, high_elves_personalities_hard[cm:random_number(#high_elves_personalities_hard)]);
					else
						cm:force_change_cai_faction_personality(faction_name, high_elves_personalities[cm:random_number(#high_elves_personalities)]);
					end
				elseif faction_culture == "wh2_main_lzd_lizardmen" then
					if faction_name == "wh2_main_lzd_hexoatl" or faction_name == "wh2_main_lzd_last_defenders" then
						cm:force_change_cai_faction_personality(faction_name, "wh2_lizardmen_major_"..append);
					elseif use_hard_personalities == true then
						cm:force_change_cai_faction_personality(faction_name, lizardmen_personalities_hard[cm:random_number(#lizardmen_personalities_hard)]);
					else
						cm:force_change_cai_faction_personality(faction_name, lizardmen_personalities[cm:random_number(#lizardmen_personalities)]);
					end
				end
			end
		end
	end
end

function CI_invasion_deaths()
	local chaos_faction = cm:model():world():faction_by_key(CI_EVENT_DATA.Invasions.CI_CHAOS_ARMY_SPAWNS.faction_key);
	local archaon = 0;
	local kholek = 0;
	local sigvald = 0;
	local char_list = chaos_faction:character_list();

	for i = 0, char_list:num_items() - 1 do
		local current_char = char_list:item_at(i);

		if current_char:character_subtype("chs_archaon") or current_char:character_subtype("chs_kholek_suneater") or current_char:character_subtype("chs_prince_sigvald") then
			if current_char:has_military_force() == true then
				if current_char:is_wounded() == false then
					if current_char:character_subtype("chs_archaon") == true and current_char:is_faction_leader() == true then
						archaon = 1;
					elseif current_char:character_subtype("chs_kholek_suneater") == true  then
						kholek = 1;
					elseif current_char:character_subtype("chs_prince_sigvald") == true  then
						sigvald = 1;
					end
				end
			end
		end
	end
	return archaon, kholek, sigvald;
end

function CI_invasion_effect_bundle_update()
	local chaos_corruption = 1 + (CI_DATA.CI_RAZED_REGIONS / 10);
	chaos_corruption = math.floor(chaos_corruption);

	local effect_bundle_faction = cm:create_new_custom_effect_bundle("wh2_main_bundle_chaos_invasion");
	effect_bundle_faction:add_effect("wh2_main_dummy_chaos_regions_razed", "faction_to_faction_own_unseen", CI_DATA.CI_RAZED_REGIONS);
	effect_bundle_faction:add_effect("wh_main_effect_religion_conversion_chaos_events_bad_dummy", "faction_to_province_own", chaos_corruption);
	effect_bundle_faction:set_duration(0);

	local archaon, kholek, sigvald = CI_invasion_deaths();

	if archaon == 1 then
		effect_bundle_faction:add_effect("wh2_main_dummy_chaos_archaon_alive", "faction_to_faction_own_unseen", 1);
	else
		effect_bundle_faction:add_effect("wh2_main_dummy_chaos_archaon_dead", "faction_to_faction_own_unseen", 1);
	end
	if kholek == 1 then
		effect_bundle_faction:add_effect("wh2_main_dummy_chaos_kholek_alive", "faction_to_faction_own_unseen", 1);
	else
		effect_bundle_faction:add_effect("wh2_main_dummy_chaos_kholek_dead", "faction_to_faction_own_unseen", 1);
	end
	if sigvald == 1 then
		effect_bundle_faction:add_effect("wh2_main_dummy_chaos_sigvald_alive", "faction_to_faction_own_unseen", 1);
	else
		effect_bundle_faction:add_effect("wh2_main_dummy_chaos_sigvald_dead", "faction_to_faction_own_unseen", 1);
	end

	local effect_bundle_region = cm:create_new_custom_effect_bundle("wh2_main_bundle_chaos_invasion_region");
	effect_bundle_region:add_effect("wh_main_effect_religion_conversion_chaos_events_bad", "region_to_province_own", chaos_corruption);
	effect_bundle_region:set_duration(0);

	local human_factions = cm:get_human_factions();

	for i = 1, #human_factions do
		local faction = cm:model():world():faction_by_key(human_factions[i]);
		cm:remove_effect_bundle("wh2_main_bundle_chaos_invasion", human_factions[i]);
		cm:apply_custom_effect_bundle_to_faction(effect_bundle_faction, faction);
	end

	local region_list = cm:model():world():region_manager():region_list();

	for i = 0, region_list:num_items() - 1 do
		local current_region = region_list:item_at(i);
		local region_key = current_region:name();

		if current_region:is_province_capital() == true then
			cm:remove_effect_bundle_from_region("wh2_main_bundle_chaos_invasion_region", region_key);
			cm:apply_custom_effect_bundle_to_region(effect_bundle_region, current_region);
		end
	end
end

function CI_update_global_diplomacy(diplomacyValue)
	local diplomacy = CI_EVENT_DATA.Diplomacy;
	for chaos_culture, value in pairs(diplomacy.CI_Manual_diplomacy_changes.ForcesOfChaos) do
		for order_culture, value in pairs(diplomacy.CI_Manual_diplomacy_changes.ForcesOfOrder) do
			cm:callback(function()
				cm:force_diplomacy("culture:"..chaos_culture, "culture:"..order_culture, "peace", false, false, true);
			end, 
			0.1);
		end
		for unaligned_culture, value in pairs(diplomacy.CI_Manual_diplomacy_changes.Unaligned) do
			cm:callback(function()
				cm:force_diplomacy("culture:"..chaos_culture, "culture:"..unaligned_culture, "peace", false, false, true);
			end, 
			0.1);
		end
	end
	-- Bring norscans into the fight in the old world
	for index, norscan_faction_key in pairs(diplomacy.CI_NORSCAN_FACTIONS) do
		for index2, enemy_of_chaos in pairs(diplomacy.CI_Manual_diplomacy_changes.EnemiesOfChaos) do
			local faction = cm:get_faction(enemy_of_chaos);
			if faction
			and faction:is_null_interface() == false
			and faction:is_dead() == false then
				--[[cm:callback(function()
					cm:force_alliance(invasion_spawn_data.faction_key, norscan_faction_key, true);
					cm:force_diplomacy("faction:"..invasion_spawn_data.faction_key, "faction:"..faction_key, "war,break vassal,break alliance,break client state", false, false, true);
				end, 
				0.2);--]]
				cm:callback(function()
					cm:force_declare_war(norscan_faction_key, enemy_of_chaos, false, false);
				end, 
				0.3);
			end
		end
	end
end

function CI_update_invasion_diplomacy(invasion_spawn_data)
	-- Setup alliances (These used to be vassals but I'm guessing that bugged the AI out a bit)
	if invasion_spawn_data.alliance_factions ~= nil then
		CI_setup_alliances(invasion_spawn_data);
	end
	-- Then declare war, alliance allies will be dragged into the war
	CI_declare_war(invasion_spawn_data);
end

function CI_setup_alliances(invasion_spawn_data)
	for faction_key, invasion_stage in pairs(invasion_spawn_data.alliance_factions) do
		local faction = cm:get_faction(faction_key);
		if faction:is_null_interface() == false
		and faction:is_dead() == false
		and not faction:is_human()
		and CI_DATA.CI_INVASION_STAGE >= invasion_stage
		and invasion_spawn_data.faction_key ~= faction_key then
			cm:callback(function()
				out.chaos("Forcing alliance between: "..invasion_spawn_data.faction_key.." and "..faction_key);
				cm:force_alliance(invasion_spawn_data.faction_key, faction_key, true);
				cm:force_diplomacy("faction:"..invasion_spawn_data.faction_key, "faction:"..faction_key, "war,break vassal,break alliance,break client state", false, false, true);
			end, 0.5);
		end
	end
end

function CI_declare_war(invasion_spawn_data, faction_key_override)
	local warring_faction = invasion_spawn_data.faction_key;
	if faction_key_override ~= nil then
		warring_faction = faction_key_override;
	end
	cm:disable_event_feed_events(true, "wh_event_category_diplomacy", "", "");
	local faction_list = cm:model():world():faction_list();
	for i = 0, faction_list:num_items() - 1 do
		local faction = faction_list:item_at(i);
		local faction_key = faction:name();

		if faction:is_null_interface() == false
		and faction:is_dead() == false then
			cm:callback(function()
				local declared_war = false;
				if invasion_spawn_data.included_war_declaration == nil
				and invasion_spawn_data.excluded_war_declaration == nil then
					cm:force_declare_war(warring_faction, faction_key, true, false);
					declared_war = true;
				elseif invasion_spawn_data.included_war_declaration ~= nil
				and (invasion_spawn_data.included_war_declaration[faction:subculture()] ~= nil
				or invasion_spawn_data.included_war_declaration[faction:name()] ~= nil) then
					cm:force_declare_war(warring_faction, faction_key, true, false);
					declared_war = true;
				elseif invasion_spawn_data.included_war_declaration == nil
				and ((invasion_spawn_data.excluded_war_declaration[faction:subculture()] == nil
				and invasion_spawn_data.excluded_war_declaration[faction:name()] == nil)
				or (invasion_spawn_data.excluded_war_declaration[faction:subculture()] ~= nil 
				and CI_DATA.CI_INVASION_STAGE > invasion_spawn_data.excluded_war_declaration[faction:subculture()]
				and invasion_spawn_data.excluded_war_declaration[faction:subculture()] ~= -1)
				or (invasion_spawn_data.excluded_war_declaration[faction:name()] ~= nil
				and CI_DATA.CI_INVASION_STAGE > invasion_spawn_data.excluded_war_declaration[faction:name()]
				and invasion_spawn_data.excluded_war_declaration[faction:name()] ~= -1))
				-- If the human player is one of the excluded factions we still want them to declare war
				-- unless they're Skaven
				or (faction:is_human() and invasion_spawn_data.included_war_declaration == nil) then
					cm:force_declare_war(warring_faction, faction_key, true, false);
					declared_war = true;
				end
				if declared_war == true
				or warring_faction == "wh_main_chs_chaos"
				or warring_faction == "wh_dlc03_bst_beastmen_chaos" then
					cm:force_diplomacy("faction:"..warring_faction, "faction:"..faction_key, "peace", false, false, true);
				end
			end, 0.2);
		end
	end
	cm:callback(function()
		cm:disable_event_feed_events(false, "wh_event_category_diplomacy", "", "");
	end, 0.3);
end

function CI_setup_armies()
	random_army_manager:new_force("CI_archaon");
	random_army_manager:new_force("CI_sigvald");
	random_army_manager:new_force("CI_kholek");
	random_army_manager:new_force("CI_sarthorael");
	random_army_manager:new_force("CI_chaos");
	random_army_manager:new_force("CI_norsca");
	random_army_manager:new_force("CI_beastmen");
	random_army_manager:new_force("CI_skaven");
	random_army_manager:new_force("CI_coast");
	random_army_manager:new_force("CI_vashnarr_def");
	random_army_manager:new_force("CI_vashnarr_chs");
	random_army_manager:new_force("CI_mung");

	-- ARCHAON
	random_army_manager:add_mandatory_unit("CI_archaon", "wh_pro04_chs_cav_chaos_knights_ror_0", 1);
	random_army_manager:add_mandatory_unit("CI_archaon", "wh_main_chs_cav_chaos_knights_0", 1);
	random_army_manager:add_mandatory_unit("CI_archaon", "wh_main_chs_cav_chaos_knights_1", 2);
	random_army_manager:add_mandatory_unit("CI_archaon", "wh_pro04_chs_art_hellcannon_ror_0", 1);
	random_army_manager:add_mandatory_unit("CI_archaon", "wh_main_chs_art_hellcannon", 1);
	random_army_manager:add_mandatory_unit("CI_archaon", "wh_dlc06_chs_inf_aspiring_champions_0", 2);
	random_army_manager:add_mandatory_unit("CI_archaon", "wh_main_chs_inf_chosen_0", 4);
	random_army_manager:add_mandatory_unit("CI_archaon", "wh_main_chs_inf_chosen_1", 4);
	random_army_manager:add_mandatory_unit("CI_archaon", "wh_dlc01_chs_inf_chosen_2", 2);
	random_army_manager:add_mandatory_unit("CI_archaon", "wh_main_chs_mon_giant", 1);
	random_army_manager:add_unit("CI_archaon", "wh_main_chs_inf_chaos_warriors_0", 1);
	
	-- SIGVALD
	random_army_manager:add_mandatory_unit("CI_sigvald", "wh_pro04_chs_inf_chaos_warriors_ror_0", 1);
	random_army_manager:add_mandatory_unit("CI_sigvald", "wh_main_chs_cav_chaos_knights_0", 2);
	random_army_manager:add_mandatory_unit("CI_sigvald", "wh_main_chs_art_hellcannon", 2);
	random_army_manager:add_mandatory_unit("CI_sigvald", "wh_dlc06_chs_cav_marauder_horsemasters_0", 2);
	random_army_manager:add_mandatory_unit("CI_sigvald", "wh_main_chs_inf_chaos_marauders_1", 2);
	random_army_manager:add_mandatory_unit("CI_sigvald", "wh_main_chs_inf_chaos_marauders_0", 3);
	random_army_manager:add_mandatory_unit("CI_sigvald", "wh_dlc06_chs_inf_aspiring_champions_0", 2);
	random_army_manager:add_mandatory_unit("CI_sigvald", "wh_main_chs_inf_chaos_warriors_0", 3);
	random_army_manager:add_mandatory_unit("CI_sigvald", "wh_main_chs_inf_chaos_warriors_1", 2);
	random_army_manager:add_unit("CI_sigvald", "wh_main_chs_inf_chaos_warriors_0", 1);
	
	-- KHOLEK
	random_army_manager:add_mandatory_unit("CI_kholek", "wh_pro04_chs_mon_dragon_ogre_ror_0", 1);
	random_army_manager:add_mandatory_unit("CI_kholek", "wh_dlc01_chs_mon_dragon_ogre_shaggoth", 4);
	random_army_manager:add_mandatory_unit("CI_kholek", "wh_dlc01_chs_mon_dragon_ogre", 6);
	random_army_manager:add_mandatory_unit("CI_kholek", "wh_main_chs_art_hellcannon", 2);
	random_army_manager:add_mandatory_unit("CI_kholek", "wh_main_chs_inf_chaos_warriors_0", 3);
	random_army_manager:add_mandatory_unit("CI_kholek", "wh_main_chs_inf_chaos_warriors_1", 3);
	random_army_manager:add_unit("CI_kholek", "wh_main_chs_inf_chaos_warriors_0", 1);
	
	-- SARTHORAEL
	random_army_manager:add_mandatory_unit("CI_sarthorael", "wh_pro04_chs_inf_forsaken_ror_0", 1);
	random_army_manager:add_mandatory_unit("CI_sarthorael", "wh_pro04_chs_mon_chaos_spawn_ror_0", 1);
	random_army_manager:add_mandatory_unit("CI_sarthorael", "wh_main_chs_art_hellcannon", 2);
	random_army_manager:add_mandatory_unit("CI_sarthorael", "wh_dlc01_chs_inf_forsaken_0", 6);
	random_army_manager:add_mandatory_unit("CI_sarthorael", "wh_main_chs_mon_trolls", 2);
	random_army_manager:add_mandatory_unit("CI_sarthorael", "wh_dlc01_chs_mon_trolls_1", 1);
	random_army_manager:add_mandatory_unit("CI_sarthorael", "wh_main_chs_mon_chaos_spawn", 2);
	random_army_manager:add_mandatory_unit("CI_sarthorael", "wh_main_chs_mon_giant", 2);
	random_army_manager:add_mandatory_unit("CI_sarthorael", "wh_main_chs_mon_chaos_warhounds_1", 2);
	random_army_manager:add_unit("CI_sarthorael", "wh_main_chs_inf_chaos_warriors_0", 1);
	
	-- EXTRA CHAOS
	random_army_manager:add_mandatory_unit("CI_chaos", "wh_main_chs_art_hellcannon", 1);
	random_army_manager:add_mandatory_unit("CI_chaos", "wh_main_chs_cav_chaos_knights_0", 2);
	random_army_manager:add_mandatory_unit("CI_chaos", "wh_dlc06_chs_inf_aspiring_champions_0", 1);
	random_army_manager:add_mandatory_unit("CI_chaos", "wh_main_chs_inf_chaos_warriors_0", 2);
	random_army_manager:add_mandatory_unit("CI_chaos", "wh_main_chs_inf_chaos_marauders_0", 2);
	random_army_manager:add_unit("CI_chaos", "wh_main_chs_inf_chosen_0", 1);
	random_army_manager:add_unit("CI_chaos", "wh_main_chs_inf_chosen_1", 1);
	random_army_manager:add_unit("CI_chaos", "wh_main_chs_inf_chaos_warriors_0", 2);
	random_army_manager:add_unit("CI_chaos", "wh_main_chs_inf_chaos_warriors_1", 2);
	random_army_manager:add_unit("CI_chaos", "wh_main_chs_inf_chaos_marauders_1", 2);
	random_army_manager:add_unit("CI_chaos", "wh_main_chs_inf_chaos_marauders_0", 2);
	random_army_manager:add_unit("CI_chaos", "wh_main_chs_mon_giant", 1);
	random_army_manager:add_unit("CI_chaos", "wh_main_chs_mon_chaos_spawn", 1);
	random_army_manager:add_unit("CI_chaos", "wh_main_chs_mon_trolls", 1);
	random_army_manager:add_unit("CI_chaos", "wh_main_chs_mon_chaos_warhounds_0", 1);

	-- NORSCA
	random_army_manager:add_mandatory_unit("CI_norsca", "wh_dlc08_nor_inf_marauder_champions_0", 2);
	random_army_manager:add_mandatory_unit("CI_norsca", "wh_main_nor_inf_chaos_marauders_0", 6);
	random_army_manager:add_mandatory_unit("CI_norsca", "wh_dlc08_nor_inf_marauder_spearman_0", 4);
	random_army_manager:add_mandatory_unit("CI_norsca", "wh_dlc08_nor_inf_marauder_hunters_0", 2);
	random_army_manager:add_mandatory_unit("CI_norsca", "wh_dlc08_nor_mon_war_mammoth_0", 2);
	random_army_manager:add_unit("CI_norsca", "wh_dlc08_nor_mon_skinwolves_0", 1);
	random_army_manager:add_unit("CI_norsca", "wh_main_nor_mon_chaos_trolls", 1);

	-- BEASTMEN
	random_army_manager:add_mandatory_unit("CI_beastmen", "wh_dlc03_bst_inf_bestigor_herd_0", 4);
	random_army_manager:add_mandatory_unit("CI_beastmen", "wh_dlc03_bst_inf_minotaurs_2", 2);
	random_army_manager:add_mandatory_unit("CI_beastmen", "wh_dlc03_bst_inf_minotaurs_1", 2);
	random_army_manager:add_mandatory_unit("CI_beastmen", "wh_dlc03_bst_inf_cygor_0", 2);
	random_army_manager:add_mandatory_unit("CI_beastmen", "wh_dlc03_bst_mon_giant_0", 2);
	random_army_manager:add_mandatory_unit("CI_beastmen", "wh_dlc03_bst_cav_razorgor_chariot_0", 2);
	random_army_manager:add_mandatory_unit("CI_beastmen", "wh_dlc03_bst_inf_ungor_raiders_0", 2);
	random_army_manager:add_unit("CI_beastmen", "wh_dlc03_bst_inf_gor_herd_1", 1);

	-- Skaven (Pestilens)
	random_army_manager:add_mandatory_unit("CI_skaven", "wh2_main_skv_inf_plague_monks", 6);
	random_army_manager:add_mandatory_unit("CI_skaven", "wh2_main_skv_inf_plague_monk_censer_bearer", 3);
	random_army_manager:add_mandatory_unit("CI_skaven", "wh2_main_skv_art_plagueclaw_catapult", 1);
	random_army_manager:add_mandatory_unit("CI_skaven", "wh2_main_skv_inf_clanrats_1", 2);
	random_army_manager:add_mandatory_unit("CI_skaven", "wh2_main_skv_inf_skavenslave_slingers_0", 2);
	random_army_manager:add_unit("CI_skaven", "wh_dlc03_bst_inf_gor_herd_1", 1);

	-- Vampire Coast
	random_army_manager:new_force("CI_coast");
	random_army_manager:add_mandatory_unit("CI_coast", "wh2_dlc11_cst_inf_zombie_deckhands_mob_1", 4);
	random_army_manager:add_mandatory_unit("CI_coast", "wh2_dlc11_cst_mon_animated_hulks_0", 2);
	random_army_manager:add_mandatory_unit("CI_coast", "wh2_dlc11_cst_inf_depth_guard_0", 3);
	random_army_manager:add_mandatory_unit("CI_coast", "wh2_dlc11_cst_inf_depth_guard_1", 2);
	random_army_manager:add_mandatory_unit("CI_coast", "wh2_dlc11_cst_mon_mournguls_0", 2);
	random_army_manager:add_mandatory_unit("CI_coast", "wh2_dlc11_cst_mon_rotting_leviathan_0", 1);
	random_army_manager:add_mandatory_unit("CI_coast", "wh2_dlc11_cst_art_carronade", 2);
	random_army_manager:add_mandatory_unit("CI_coast", "wh2_dlc11_cst_art_mortar", 2);
	random_army_manager:add_unit("CI_coast", "wh2_dlc11_cst_inf_zombie_gunnery_mob_1", 1);

	-- Vashnarr
	random_army_manager:new_force("CI_vashnarr_def");
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh2_main_def_inf_bleakswords_0", 2);
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh2_main_def_inf_dreadspears_0", 2);
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh2_main_def_inf_darkshards_1", 3);
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh2_main_def_inf_shades_2", 2);
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh_main_chs_cav_chaos_knights_0", 1);
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh2_main_def_cav_cold_one_knights_1", 1);
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh_main_chs_mon_chaos_spawn", 2);
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh_main_chs_inf_chosen_0", 1);
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh_dlc01_chs_inf_chaos_warriors_2", 2);
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh2_dlc14_def_cav_scourgerunner_chariot_0", 1);	
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh2_dlc14_def_veh_bloodwrack_shrine_0", 1);	
	random_army_manager:add_mandatory_unit("CI_vashnarr_def", "wh2_main_def_mon_black_dragon", 1);
	random_army_manager:add_unit("CI_vashnarr_def", "wh2_main_def_inf_bleakswords_0", 1);

	random_army_manager:new_force("CI_vashnarr_chs");
	random_army_manager:add_mandatory_unit("CI_vashnarr_chs", "wh_dlc01_chs_mon_dragon_ogre_shaggoth", 1);
	random_army_manager:add_mandatory_unit("CI_vashnarr_chs", "wh_dlc01_chs_mon_dragon_ogre", 2);
	random_army_manager:add_mandatory_unit("CI_vashnarr_chs", "wh_main_chs_cav_chaos_knights_1", 1);
	random_army_manager:add_mandatory_unit("CI_vashnarr_chs", "wh_dlc01_chs_inf_chosen_2", 1);
	random_army_manager:add_mandatory_unit("CI_vashnarr_chs", "wh_main_chs_inf_chosen_1", 2);
	random_army_manager:add_mandatory_unit("CI_vashnarr_chs", "wh_main_chs_art_hellcannon", 1);
	random_army_manager:add_mandatory_unit("CI_vashnarr_chs", "wh2_main_def_inf_darkshards_1", 2);
	random_army_manager:add_mandatory_unit("CI_vashnarr_chs", "wh2_main_def_inf_shades_1", 2);
	random_army_manager:add_mandatory_unit("CI_vashnarr_chs", "wh2_main_def_cav_cold_one_knights_0", 2);
	random_army_manager:add_unit("CI_vashnarr_chs", "wh_main_chs_inf_chaos_warriors_1", 5);	
	random_army_manager:add_unit("CI_vashnarr_chs", "wh_dlc01_chs_inf_chaos_warriors_2", 5);
	random_army_manager:add_unit("CI_vashnarr_chs", "wh_main_chs_inf_chosen_0", 5);	
	random_army_manager:add_unit("CI_vashnarr_chs", "wh_dlc01_chs_inf_forsaken_0", 2);
	random_army_manager:add_unit("CI_vashnarr_chs", "wh_main_chs_cav_chaos_chariot", 1);

	random_army_manager:new_force("CI_mung");
	random_army_manager:add_mandatory_unit("CI_mung", "wh_dlc01_chs_cav_gorebeast_chariot", 1);
	random_army_manager:add_mandatory_unit("CI_mung", "wh_main_chs_cav_chaos_knights_0", 2);
	random_army_manager:add_mandatory_unit("CI_mung", "wh_main_chs_cav_chaos_chariot", 2);
	random_army_manager:add_mandatory_unit("CI_mung", "wh_main_chs_cav_marauder_horsemen_0", 3);
	random_army_manager:add_mandatory_unit("CI_mung", "wh_main_chs_cav_marauder_horsemen_1", 2);
	random_army_manager:add_mandatory_unit("CI_mung", "wh_main_nor_mon_chaos_warhounds_1", 2);
	random_army_manager:add_mandatory_unit("CI_mung", "wh_main_nor_mon_chaos_trolls", 1);
	random_army_manager:add_mandatory_unit("CI_mung", "wh_dlc05_bst_mon_harpies_0", 2);
	random_army_manager:add_unit("CI_mung", "wh_main_nor_inf_chaos_marauders_0", 1);
end

function CI_army_xp()
	local difficulty = cm:model():difficulty_level();
	local xp = 0;
	
	if difficulty == 0 then
		xp = 0; -- Normal
	elseif difficulty == -1 then
		xp = 3; -- Hard
	elseif difficulty == -2 then
		xp = 6; -- Very Hard
	elseif difficulty == -3 then
		xp = 9; -- Legendary
	end
	return xp;
end

function CI_debug_setup()
	if CI_DEBUG == true then
		out.chaos("!!!! DEBUG IS ACTIVE !!!!");
		for key, event in pairs(CI_EVENTS) do
			local start_turn = 0;
			if event.required_stage == 0 then
				start_turn = 1;
			elseif event.required_stage == 2 then
				start_turn = 2;
			elseif event.required_stage == 3 then
				start_turn = 4;
			end
			event.first_turn = start_turn;
			event.last_turn = event.first_turn + 1;
		end

		local player = cm:get_local_faction_name(true);

		if player then
			cm:make_region_visible_in_shroud(player, "wh_main_chaos_wastes");
		end
	end
end

function CI_event(num)
	if num == 1 then
		CI_Event_1_Intro(CI_EVENTS[num]);
	elseif num == 2 then
		CI_Event_2_MidGame(CI_EVENTS[num]);
	elseif num == 3 then
		CI_Event_3_EndGame(CI_EVENTS[num]);
	elseif num == 4 then
		CI_Event_4_Victory(CI_EVENTS[num]);
	end
end

--------------------------------------------------------------
----------------------- SAVING / LOADING ---------------------
--------------------------------------------------------------
cm:add_saving_game_callback(
	function(context)
		cm:save_named_value("CI_DATA", CI_DATA, context);
		cm:save_named_value("CI_SPAWNED_EVENTS", CI_SPAWNED_EVENTS, context);
	end
);
cm:add_loading_game_callback(
	function(context)
		if cm:is_new_game() == false then
			CI_DATA = cm:load_named_value("CI_DATA", CI_DATA, context);
			CI_SPAWNED_EVENTS = cm:load_named_value("CI_SPAWNED_EVENTS", CI_SPAWNED_EVENTS, context);
			-- Patch in existing values if on existing save
			if CI_DATA.CI_INVASION_STAGE_START_TURN == nil then
				if CI_DATA.CI_INVASION_STAGE > 1 then
					CI_DATA.CI_INVASION_STAGE_START_TURN = CI_DATA.CI_LAST_UPDATE;
					CI_DATA.CI_RAZED_REGIONS_STAGE_2 = 5;
					CI_DATA.CI_RAZED_SKAVEN_CITY_SPAWNS = 1;
					CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS = 1;
					CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS = 2;
				else
					CI_DATA.CI_INVASION_STAGE_START_TURN = CI_DATA.CI_LAST_UPDATE;
					CI_DATA.CI_RAZED_REGIONS_STAGE_2 = 0;
					CI_DATA.CI_RAZED_SKAVEN_CITY_SPAWNS = 0;
					CI_DATA.CI_RAZED_BEASTMEN_CITY_SPAWNS = 0;
					CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS = 0;
				end
			-- Remove this after testing the new feature
			elseif CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS == nil then
				CI_DATA.CI_RAZED_CHAOS_WAVE_SPAWNS = 2;
			end
		end
	end
);