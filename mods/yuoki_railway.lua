local allow_changes = z_balance.youki_rail

function i_exist(item)
	for _,v in pairs(zgc.name_list) do
		if tostring(v) == item then return true end
	end
	return false
end

do	--[[transport]]--
	aadd("z-transport-6",					"y_loco_access-pipe-in",															"e")
	aadd("z-transport-6",					"y_loco_access-pipe-out",															"f")
end
do	--[[liquids]]--
	aadd("z-liquids-7",						"yir_fuel_fluid_u1",																	"a")
	aadd("z-liquids-7",						"yir_fuel_fluid_u2",																	"b")
	aadd("z-liquids-7",						"yir_fuel_fluid_u3",																	"c")
end
do	--[[resources]]--
	aadd("z-resources-1",					"yir_fuel_energy",																		"j")
	aadd("z-resources-1",					"yir_fuel_energy_u1",																	"k")
	aadd("z-resources-1",					"yir_fuel_coks",																			"l")
	aadd("z-resources-1",					"yir_fuel_diesel",																		"m")
	
	--ahide("yir_fuel_coks")
	--ahide("yir_fuel_diesel")
end
do	--[[energy]]--
end
do	--[[trains-vehicles]]--
	aadd("z-trains-8",						"yir_cw_trans_4a",																		"a")
	aadd("z-trains-8",						"yir_cw_empty_4a",																		"b")
	aadd("z-trains-8",						"yir_cw_uran_4a",																			"c")
	aadd("z-trains-8",						"yir_cw_flourit_4a",																	"d")
	aadd("z-trains-8",						"yir_es44cr",																					"e")
	aadd("z-trains-8",						"yir_wagon_cabose_cr",																"f")
	aadd("z-trains-8",						"yir_4a_conatiner_cr",																"g")
	aadd("z-trains-8",						"yir_4a_clean_cr",																		"h")
	
	-- production
	aadd("z-trains-9",						"yir_emdf7a_cr",																			"a")
	aadd("z-trains-9",						"yir_emdf7a_mn",																			"b")
	aadd("z-trains-9",						"yir_emdf7b_cr",																			"c")
	aadd("z-trains-9",						"yir_emdf7b_mn",																			"d")
	aadd("z-trains-9",						"yir_factory_loco",																		"e")
	aadd("z-trains-9",						"yir_factory_chemical",																"f")
	aadd("z-trains-9",						"yir_factory_wagon",																	"g")
	aadd("z-trains-9",						"yir_factory_material",																"h")
	aadd("z-trains-9",						"yir_factory_tiles",																	"i")
	aadd("z-trains-9",						"yir_factory_stuff",																	"j")
	
	aadd("z-trains-10",						"yir_coin",																						"a")
	aadd("z-trains-10",						"yir_diesel_coin",																		"b")
	aadd("z-trains-10",						"yir_future_coin",																		"c")
	
	-- parts
	aadd("z-trains-11",						"yir_frame_loco_steam",																"a")
	aadd("z-trains-11",						"yir_frame_loco_diesel",															"b")
	aadd("z-trains-11",						"yir_frame_loco_future",															"c")
	aadd("z-trains-11",						"yir_frame_waggon",																		"d")
	aadd("z-trains-11",						"yir_radsatz_locos",																	"e")
	aadd("z-trains-11",						"yir_radsatz_waggon",																	"f")
	
	-- colors
	aadd("z-trains-12",						"z_yira_4a_cw_yiblue",																"a")
	aadd("z-trains-12",						"z_yira_4a_cw_yigreen",																"b")
	aadd("z-trains-12",						"z_yira_4a_yiblue",																		"c")
	aadd("z-trains-12",						"z_yira_4a_yigreen",																	"d")
	aadd("z-trains-12",						"yir_color_white",																		"e")
	aadd("z-trains-12",						"yir_color_black",																		"f")
	aadd("z-trains-12",						"yir_color_red",																			"g")
	aadd("z-trains-12",						"yir_color_green",																		"h")
	aadd("z-trains-12",						"yir_color_blue",																			"i")
	aadd("z-trains-12",						"yir_kr_green",																				"j")
	
	-- loco 1
	aadd("z-trains-13",						"y_loco_ses_std",																			"a")
	aadd("z-trains-13",						"y_loco_ses_red",																			"b")
	aadd("z-trains-13",						"yir_loco_fut_red",																		"c")
	aadd("z-trains-13",						"yir_loco_sel_blue",																	"d")
	aadd("z-trains-13",						"y_loco_fs_steam_green",															"e")
	aadd("z-trains-13",						"y_loco_steam_wt450",																	"f")
	aadd("z-trains-13",						"yir_loco_steam_wt580of",															"g")
	aadd("z-trains-13",						"y_wagon_tender_black",																"h")
	aadd("z-trains-13",						"y_wagon_tender_green",																"i")
	aadd("z-trains-13",						"yir_loco_del_mk1400",																"j")
	aadd("z-trains-13",						"y_loco_emd3000_white",																"k")
	aadd("z-trains-13",						"yir_loco_del_bluegray",															"l")
	aadd("z-trains-13",						"yir_loco_de_bluegray_recipe",												"m")
	aadd("z-trains-13",						"yir_loco_del_KR",																		"n")
	
	-- loco 2 Amer
	aadd("z-trains-14",						"y_loco_emd1500black",																"a")
	aadd("z-trains-14",						"y_loco_emd1500black_v2",															"b")
	aadd("z-trains-14",						"y_loco_emd1500blue",																	"c")
	aadd("z-trains-14",						"y_loco_emd1500blue_v2",															"d")
	aadd("z-trains-14",						"yir_loco_fesw_op",																		"e")
	aadd("z-trains-14",						"y_loco_desw",																				"f")
	aadd("z-trains-14",						"y_loco_desw_orange",																	"g")
	aadd("z-trains-14",						"y_loco_desw_blue",																		"h")
	aadd("z-trains-14",						"yir_es44cr",																					"i")
	
	-- loco 3 UP&Industries&Amer
	aadd("z-trains-15",						"y_3acw_T10K",																				"a")
	aadd("z-trains-15",						"yir_mre044",																					"b")
	aadd("z-trains-15",						"yir_lsw_840green",																		"c")
	aadd("z-trains-15",						"yir_lsw_r790orange",																	"d")
	aadd("z-trains-15",						"yir_lsw_r790red",																		"e")
	aadd("z-trains-15",						"yir_emdf7a_cr",																			"f")
	aadd("z-trains-15",						"yir_emdf7a_mn",																			"g")
	aadd("z-trains-15",						"yir_atom_header",																		"h")
	aadd("z-trains-15",						"yir_atom_mitte",																			"i")
	
	-- wagon 5 UP&Amer
	aadd("z-trains-16",						"z_yira_4a_cw_yiblue",																"a")
	aadd("z-trains-16",						"z_yira_4a_cw_yigreen",																"b")
	aadd("z-trains-16",						"yir_cw_cargo_blue",																	"c")
	aadd("z-trains-16",						"yir_cw_cargo_green",																	"d")
	aadd("z-trains-16",						"z_yira_4a_cw_steel",																	"e")
	aadd("z-trains-16",						"z_yira_6a_maai1",																		"f")
	aadd("z-trains-16",						"yir_wagon_caboose_cr_crrecipe",											"g")
	aadd("z-trains-16",						"yir_wagon_caboose_cr",																"h")
	aadd("z-trains-16",						"yir_4a_container_crrecipe",													"i")
	aadd("z-trains-16",						"yir_4a_container_cr",																"j")
	aadd("z-trains-16",						"yir_4a_clean_cr",																		"k")
	
	-- wagon 1 Amer
	aadd("z-trains-17",						"yir_2acw_wood",																			"a") 
	aadd("z-trains-17",						"y_wagon_coal",																				"b")
	aadd("z-trains-17",						"y_wagon_stone",																			"c")
	aadd("z-trains-17",						"y_wagon_copper",																			"d")
	aadd("z-trains-17",						"y_wagon_iron",																				"e")
	aadd("z-trains-17",						"yir_emdf7b_cr",																			"f")
	aadd("z-trains-17",						"yir_emdf7b_mn",																			"g")
			
	-- wagon 2
	aadd("z-trains-18",						"y_wagon_closed",																			"a")
	aadd("z-trains-18",						"yir_wagon2a_closed_recipe",													"b")
	aadd("z-trains-18",						"y_wagon_trans",																			"c")
	aadd("z-trains-18",						"yir_2acw_3blocks",																		"d")
	aadd("z-trains-18",						"y_wagon_corn_green",																	"e")
	aadd("z-trains-18",						"y_wagon_corn_blue",																	"f")
	aadd("z-trains-18",						"y_wagon_hopper_yellow",															"g")
	
	-- wagon 3
	aadd("z-trains-19",						"yir_4acw_grey",																			"a")
	aadd("z-trains-19",						"yir_4acw_oceanblue",																	"b")
	aadd("z-trains-19",						"yir_4acw_purple",																		"c")
	aadd("z-trains-19",						"y_wagon_zement_gray",																"d")
	aadd("z-trains-19",						"y_wagon_zement_white",																"e")
	
	-- wagon 4
	aadd("z-trains-20",						"y_wagon_tank_fm1",																		"a")
	aadd("z-trains-20",						"y_wagon_tank_fm2",																		"b")
	aadd("z-trains-20",						"y_wagon_tank_blue",																	"c")
	aadd("z-trains-20",						"yir_wagon2a_tank_blue_recipe",												"d")
	aadd("z-trains-20",						"y_wagon_tank_orange",																"e")
	aadd("z-trains-20",						"yir_wagon2a_tank_orange_recipe",											"f")
	
	-- wagon 5
	aadd("z-trains-21",						"z_yira_4a_cw_kisten",																"a") 
	aadd("z-trains-21",						"z_yira_4a_cw_stuff1",																"b") 
	aadd("z-trains-21",						"yir_4acw_wood",																			"c")
	aadd("z-trains-21",						"yir_4acw_coal",																			"d")
	aadd("z-trains-21",						"yir_4acw_copper",																		"e")
	aadd("z-trains-21",						"yir_4acw_iron",																			"f")
	aadd("z-trains-21",						"yir_4acw_stone",																			"g")
	
	-- wagon 6
	aadd("z-trains-22",						"yir_4acw_closed",																		"a")
	aadd("z-trains-22",						"yir_4acw_gold",																			"b")
	aadd("z-trains-22",						"yir_4acw_mun",																				"c")
	aadd("z-trains-22",						"yir_4acw_tf",																				"d")
	aadd("z-trains-22",						"yir_4acw_vc",																				"e")
	aadd("z-trains-22",						"yir_fw4_vc",																					"f")
	aadd("z-trains-22",						"yir_fw4a_tank_oil",																	"g")
	
	-- wagon 7 Industries
	aadd("z-trains-23",						"yir_cw_flourit",																			"a")
	aadd("z-trains-23",						"yir_cw_flourit_4a",																	"b")
	aadd("z-trains-23",						"yir_cw_uranite",																			"c")
	aadd("z-trains-23",						"yir_cw_uran_4a",																			"d")
	aadd("z-trains-23",						"yir_cw_4a_urana",																		"e")
	aadd("z-trains-23",						"yir_cw_upempty",																			"f")
	aadd("z-trains-23",						"yir_cw_empty_4a",																		"g")
	aadd("z-trains-23",						"yir_cw_upclosed",																		"h")
	aadd("z-trains-23",						"yir_cw_trans_4a",																		"i")
	aadd("z-trains-23",						"yir_cw_4a_cellsu",																		"j")
