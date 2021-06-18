local cls_prefix = "campaign_localised_strings_string_";
local mod_prefix = "mc_endgame_expanded";

local mc_endgame_expanded = mct:register_mod(mod_prefix);

-- Set main localisation
mc_endgame_expanded:set_title(cls_prefix..mod_prefix.."_mod_title", true);
mc_endgame_expanded:set_author("Ydok4");
mc_endgame_expanded:set_description(cls_prefix..mod_prefix.."_description", true);

-- General
mc_endgame_expanded:add_new_section("ci_general_settings", cls_prefix..mod_prefix.."_section_name_ci_general_settings", true);

local enable_chaos_tracking_missions = mc_endgame_expanded:add_new_option("enable_chaos_tracking_missions", "checkbox");
enable_chaos_tracking_missions:set_default_value(true);
enable_chaos_tracking_missions:set_text(cls_prefix..mod_prefix.."_title_enable_chaos_tracking_missions", true);
enable_chaos_tracking_missions:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_chaos_tracking_missions", true);

-- Chaos
mc_endgame_expanded:add_new_section("ci_chaos_army_spawns", cls_prefix..mod_prefix.."_section_name_ci_chaos_army_spawns", true);

local enable_chaos_naggaroth_invasion = mc_endgame_expanded:add_new_option("enable_chaos_naggaroth_invasion", "checkbox");
enable_chaos_naggaroth_invasion:set_default_value(true);
enable_chaos_naggaroth_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_chaos_naggaroth_invasion", true);
enable_chaos_naggaroth_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_chaos_naggaroth_invasion", true);

local enable_chaos_darklands_invasion = mc_endgame_expanded:add_new_option("enable_chaos_darklands_invasion", "checkbox");
enable_chaos_darklands_invasion:set_default_value(true);
enable_chaos_darklands_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_chaos_darklands_invasion", true);
enable_chaos_darklands_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_chaos_darklands_invasion", true);

-- Beastmen Army
mc_endgame_expanded:add_new_section("ci_beastmen_army_spawns", cls_prefix..mod_prefix.."_section_name_ci_beastmen_army_spawns", true)

local enable_bst_chaos_wastes_invasion = mc_endgame_expanded:add_new_option("enable_bst_chaos_wastes_invasion", "checkbox");
enable_bst_chaos_wastes_invasion:set_default_value(true);
enable_bst_chaos_wastes_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_bst_chaos_wastes_invasion", true);
enable_bst_chaos_wastes_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_bst_chaos_wastes_invasion", true);

local enable_bst_forest_invasion = mc_endgame_expanded:add_new_option("enable_bst_forest_invasion", "checkbox");
enable_bst_forest_invasion:set_default_value(true);
enable_bst_forest_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_bst_forest_invasion", true);
enable_bst_forest_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_bst_forest_invasion", true);

-- Norscan Army
mc_endgame_expanded:add_new_section("ci_norscan_army_spawns", cls_prefix..mod_prefix.."_section_name_ci_norscan_army_spawns", true)
local enable_nor_norscan_invasion = mc_endgame_expanded:add_new_option("enable_nor_norscan_invasion", "checkbox");
enable_nor_norscan_invasion:set_default_value(true);
enable_nor_norscan_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_nor_norscan_invasion", true);
enable_nor_norscan_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_nor_norscan_invasion", true);

local enable_enable_nor_ne_ulthuan_invasion = mc_endgame_expanded:add_new_option("enable_nor_ne_ulthuan", "checkbox");
enable_enable_nor_ne_ulthuan_invasion:set_default_value(true);
enable_enable_nor_ne_ulthuan_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_nor_ne_ulthuan", true);
enable_enable_nor_ne_ulthuan_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_nor_ne_ulthuan", true);

local enable_nor_eastern_invasion = mc_endgame_expanded:add_new_option("enable_nor_eastern_invasion", "checkbox");
enable_nor_eastern_invasion:set_default_value(true);
enable_nor_eastern_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_nor_eastern_invasion", true);
enable_nor_eastern_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_nor_eastern_invasion", true);

-- Skaven Army
mc_endgame_expanded:add_new_section("ci_skaven_army_spawns", cls_prefix..mod_prefix.."_section_name_ci_skaven_army_spawns", true)
local enable_skv_lustria_invasion = mc_endgame_expanded:add_new_option("enable_skv_lustria_invasion", "checkbox");
enable_skv_lustria_invasion:set_default_value(true);
enable_skv_lustria_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_skv_lustria_invasion", true);
enable_skv_lustria_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_skv_lustria_invasion", true);

local enable_skv_undercity_expansion = mc_endgame_expanded:add_new_option("enable_skv_undercity_expansion", "checkbox");
enable_skv_undercity_expansion:set_default_value(true);
enable_skv_undercity_expansion:set_text(cls_prefix..mod_prefix.."_title_enable_skv_undercity_expansion", true);
enable_skv_undercity_expansion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_skv_undercity_expansion", true);

-- Vampire Coast Army
mc_endgame_expanded:add_new_section("ci_vampire_coast_army_spawns", cls_prefix..mod_prefix.."_section_name_ci_vampire_coast_army_spawns", true)
local enable_cst_cylostra_invasion = mc_endgame_expanded:add_new_option("enable_cst_cylostra_invasion", "checkbox");
enable_cst_cylostra_invasion:set_default_value(true);
enable_cst_cylostra_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_cst_cylostra_invasion", true);
enable_cst_cylostra_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_cst_cylostra_invasion", true);

local enable_cst_noctilus_invasion = mc_endgame_expanded:add_new_option("enable_cst_noctilus_invasion", "checkbox");
enable_cst_noctilus_invasion:set_default_value(true);
enable_cst_noctilus_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_cst_noctilus_invasion", true);
enable_cst_noctilus_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_cst_noctilus_invasion", true);

-- Other
mc_endgame_expanded:add_new_section("ci_other_army_spawns", cls_prefix..mod_prefix.."_section_name_ci_other_army_spawns", true);
local enable_rogue_vashnarr_invasion = mc_endgame_expanded:add_new_option("enable_rogue_vashnarr_invasion", "checkbox");
enable_rogue_vashnarr_invasion:set_default_value(false);
enable_rogue_vashnarr_invasion:set_text(cls_prefix..mod_prefix.."_title_enable_rogue_vashnarr_invasion", true);
enable_rogue_vashnarr_invasion:set_tooltip_text(cls_prefix..mod_prefix.."_description_enable_rogue_vashnarr_invasion", true);