end
do	--[[decorative]]--	
	aadd("z-decorative-4",				"yir_lamp_modern",																		"m")
	aadd("z-decorative-4",				"yir_lamp_old1",																			"n")
	aadd("z-decorative-4",				"yir_lamp_clock",																			"o")
	
	aadd("z-decorative-5",				"y_path_slag",																				"a")
	aadd("z-decorative-5",				"yir_copper_tile",																		"b")
	aadd("z-decorative-5",				"yir_iron_tile",																			"c")
	aadd("z-decorative-5",				"y_path_labor",																				"d")
	aadd("z-decorative-5",				"y_path_checker",																			"e")
	aadd("z-decorative-5",				"yir_stony_tile",																			"f")
	aadd("z-decorative-5",				"yir_grating_tile",																		"g")
	aadd("z-decorative-5",				"y_path_science",																			"h")
	aadd("z-decorative-5",				"y_tgb",																							"i")
	aadd("z-decorative-5",				"y_tring",																						"j")
	
	aadd("z-decorative-6",				"yir_wood1_tile",																			"a")
	aadd("z-decorative-6",				"yir_wood2_tile",																			"b")
	aadd("z-decorative-6",				"yir_wood3_tile",																			"c")
	aadd("z-decorative-6",				"yir_ground1_tile",																		"d")
	aadd("z-decorative-6",				"yir_plates2_tile",																		"f")
	aadd("z-decorative-6",				"yir_muster1_tile",																		"g")
	aadd("z-decorative-6",				"yir_brick2_tile",																		"i")
	aadd("z-decorative-6",				"yir_brick1_tile",																		"j")
	
	aadd("z-decorative-7",				"yir_metal1_tile",																		"a")
	aadd("z-decorative-7",				"yir_metal2_tile",																		"b")
	aadd("z-decorative-7",				"yir_metal3_tile",																		"c")
	aadd("z-decorative-7",				"yir_metal4_tile",																		"d")
	aadd("z-decorative-7",				"yir_metal5_tile",																		"e")
	aadd("z-decorative-7",				"yir_tile3_tile",																			"f")
	aadd("z-decorative-7",				"yir_tile2_tile",																			"g")
	aadd("z-decorative-7",				"yir_tile1_tile",																			"h")
	aadd("z-decorative-7",				"yir_blue_tile",																			"i")
	
	aadd("z-decorative-8",				"yir_diesel_monument",																"k")
	aadd("z-decorative-8",				"yir_future_monument",																"l")
	
	ahide("y_tile_slagfilled")
	ahide("yir_wood4_tile")
	
	zgc.t_remove_recipe_unlock("yuoki_industries", "y_tile_slagfilled_recipe")
	zgc.t_remove_recipe_unlock("yuoki_industries-2", "y_tile_slagpattern_recipe")
	zgc.t_remove_recipe_unlock("yuoki_industries-3", "y_tile_slagbricks_recipe")
	
	if i_exist("yir_blue_tile") and data.raw.recipe["y_tile_slagpattern_recipe"] and data.raw.recipe["y_tile_slagbricks_recipe"]then
		data.raw.recipe["y_tile_slagpattern_recipe"].category= "yir_rc_tiles"
		data.raw.recipe["y_tile_slagbricks_recipe"].category = "yir_rc_tiles"
	end
end
do	--[[TECH]]--
	if z_balance.youki_tech and i_exist("yir_factory_loco") then
		if not i_exist("y-unicomp-raw") then
		data:extend({
			{
				type = "technology",
				name = "yuoki_railway",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_railway.png",
				icon_size = 64,
				prerequisites = {},
				effects = {},
				unit = {
					count = 25,
					time = 30,
					ingredients = {
						{"science-pack-1",2},
						{"science-pack-2",1}
					}
				},
				order = "y-1[f]"
			},
			{
				type = "technology",
				name = "yuoki_railway-2",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_railway.png",
				icon_size = 64,
				prerequisites = {"yuoki_railway"},
				effects = {},
				unit = {
					count = 25,
					time = 45,
					ingredients = {
						{"science-pack-1",3},
						{"science-pack-2",2},
						{"science-pack-3",1}
					}
				},
				enabled = false,
				order = "y-2[f]"
			},
			{
				type = "technology",
				name = "yuoki_railway-3",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_railway.png",
				icon_size = 64,
				prerequisites = {"yuoki_railway-2"},
				effects = {},
				unit = {
					count = 50,
					time = 60,
					ingredients = {
						{"science-pack-1",3},
						{"science-pack-2",2},
						{"science-pack-3",1}
					}
				},
				enabled = false,
				order = "y-3[f]"
			}
		})
		else
		data:extend({
			{
				type = "technology",
				name = "yuoki_railway",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_railway.png",
				icon_size = 64,
				prerequisites = {"yuoki_technology"},
				effects = {},
				unit = {
					count = 25,
					time = 30,
					ingredients = {
						{"science-pack-1",2},
						{"science-pack-2",1}
					}
				},
				order = "y-1[f]"
			},
			{
				type = "technology",
				name = "yuoki_railway-2",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_railway.png",
				icon_size = 64,
				prerequisites = {"yuoki_railway","yuoki_industries"},
				effects = {},
				unit = {
					count = 25,
					time = 45,
					ingredients = {
						{"science-pack-1",3},
						{"science-pack-2",2},
						{"science-pack-3",1}
					}
				},
				enabled = false,
				order = "y-2[f]"
			},
			{
				type = "technology",
				name = "yuoki_railway-3",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_railway.png",
				icon_size = 64,
				prerequisites = {"yuoki_railway-2","yuoki_industries-2"},
				effects = {},
				unit = {
					count = 50,
					time = 60,
					ingredients = {
						{"science-pack-1",3},
						{"science-pack-2",2},
						{"science-pack-3",1}
					}
				},
				enabled = false,
				order = "y-3[f]"
			}
		})
		end
		
		
		-- yuoki_railway-3

		do --# transport
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_loco_access-pipe-in")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_loco_access-pipe-out")
		end
		do	--# energy
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_fuel_energy_recipe")
		end
		do	--# trains-vehicles
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_factory_loco_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_factory_chemical_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_factory_material_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_factory_tiles_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_factory_stuff_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_coins_gen1_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_diesel_coin_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_future_coin_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_frame_loco_steam_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_frame_waggon_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_radsatz_locos_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_color_white_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_color_black_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_color_red_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_color_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_color_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_kr_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_loco_ses_std_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_loco_ses_red_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_loco_fut_red_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_loco_sel_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_loco_fs_steam_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_loco_steam_wt450_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_loco_steam_wt580of_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_loco_del_KR_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_3acw_T10K_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_mre044_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"z_yira_4a_cw_yiblue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"z_yira_4a_cw_yigreen_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"z_yira_4a_yiblue")
			zgc.add_recipe_to_tech("yuoki_railway",				"z_yira_4a_yigreen")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_cw_cargo_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_cw_cargo_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"z_yira_4a_cw_steel_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"z_yira_4a_cw_steel")
			zgc.add_recipe_to_tech("yuoki_railway",				"z_yira_6a_maai1_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"z_yira_6a_maai1")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_cw_flourit_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_cw_uranite_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_cw_flourit_4a_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_cw_uran_4a_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"z_yira_4a_cw_kisten") 
			zgc.add_recipe_to_tech("yuoki_railway",				"z_yira_4a_cw_stuff1")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_4acw_wood")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_4acw_coal")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_4acw_copper")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_4acw_iron")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_4acw_stone")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_4acw_closed")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_4acw_gold")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_4acw_mun")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_4acw_tf")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_4acw_vc")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_fw4_vc")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_fw4a_tank_oil")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_cw_4a_urana")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_cw_4a_cellsu")
			
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_frame_loco_diesel_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_radsatz_waggon_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_loco_ses_red_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_wagon_tender_black_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_wagon_tender_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_loco_emd1500black_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_loco_emd1500blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_loco_desw_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_loco_desw_orange_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_loco_desw_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_factory_wagon_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_2acw_wood_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_wagon_coal_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_wagon_stone_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_wagon_copper_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_wagon_iron_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_wagon2a_closed_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_wagon_trans_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_wagon_tank_fm1_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_wagon_tank_fm2_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_atom_header_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_atom_mitte_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_lsw_840green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_lsw_r790orange_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_lsw_r790red_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_cw_upempty_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_cw_upclosed_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_cw_empty_4a_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_cw_trans_4a_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_es44cr_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_emdf7a_cr_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_emdf7a_mn_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_emdf7b_cr_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_emdf7b_mn_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_wagon_caboose_cr_crrecipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_4a_container_crrecipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_4a_clean_cr_recipe")
			
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_frame_loco_future_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_loco_fesw_op_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"y_loco_emd1500black_v2_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"y_loco_emd1500blue_v2")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_loco_del_mk1400")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"y_loco_emd3000_white_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_loco_de_bluegray_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_2acw_3blocks_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"y_wagon_corn_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"y_wagon_corn_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"y_wagon_hopper_yellow_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_4acw_grey_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_4acw_oceanblue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_4acw_purple_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"y_wagon_zement_gray_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"y_wagon_zement_white_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_wagon2a_tank_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_wagon2a_tank_orange_recipe")
		end
		do	--# decorative
			zgc.add_recipe_to_tech("z-decorative-4",				"yir_lamp_modern")
			zgc.add_recipe_to_tech("z-decorative-4",				"yir_lamp_old1")
			zgc.add_recipe_to_tech("z-decorative-4",				"yir_lamp_clock")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_path_slag_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_path_labor_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_path_checker_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_stony_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"yir_grating_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_path_science_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_tgb_recipe")
			zgc.add_recipe_to_tech("yuoki_railway",				"y_tring_recipe")
			
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_wood1_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_wood3_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_ground1_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_plates2_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_tile_slagpattern_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_muster1_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"y_tile_slagbricks_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_brick2_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2",				"yir_brick1_tile_recipe")
			
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_metal1_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_metal3_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_metal4_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_metal5_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_tile3_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_tile2_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_tile1_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3",				"yir_blue_tile_recipe")
		end
	end
end
