local allow_changes = z_balance.youki

function i_exist(item)
	for _,v in pairs(zgc.name_list) do
		if tostring(v) == item then return true end
	end
	return false
end

do --[[gathering]]--
	--Yuoki Industries
	aadd("z-gathering-0",					"y_quantrinum_hammer",																"h")
	aadd("z-gathering-0",					"y-repair-durotal",																		"k")
	aadd("z-gathering-0",					"y-repair-krakon",																		"l")
	aadd("z-gathering-0",					"y_repair_quantrinum",																"n")
	aadd("z-gathering-0",					"y-axe-duro",																					"h")
	aadd("z-gathering-0",					"y-axe-durotal-recipe",																"h")
	
	aadd("z-gathering-1",					"y_sc11",																							"f")
	aadd("z-gathering-1",					"y_c11",																							"g")
	aadd("z-gathering-1",					"y_c22",																							"h")
	aadd("z-gathering-1",					"y_cg33",																							"i")
	aadd("z-gathering-1",					"y_sc44",																							"j")
	
	aadd("z-gathering-4",					"y_buffer_station",																		"a")
	aadd("z-gathering-4",					"y-tank-1000",																				"b")
	aadd("z-gathering-4",					"y-tank-4500",																				"c")
	aadd("z-gathering-4",					"y-tank-8000",																				"d")
	aadd("z-gathering-4",					"y-tank-24k",																					"e")
	
	if not allow_changes then
		if z_balance.youki_tech then
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-axe-durotal-recipe")
			zgc.add_recipe_to_tech("yuoki_liquids-2",				"y-tank-1000")
			zgc.add_recipe_to_tech("yuoki_liquids-3",				"y-tank-8000")
		end
		else
		ahide("brass-axe",						"mining-tool")
		ahide("cobalt-axe",					"mining-tool")
		ahide("tungsten-axe",					"mining-tool")
		ahide("y-axe-duro",					"mining-tool")
		ahide("y-axe-durotal-recipe")
		ahide("y-tank-1000",					"5d-storage-tank")
		ahide("y-tank-8000",					"y-tank-1000")
		ahide("storage-tank-2",				"storage-tank")
		ahide("storage-tank-3",				"storage-tank")
		ahide("storage-tank-4",				"storage-tank")
		zgc.t_add_recipe_unlock("bob-fluid-handling-2",		"5d-storage-tank")
	end
	
	aadd("z-gathering-7",					"y-mining-drill",																			"a")
	aadd("z-gathering-7",					"y-mining-drill-e2",																	"b")
	aadd("z-gathering-7",					"y_mc_e2_mining_drill",																"c")
	aadd("z-gathering-7",					"y-underground-drill",																"d")
	aadd("z-gathering-7",					"y_mc_underground_drill",															"e")
	aadd("z-gathering-7",					"yi-mine-impact",																			"f")
	aadd("z-gathering-7",					"yi-mine-plasma",																			"g")
	
	aadd("z-gathering-11",				"y-water-gen",																				"f")
	aadd("z-gathering-11",				"y-water-gen-e",																			"g")
	aadd("z-gathering-11",				"y-water-gen-recipe-e",																"h")
	aadd("z-gathering-11",				"y_water_mixer",																			"i")
	
	if i_exist("water-miner-1") and allow_changes and z_balance.bob then
		ahide("water-miner-2")
		ahide("water-miner-3")
		ahide("water-miner-4")
		ahide("water-miner-5")
		switch_tech("water-miner-2")
		switch_tech("water-miner-3")
		switch_tech("water-miner-4")
		switch_tech("water-miner-5")
	end
	
end
do --[[production]]--
	aadd("z-production-3",				"y-crusher",																					"a")
	aadd("z-production-3",				"y_crusher2_recipe",																	"b")
	aadd("z-production-3",				"y-dirtwasher",																				"c")
	aadd("z-production-3",				"y_mc_dirtwasher",																		"d")
	aadd("z-production-3",				"y-water-mixer",																			"e")
	aadd("z-production-3",				"y-heat-form-press",																	"f")
	aadd("z-production-3",				"y_formpress2",																				"g")
	aadd("z-production-3",				"y_maintance_workshop",																"h")
	aadd("z-production-3",				"y_basement_factory",																	"i")
	
	
	aadd("z-production-5",				"y_smelter",																					"d")
	aadd("z-production-5",				"y_charger",																					"e")
	aadd("z-production-5",				"y-atomic-quantum-composer",													"f")
	aadd("z-production-5",				"y-alien-infuser",																		"g")
	
end
do --[[resources]]--
	aadd("z-resources-2",					"y-wooden-brikett",																		"c")
	aadd("z-resources-2",					"y-coal-brikett",																			"d")
	aadd("z-resources-2",					"y-mixed-fuel",																				"e")
	aadd("z-resources-2",					"y-coaldust-mixing-recipe",														"e")
	aadd("z-resources-2",					"y-mixed-fuel-loaded",																"f")
	aadd("z-resources-2",					"y-mixfuel-load-recipe",															"f")
	aadd("z-resources-2",					"y-wooden-brikett-packed",														"g")
	aadd("z-resources-2",					"y-coal-stack",																				"h")
	aadd("z-resources-2",					"y-infused-mud",																			"i")
	aadd("z-resources-2",					"y-fuel-cell-c",																			"j")
	aadd("z-resources-2",					"y-sgtrade-ic1-recipe",																"j")
	
	aadd("z-resources-3",					"y-res1",																							"h")
	aadd("z-resources-3",					"y-res2",																							"i")
	
	if z_balance.add_trees then
		zgc.add_newRessource_min_max("raw-wood",						"y_organic_dust",1,4,0.5)
	end
	if z_balance.add_dirt then
		zgc.add_newRessource_min_max("coal",							"y-dirt",1,2,0.3  ,"y-coal-dust",1,2,0.2)
		zgc.add_newRessource_min_max("stone",							"y-dirt",1,2,0.3)
		zgc.add_newRessource_min_max("iron-ore",						"y-dirt",1,2,0.2)
		zgc.add_newRessource_min_max("copper-ore",					"y-dirt",1,2,0.2)
		zgc.add_newRessource_min_max("lead-ore",						"y-dirt",1,1,0.2,  "y-toxic-dust",1,2,0.2)
		zgc.add_newRessource_min_max("tin-ore",						"y-dirt",1,2,0.2)
		zgc.add_newRessource_min_max("zinc-ore",						"y-dirt",1,2,0.2,  "y-toxic-dust",1,1,0.2)
		zgc.add_newRessource_min_max("bauxite-ore",					"y-dirt",1,1,0.3)
		zgc.add_newRessource_min_max("cobalt-ore",					"y-dirt",1,2,0.2)
		zgc.add_newRessource_min_max("nickel-ore",					"y-dirt",1,1,0.2,  "y-toxic-dust",1,1,0.2)
		zgc.add_newRessource_min_max("rutile-ore",					"y-dirt",1,2,0.2,  "y-toxic-dust",1,2,0.2)
		zgc.add_newRessource_min_max("silver-ore",					"y-dirt",1,1,0.2)
		zgc.add_newRessource_min_max("tungsten-ore",					"y-dirt",1,2,0.2,  "y-toxic-dust",1,2,0.2)
		zgc.add_newRessource_min_max("sulfur",							"y-toxic-dust",1,2,0.3)
		zgc.add_newRessource_min_max("y-res1",							"y-toxic-dust",1,2,0.2)
		zgc.add_newRessource_min_max("y-res2",							"y-toxic-dust",1,2,0.2)
	end
	if z_balance.add_dust then
		zgc.add_newRessource_min_max("y-res1",							"y-crush-yres1",1,1,0.2)
		zgc.add_newRessource_min_max("y-res2",							"y-crush-yres2",1,1,0.2)
	end
end
do --[[plates]]--
	aadd("z-plates-0",						"y-refined-iron",																			"i")
	aadd("z-plates-0",						"y-refined-copper",																		"j")
	
	aadd("z-plates-1",						"y_hps_pureiron_recipe",															"i")
	aadd("z-plates-1",						"y_hps_purecopper_recipe",														"j")
	
	aadd("z-plates-15",						"y_hps_steel_recipe",																	"ab")
	
	if use_graphics_tunnings then
		zgc.set_icon("y-refined-iron", "__ZGroupChange__/graphics/icons/pure-iron.png")
		zgc.set_icon("y-refined-copper", "__ZGroupChange__/graphics/icons/pure-copper.png")
		
		zgc.set_icon("y_hps_pureiron_recipe", "__ZGroupChange__/graphics/icons/heat-iron.png")
		zgc.set_icon("y_hps_purecopper_recipe", "__ZGroupChange__/graphics/icons/heat-copper.png")
		
		zgc.set_icon("y_hps_steel_recipe", "__ZGroupChange__/graphics/icons/heat-steel.png")
	end
	
end
do --[[liquids]]--
	if allow_changes and data.raw.fluid["lithia-water"] and i_exist("y-unicomp-raw") then
		data:extend({
			{
				type="recipe-category",
				name="z-watergen-recipe" 
			},
			{
				type = "recipe",
				name = "z-lithia-water",
				icon = "__ZGroupChange__/graphics/icons/lithia-water.png",
				category = "z-watergen-recipe",
				energy_required = 5,
				enabled = true,
				ingredients = {
					{"y_organic_dust",7}
				},
				results = {{type="fluid",name="lithia-water",amount=140}},
				main_product = "lithia-water",
				hidden = false,
				subgroup = "z-liquids-3",
				order = "b"
			},
		})
		table.insert(data.raw["assembling-machine"]["y-water-gen"].crafting_categories,"z-watergen-recipe")
		if z_balance.youki_tech then
			zgc.add_recipe_to_tech("yuoki_liquids",				"z-lithia-water")
		end
	end
	
	if z_balance.chemistry then
		aadd("z-chemistry-0",					"liquid-air",																					"f")
		
		aadd("z-chemistry-10",				"y-water-gen-fluid-recipe",														"a")
		aadd("z-chemistry-10",				"z-lithia-water",																			"b")
		aadd("z-chemistry-10",				"bob-liquid-air",																			"c")
		aadd("z-chemistry-10",				"y_water_mix_recipe",																	"d")
		
		aadd("z-chemistry-11",				"y-con_water",																				"a")
		aadd("z-chemistry-11",				"y-liquid-uc2",																				"b")
		else
		aadd("z-liquids-0",						"liquid-air",																					"f")
		
		aadd("z-liquids-3",						"y-water-gen-fluid-recipe",														"a")
		aadd("z-liquids-3",						"z-lithia-water",																			"b")
		aadd("z-liquids-3",						"bob-liquid-air",																			"c")
		aadd("z-liquids-3",						"y_water_mix_recipe",																	"d")
		
		aadd("z-liquids-5",						"y-con_water",																				"a")
		aadd("z-liquids-5",						"y-liquid-uc2",																				"b")
	end
	
	if use_graphics_tunnings then
		zgc.set_icon("y-con_water", "__ZGroupChange__/graphics/icons/y-con-water.png")
	end
	
end
do --[[chemistry]]-- 
	radd("z-chemistry-0",				"y-sulfuric-acid-recipe",  "a")
	aadd("z-chemistry-4",					"y_coal2liquid",																			"a")
	aadd("z-chemistry-4",					"y_ft_recipe",																				"b")
	aadd("z-chemistry-4",					"y_rawsyngas1_recipe",																"c")
	aadd("z-chemistry-4",					"y_rawsyngas2_recipe",																"d")
	aadd("z-chemistry-4",					"y_refinehydrogen_recipe",														"e")
	aadd("z-chemistry-9",					"y_hydrogen",																					"p")
	aadd("z-chemistry-9",					"y_syngas_clean",																			"q")
	aadd("z-chemistry-9",					"y_syngas_raw",																				"r")
	
end
do --[[automatization]]--
	if z_balance.bob_inserters then
		ahide("y-inserter-s4",				"inserter")
		ahide("y-inserter-fast",				"fast-inserter")
		ahide("y-inserter-smart",			"filter-inserter")
		ahide("y-inserter-smart-long",		"filter-inserter")
		ahide("y_inserter_smart_LL",		"filter-inserter")
		ahide("y_inserter_smart_RR",		"filter-inserter")
		ahide("y_inserter_diagonal",		"inserter")
		ahide("y_inserter_smart_leftR2",	"filter-inserter")
		ahide("y_inserter_smart_rightR2",	"filter-inserter")
		ahide("y_inserter_evade_shortL",	"inserter")
		ahide("y_inserter_evade_shortR",	"inserter")
		else
		aadd("z-automatization-0",		"y-inserter-fast",																		"i")
		aadd("z-automatization-0",		"y-inserter-s4",																			"j")
		
		aadd("z-automatization-1",		"y-inserter-smart",																		"k")
		aadd("z-automatization-1",		"y-inserter-smart-long",															"l")
		
		aadd("z-automatization-2",		"y_inserter_diagonal",																"j")
		
		aadd("z-automatization-4",		"y_inserter_smart_LL",																"h")
		aadd("z-automatization-4",		"y_inserter_smart_leftR2",														"i")
		aadd("z-automatization-4",		"y_inserter_evade_shortL",														"j")
		
		aadd("z-automatization-5",		"y_inserter_smart_RR",																"h")
		aadd("z-automatization-5",		"y_inserter_smart_rightR2",														"i")
		aadd("z-automatization-5",		"y_inserter_evade_shortR",														"j")
		
		if z_balance.youki_tech then
			zgc.add_recipe_to_tech("yuoki_industries",			"y-inserter-fast")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-inserter-smart")
			
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-inserter-s4")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-inserter-smart-long")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_inserter_smart_LL")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_inserter_smart_leftR2")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_inserter_evade_shortL")
			
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_inserter_diagonal")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_inserter_smart_RR")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_inserter_smart_rightR2")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_inserter_evade_shortR")
		end
	end
	
end
do --[[transport]]--
	aadd("z-transport-6",					"y_flowcheck_10",																			"g")
	aadd("z-transport-6",					"y-valve-direction-buffer",														"h")
		
	aadd("z-transport-16",				"y-pipe-v",																						"a")
	aadd("z-transport-16",				"y-pipe-h",																						"b")
	aadd("z-transport-16",				"y-pipe-hc",																					"c")
	aadd("z-transport-16",				"y-pipe-ec",																					"d")
	aadd("z-transport-16",				"y-pipe-to-ground-hc",																"e")
	aadd("z-transport-16",				"y-pipe-to-ground-ec",																"f")
		
	
	if not z_balance.youki_pipe then
		if z_balance.youki_tech then
			zgc.add_recipe_to_tech("yuoki_liquids",				"y-pipe-v")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y-pipe-h")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_flowcheck_10_recipe")
			
			zgc.add_recipe_to_tech("yuoki_liquids-2",				"y-pipe-hc")
			zgc.add_recipe_to_tech("yuoki_liquids-2",				"y-pipe-ec")
			zgc.add_recipe_to_tech("yuoki_liquids-2",				"y-pipe-to-ground-hc")
			zgc.add_recipe_to_tech("yuoki_liquids-2",				"y-pipe-to-ground-ec")
		end
		else
		ahide("y-pipe-h",						"pipe")
		ahide("y-pipe-v",						"pipe")
		if data.raw.item["5d-pipe-mk2"] then
			ahide("y-pipe-hc",						"5d-pipe-mk2")
			ahide("y-pipe-to-ground-hc",		"5d-pipe-mk2")
			ahide("y-pipe-ec",						"5d-pipe-mk3")
			ahide("y-pipe-to-ground-ec",		"5d-pipe-mk3")
			else
			ahide("y-pipe-hc",						"pipe")
			ahide("y-pipe-to-ground-hc",		"pipe")
			ahide("y-pipe-ec",						"pipe")
			ahide("y-pipe-to-ground-ec",		"pipe")
		end
		ahide("y-valve-direction-buffer",	"valve")
	end
end
do --[[logistic]]--
	aadd("z-logistic-2",					"yi_roboport",																				"c")
	
	aadd("z-logistic-5",					"yi_logistic-robot",																	"i")
	aadd("z-logistic-6",					"yi_construction-robot",															"i")
	
	aadd("z-logistic-10",					"y-rare-chest-log",																		"a")
	aadd("z-logistic-10",					"y-rare-m1bunker-log",																"b")
	aadd("z-logistic-10",					"y_pc22",																							"c")
	aadd("z-logistic-10",					"y_rc22",																							"d")
end
do --[[energy]]--
	aadd("z-energy-1",						"y-boiler-t2",																				"g")
	aadd("z-energy-1",						"y-boiler-t3",																				"h")
	aadd("z-energy-1",						"y-boiler-iv",																				"i")
	aadd("z-energy-1",						"y_boiler4_mc",																				"j")
	
	aadd("z-energy-2",						"y-notfall-generator-s2",															"c")
	aadd("z-energy-2",						"y-steam-turbine",																		"d")
	aadd("z-energy-2",						"y-steam-turbine-mk3",																"e")
	aadd("z-energy-2",						"y_steam_turbine_mc",																	"f")
	aadd("z-energy-2",						"y-obninsk-turbine",																	"g")
	aadd("z-energy-2",						"y-meg-s",																						"h")
	aadd("z-energy-2",						"y-beg",																							"i")
	aadd("z-energy-2",						"y-heg",																							"j")
	
	aadd("z-energy-3",						"y-obninsk-reactor",																	"f")
	aadd("z-energy-3",						"y_obninsk_mc",																				"g")
	aadd("z-energy-3",						"y-seg",																							"h")
	aadd("z-energy-3",						"y-seg-p",																						"i")
	aadd("z-energy-3",						"y-notfall-generator-s1",															"j")
		
	aadd("z-energy-4",						"y-accumulator-m",																		"c")
	aadd("z-energy-4",						"y-accumulator-m-t2",																	"d")
	aadd("z-energy-4",						"y-accumulator-mt2-recipe",														"d")
	aadd("z-energy-4",						"y-accumulator-b",																		"e")
	aadd("z-energy-4",						"y-accumulator-b-t2",																	"f")
	aadd("z-energy-4",						"y-accumulator-bt2-recipe",														"f")
	aadd("z-energy-4",						"y-accumulator-b-tx",																	"g")
	aadd("z-energy-4",						"y-accumulator-btx-recipe",														"g")
	aadd("z-energy-4",						"y-accumulator-crystal-m",														"h")
	aadd("z-energy-4",						"y-ups-flywheel-b",																		"i")
	aadd("z-energy-4",						"y_compensator_25",																		"j")
	aadd("z-energy-4",						"y-accumulator-s",																		"k")
	aadd("z-energy-4",						"y-accumulator-s-t2",																	"l")
	aadd("z-energy-4",						"yi_obelisk_A3_5X",																		"m")

	aadd("z-energy-6",						"y-solar-dish-recipe",																"g")
	aadd("z-energy-6",						"y_alien_solar",																			"h")
	aadd("z-energy-6",						"y_alien_solar2",																			"i")
	
	aadd("z-energy-10",						"y_signal_pole",																			"a")
	
	aadd("z-energy-12",						"y-substation-m",																			"i")
	aadd("z-energy-12",						"y-substation-h",																			"j")
	
	if not allow_changes then
		
		if z_balance.youki_tech then
			zgc.add_recipe_to_tech("yuoki_energy",					"y-seg-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-seg-p-recipe")
		end
		
		else
		ahide("5d-basic-accumulator-3")
		ahide("y-notfall-generator-s1")
		ahide("y-seg")
		ahide("y-seg-p")
		ahide("y-accumulator-s")
		ahide("y-accumulator-s-t2")
		ahide("yi_obelisk_A3_5X")
		
		switch_tech("electric-energy-accumulators-3")
		switch_tech("engine-3")
	end
end
do --[[defense]]--
	aadd("z-defense-0",						"y-mud-wall",																					"h")
	aadd("z-defense-0",						"y-rare-wall-basic",																	"i")
	aadd("z-defense-0",						"y-rare-wall-adv",																		"j")
	aadd("z-defense-0",						"y_wall22_hardic",																		"k")
	aadd("z-defense-0",						"y-wall-forcefield",																	"l")
	
	aadd("z-defense-6",						"y_turret_flame",																			"a")
	aadd("z-defense-6",						"y_turret_plasma",																		"b")
	aadd("z-defense-6",						"y-laser-def-s4",																			"c")
	aadd("z-defense-6",						"y_laser_onhwall_recipe",															"c")
	aadd("z-defense-6",						"y_turret_gun2f12",																		"d")
	aadd("z-defense-6",						"y-gun-turret-mk2-recipe",														"d")
	aadd("z-defense-6",						"y_turret_gun1f12",																		"e")
	aadd("z-defense-6",						"y-gun-turret-mk3-recipe",														"e")
	aadd("z-defense-6",						"y_turret_laser22f12",																"f")
	aadd("z-defense-6",						"y_laser_mk1_recipe",																	"f")
	aadd("z-defense-6",						"y-weapon-ztt",																				"g")
	
	aadd("z-defense-8",						"yi_radar",																						"d")
	
	if allow_changes and i_exist("y-unicomp-raw") then
		ahide("radar-4")
		ahide("radar-5")
		switch_tech("radars-3")
		switch_tech("radars-4")
		else
		aadd("z-defense-8",						"yi_radar",																						"g")
	end
end
do --[[weaponry]]--
	aadd("z-weaponry-14",					"y-ammo-hohlspitz",																		"a")
	aadd("z-weaponry-14",					"y-ammo-krakon",																			"b")
	aadd("z-weaponry-14",					"y-ammo-explosiv",																		"c")
	aadd("z-weaponry-14",					"y-ammo-biggun",																			"d")
	aadd("z-weaponry-14",					"y-ammo-poison",																			"e")
	aadd("z-weaponry-14",					"y-ammo-acid-2",																			"f")
	aadd("z-weaponry-14",					"y-ammo-acid-medium-recipe",													"g")
	aadd("z-weaponry-14",					"y_ammo_case",																				"h")
	aadd("z-weaponry-14",					"y_ammo_flame",																				"i")
	aadd("z-weaponry-14",					"y_ammo_plasma",																			"j")
	
	aadd("z-weaponry-15",					"y-bullet-case",																			"a")
end
do --[[alien]]--
	aadd("z-alien-6",							"y-alien-artifact-recipe",														"a")
	
end
do --[[intermediate]]--
	aadd("z-intermediate-7",			"y-battery-single-use1",															"d")
	aadd("z-intermediate-7",			"y-battery-single-use2",															"e")
	aadd("z-intermediate-7",			"y-battery-single-use3",															"f")
	aadd("z-intermediate-7",			"y-battery-singleuse1-recipe",												"d")
	aadd("z-intermediate-7",			"y-battery-singleuse2-recipe",												"e")
	aadd("z-intermediate-9",			"engine-unit",																				"g")
	aadd("z-intermediate-9",			"electric-engine-unit",																"h")
	
end
do --[[parts]]--
	if i_exist("y-unicomp-raw") then zgc.add_main_group("parts") end
	
	aadd("z-parts-1",							"y-dirt",																							"a")
	aadd("z-parts-1",							"y-digfdirt-recipe",																	"a")
	aadd("z-parts-1",							"y-digfdirt2-recipe",																	"b")
	aadd("z-parts-1",							"y-coal-dust",																				"c")
	aadd("z-parts-1",							"y-crush-yres1",																			"d")
	aadd("z-parts-1",							"y-crush-unicomp-raw-recipe",													"d")
	aadd("z-parts-1",							"y-crush-yres2",																			"e")
	aadd("z-parts-1",							"y-crush-fuel-raw-recipe",														"e")
	aadd("z-parts-1",							"y-filtering-dust-recipe",														"f")
	aadd("z-parts-1",							"y-crush-blue_whead-recipe",													"g")
	aadd("z-parts-1",							"y-crush-green_whead-recipe",													"h")
	aadd("z-parts-1",							"y-richdust",																					"i")
	aadd("z-parts-1",							"y-mixing-rich-recipe",																"i")
	
	aadd("z-parts-2",							"y-c_mud",																						"a")
	aadd("z-parts-2",							"y-release-cwater",																		"a")
	aadd("z-parts-2",							"y-wash-special-recipe",															"b")
	aadd("z-parts-2",							"y-toxic-dust",																				"c")
	aadd("z-parts-2",							"y-dry_mud",																					"d")
	aadd("z-parts-2",							"y-pressed_dry_mud-recipe",														"d")
	aadd("z-parts-2",							"y_slag_granulate",																		"e")
	aadd("z-parts-2",							"y-slag",																							"f")
	aadd("z-parts-2",							"y-unicomp-raw",																			"g")
	aadd("z-parts-2",							"y-unicomp-a2",																				"h")
	aadd("z-parts-2",							"y-press-richdust-recipe",														"h")
	aadd("z-parts-2",							"y-orange-stuff",																			"i")
	aadd("z-parts-2",							"y-smelt-richdust-recipe",														"i")
	aadd("z-parts-2",							"y-crystal2",																					"j")
	aadd("z-parts-2",							"y-raw-fuelnium",																			"k")
	
	aadd("z-parts-3",							"y-pure-iron",																				"a")
	aadd("z-parts-3",							"y_pure_iron_wtool_recipe",														"b")
	aadd("z-parts-3",							"y-pure-copper",																			"c")
	aadd("z-parts-3",							"y_pure_copper_wtool_recipe",													"d")
	aadd("z-parts-3",							"y-refined-yres1",																		"e")
	aadd("z-parts-3",							"y-smelt-crush-res1-recipe",													"e")
	aadd("z-parts-3",							"y-refined-yres2",																		"f")
	aadd("z-parts-3",							"y-smelt-crush-res2-recipe",													"f")
	aadd("z-parts-3",							"y_slag_brick",																				"g")
	aadd("z-parts-3",							"y_slag_brick_recipe",																"g")
	aadd("z-parts-3",							"y_slag_brick_burn_recipe",														"h")
	aadd("z-parts-3",							"y-wash-dirt-recipe",																	"i")
	
	aadd("z-parts-4",							"y_drillhead",																				"a")
	aadd("z-parts-4",							"y_drillhead_broken",																	"b")
	aadd("z-parts-4",							"y_drillhead_repair_recipe",													"c")
	aadd("z-parts-4",							"y_toolhead",																					"d")
	aadd("z-parts-4",							"y_toolhead_broken",																	"e")
	aadd("z-parts-4",							"y_toolhead_repair_recipe",														"f")
	aadd("z-parts-4",							"y_block_cold",																				"g")
	aadd("z-parts-4",							"y_block_heat",																				"h")
	
	aadd("z-parts-5",							"y-heat-pipe",																				"a")
	aadd("z-parts-5",							"y-bluegear",																					"b")
	aadd("z-parts-5",							"y_structure_element",																"c")
	aadd("z-parts-5",							"y_structure_vessel",																	"d")
	aadd("z-parts-5",							"y_blocked_capa",																			"f")
	aadd("z-parts-5",							"y-basic-t1-mf",																			"g")
	aadd("z-parts-5",							"y-basic-st1-mf-recipe",															"g")
	aadd("z-parts-5",							"y-basic-t2-mf",																			"h")
	aadd("z-parts-5",							"y-basic-st2-mf-recipe",															"h")
	aadd("z-parts-5",							"y_structure_electric",																"i")
	
	aadd("z-parts-6",							"y-conductive-wire-1",																"a")
	aadd("z-parts-6",							"y-conductive-coil-1",																"b")
	aadd("z-parts-6",							"yi_magnetron",																				"c")
	aadd("z-parts-6",							"y_dotzetron",																				"d")
	aadd("z-parts-6",							"y_chip_plate",																				"e")
	aadd("z-parts-6",							"y-chip-1",																						"f")
	aadd("z-parts-6",							"y-chip1-recipe",																			"f")
	aadd("z-parts-6",							"y-chip-2",																						"g")
	aadd("z-parts-6",							"y-chip2-recipe",																			"g")
	
	aadd("z-parts-7",							"y_organic_dust",																			"a")
	aadd("z-parts-7",							"y_granulate_wood_recipe",														"a")
	aadd("z-parts-5",							"y_gauge",																						"b")
	aadd("z-parts-5",							"y_gauge_analog_recipe",															"b")
	aadd("z-parts-7",							"y_catalyst_base",																		"c")
	aadd("z-parts-7",							"y_usedcatalyst",																			"d")
	aadd("z-parts-7",							"y_catalyst_bp",																			"e")
	aadd("z-parts-7",							"y_catalyst_ft",																			"f")
	aadd("z-parts-7",							"y_regcatbp_recipe",																	"g")
	aadd("z-parts-7",							"y_regcatft_recipe",																	"h")
	
	aadd("z-parts-8",							"y-fuel-reactor",																			"a")
	aadd("z-parts-8",							"y-infused-uca2",																			"b")
	aadd("z-parts-8",							"y_crystal2_combined",																"c")
	aadd("z-parts-8",							"y_modul_science",																		"d")
	aadd("z-parts-8",							"y_data_crystal_recipe",															"e")
	aadd("z-parts-8",							"y-crystal-cnd",																			"f")
	aadd("z-parts-8",							"y-quantrinum",																				"g")
	aadd("z-parts-8",							"y_quantrinum_infused",																"h")
	aadd("z-parts-8",							"y_quantrinum_infusion_recipe",												"i")
	
end
do --[[youki]]--
	if i_exist("y-unicomp-raw") then zgc.add_main_group("youki") end
	
	aadd("z-youki-0",							"ye_green_ultimate",																	"a")
	aadd("z-youki-0",							"ye_science_ultimate",																"b")
	aadd("z-youki-0",							"y-atomic-constructor",																"c")
	aadd("z-youki-0",							"y-fame-gen",																					"d")
	aadd("z-youki-0",							"y-stargate",																					"e")
	aadd("z-youki-0",							"y_trade_ultimate",																		"f")
	
	aadd("z-youki-1",							"y-ac-wood2uc-recipe",																"a")
	aadd("z-youki-1",							"y-ac-coal2uc-recipe",																"b")
	aadd("z-youki-1",							"y-ac-stone2uc-recipe",																"c")
	aadd("z-youki-1",							"y-ac-copper2uc-recipe",															"d")
	aadd("z-youki-1",							"y-ac-iron2uc-recipe",																"e")
	aadd("z-youki-1",							"y-ac-uc42uc-recipe",																	"f")
	aadd("z-youki-1",							"y-ac-fuel2uc-recipe",																"g")
	aadd("z-youki-1",							"y-uc2liquid-recipe",																	"h")
	
	aadd("z-youki-2",							"y-ac-mud2uc-recipe",																	"a")
	aadd("z-youki-2",							"y-ac-toxic2uc-recipe",																"b")
	aadd("z-youki-2",							"y-ac-slag2uc-recipe",																"c")
	aadd("z-youki-2",							"y-ac-crystal2uc-recipe",															"d")
	aadd("z-youki-2",							"y-heavyoil2uc-recipe",																"e")
	aadd("z-youki-2",							"y-lightoil2uc-recipe",																"f")
	aadd("z-youki-2",							"y-lubricant2uc-recipe",															"g")
	aadd("z-youki-2",							"y-petroleum-recipe",																	"h")
	aadd("z-youki-2",							"y-battery-rip1-recipe",															"i")
	aadd("z-youki-2",							"y_alien_artis1_recipe",															"j")
	
	aadd("z-youki-3",							"y-ac-uc2wood-recipe",																"a")
	aadd("z-youki-3",							"y-ac-uc2coal-recipe",																"b")
	aadd("z-youki-3",							"y-ac-uc2stone-recipe",																"c")
	aadd("z-youki-3",							"y-ac-uc2copper-recipe",															"d")
	aadd("z-youki-3",							"y-ac-uc2iron-recipe",																"e")
	aadd("z-youki-3",							"y-ac-uc2uc4-recipe",																	"f")
	aadd("z-youki-3",							"y-ac-uc2fuel-recipe",																"g")
	aadd("z-youki-3",							"y-liquid2uc-recipe",																	"h")
	
	aadd("z-youki-4",							"y-ac-uc2plastic-recipe",															"a")
	aadd("z-youki-4",							"y_uc2catalyst",																			"b")
	aadd("z-youki-4",							"y-uc2crudeoil-recipe",																"c")
	aadd("z-youki-4",							"y-battery-rip2-recipe",															"d")
	aadd("z-youki-4",							"y_alien_artis2_recipe",															"e")
	
	aadd("z-youki-5",							"y_exchange_a1_recipe",																"a")
	aadd("z-youki-5",							"y_exchange_a4_recipe",																"b")
	aadd("z-youki-5",							"y_exchange_a2_recipe",																"c")
	aadd("z-youki-5",							"y_exchange_a3_recipe",																"d")
	
	aadd("z-youki-6",							"y_exchange_b1_recipe",																"a")
	aadd("z-youki-6",							"y_exchange_b4_recipe",																"b")
	aadd("z-youki-6",							"y_exchange_b2_recipe",																"c")
	aadd("z-youki-6",							"y_exchange_b3_recipe",																"d")
	
	aadd("z-youki-7",							"n-y-ac-uc2b1-recipe",																"a")
	aadd("z-youki-7",							"n-y-ac-uc2b2-recipe",																"b")
	aadd("z-youki-7",							"n-y-ac-uc2b3-recipe",																"c")
	aadd("z-youki-7",							"n-y-ac-uc2b4-recipe",																"d")
	aadd("z-youki-7",							"n-y-ac-uc2b5-recipe",																"e")
	aadd("z-youki-7",							"n-y-ac-uc2b6-recipe",																"f")
	aadd("z-youki-7",							"n-y-ac-uc2b7-recipe",																"g")
	aadd("z-youki-7",							"n-y-ac-uc2b8-recipe",																"h")
	aadd("z-youki-7",							"n-y-ac-uc2b9-recipe",																"i")
	aadd("z-youki-7",							"n-y-ac-uc2b10-recipe",																"j")
	aadd("z-youki-7",							"n-y-ac-uc2b11-recipe",																"k")
	aadd("z-youki-7",							"n-y-ac-uc2b12-recipe",																"l")
	aadd("z-youki-7",							"n-y-ac-uc2b13-recipe",																"m")
	aadd("z-youki-7",							"y_ac_uc2uranore_recipe",															"n")
	
	aadd("z-youki-8",							"n-y-ac-uc2r1-recipe",																"a")
	aadd("z-youki-8",							"n-y-ac-uc2r2-recipe",																"b")
	aadd("z-youki-8",							"n-y-ac-uc2r3-recipe",																"c")
	aadd("z-youki-8",							"y-ac-ucrb4-recipe",																	"d")
	aadd("z-youki-8",							"n-y-ac-ucrb4-recipe",																"d")
	aadd("z-youki-8",							"n-y-ac-uc2r5-recipe",																"e")
	aadd("z-youki-8",							"n-y-ac-uc2r6-recipe",																"f")
	aadd("z-youki-8",							"n-y-ac-uc2r7-recipe",																"g")
	aadd("z-youki-8",							"n-y-ac-uc2r8-recipe",																"h")
	aadd("z-youki-8",							"n-y-ac-uc2r9-recipe",																"i")
	aadd("z-youki-8",							"n-y-ac-uc2r10-recipe",																"j")
	aadd("z-youki-8",							"n-y-ac-uc2r11-recipe",																"k")
	aadd("z-youki-8",							"n-y-ac-uc2r12-recipe",																"l")
	aadd("z-youki-8",							"n-y-ac-uc2r13-recipe",																"m")
	aadd("z-youki-8",							"n-y-ac-uc2r14-recipe",																"n")
	aadd("z-youki-7",							"y_ac_uran2uc_recipe",																"o")
	
	aadd("z-youki-9",							"yi_slayerfame_recipe",																"a")
	aadd("z-youki-9",							"y-fame",																							"b")
	aadd("z-youki-9",							"y_fame_tech_recipe",																	"b")
	aadd("z-youki-9",							"y_greensign",																				"c")
	aadd("z-youki-9",							"y_greensign_ulti-recipe",														"c")
	aadd("z-youki-9",							"ye_science_blue",																		"d")
	aadd("z-youki-9",							"ye_science_blue_recipe",															"d")
	aadd("z-youki-9",							"ypfw_trader_sign",																		"e")
	aadd("z-youki-9",							"y_rwtechsign",																				"f")
	
	if use_graphics_tunnings then
		zgc.set_icon("y-battery-rip1-recipe", "__ZGroupChange__/graphics/icons/battery2unicom.png")
		zgc.set_icon("y_alien_artis1_recipe", "__ZGroupChange__/graphics/icons/artifact2unicom.png")
		zgc.set_icon("y-battery-rip2-recipe", "__ZGroupChange__/graphics/icons/unicom2battery.png")
		zgc.set_icon("y_alien_artis2_recipe", "__ZGroupChange__/graphics/icons/unicom2artifact.png")
	end
	
end
do --[[module]]--
	aadd("z-module-0",						"ye_green_ultimate",																	"g")
	aadd("z-module-0",						"ye_science_ultimate",																"h")
	aadd("z-module-0",						"yi_beacon",																					"i")
	
	aadd("z-module-2",						"y-speed-module-1",																		"a")
	aadd("z-module-2",						"y_modul_blue1-recipe",																"aa")
	aadd("z-module-2",						"y-speed-module-2",																		"b")
	aadd("z-module-2",						"y_modul_blue2-recipe",																"ba")
	aadd("z-module-2",						"y-green-module-1",																		"c")
	aadd("z-module-2",						"y_modul_green1_recipe",															"ca")
	aadd("z-module-2",						"y-green-module-2",																		"d")
	aadd("z-module-2",						"y_modul_green2_recipe",															"da")
	aadd("z-module-2",						"y_modul_green_op",																		"e")
	
	aadd("z-module-3",						"y_modul_red1",																				"a")
	aadd("z-module-3",						"y_modul_red2",																				"b")
	aadd("z-module-3",						"y-pink-module-1",																		"c")
	aadd("z-module-3",						"y-pink-module-2",																		"d")
	aadd("z-module-3",						"y-pink-module-3",																		"e")
	
end
do --[[armor]]--
	aadd("z-armor-5",							"yi_armor_gray",																			"a")
	aadd("z-armor-5",							"yi_armor_red",																				"b")
	aadd("z-armor-5",							"yi_armor_gold",																			"c")
	aadd("z-armor-5",							"yi_walker_a",																				"d")
	aadd("z-armor-5",							"yi_walker_c",																				"e")
	
	aadd("z-armor-6",							"yi_equip_shield_a",																	"a")
	aadd("z-armor-6",							"yi_equip_battery_a",																	"b")
	aadd("z-armor-6",							"yi_equip_generator_a",																"c")
	aadd("z-armor-6",							"yi_equip_legs_a",																		"d")
	aadd("z-armor-6",							"yi_minigun",																					"e")
	aadd("z-armor-6",							"yi_equip_shield_b",																	"f")
	aadd("z-armor-6",							"yi_lasergun",																				"g")
	aadd("z-armor-6",							"yi_ammo_energie",																		"h")
	aadd("z-armor-6",							"yi_equip_roboport",																	"i")
	aadd("z-armor-6",							"yi_equip_pld_recipe",																"j")
	
end
do --[[decorative]]--
	aadd("z-decorative-4",				"y_lamp_red",																					"c")
	aadd("z-decorative-4",				"y_lamp_green",																				"d")
	aadd("z-decorative-4",				"y_lamp_blue",																				"e")
	aadd("z-decorative-4",				"y_lamp_yellow",																			"f")
	aadd("z-decorative-4",				"y-tinylamp",																					"g")
	aadd("z-decorative-4",				"y-powerlamp",																				"h")
	aadd("z-decorative-4",				"y-lamp-alien",																				"i")
	aadd("z-decorative-4",				"y_old_bodenlampe",																		"j")
	aadd("z-decorative-4",				"y_lampe_neotix",																			"k")
	aadd("z-decorative-4",				"y_lampe_yuoki",																			"l")
	aadd("z-decorative-4",				"y_lampe_corner",																			"m")
	aadd("z-decorative-4",				"y_lampe_44basement_a",																"o")
	aadd("z-decorative-4",				"y_lampe_44basement_b",																"p")
	aadd("z-decorative-4",				"y_lampe_66basement",																	"q")
	
	
	aadd("z-decorative-6",				"y_tile_slagfilled",																	"a")
	aadd("z-decorative-6",				"y_tile_slagpattern",																	"e")
	aadd("z-decorative-6",				"y_tile_slagbricks",																	"g")
	
	aadd("z-decorative-8",				"yi_bug1",																						"i")
	aadd("z-decorative-8",				"yi-monument1",																				"j")
	
end
do --[[other]]--
	aadd("z-other-2",							"y-small-stirling-engine",														"c")
	
end
do --[[TECH]]--
	if z_balance.youki_tech and i_exist("y-unicomp-raw") then
		
		local s_pack = "high-tech-science-pack"
		if data.raw.tool["science-pack-4"] then s_pack = "science-pack-4" end
		data:extend({
			{
				type = "technology",
				name = "yuoki_technology",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_research.png",
				icon_size = 64,
				unit = {
					count = 15,
					time = 30,
					ingredients = {
						{"science-pack-1",1}
					}
				},
				order = "y-0"
			},
			{
				type = "technology",
				name = "yuoki_industries",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_industries.png",
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
				order = "y-1[a]"
			},
			{
				type = "technology",
				name = "yuoki_energy",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_energy.png",
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
				order = "y-1[b]"
			},
			{
				type = "technology",
				name = "yuoki_liquids",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_liquids.png",
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
				order = "y-1[c]"
			},
			{
				type = "technology",
				name = "yuoki_def",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_defence.png",
				icon_size = 64,
				prerequisites = {"yuoki_industries"},
				effects = {},
				unit = {
					count = 25,
					time = 30,
					ingredients = {
						{"science-pack-1",2},
						{"science-pack-2",1}
					}
				},
				order = "y-1[d]"
			},
			{
				type = "technology",
				name = "yuoki_atomics",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_atomics.png",
				icon_size = 64,
				prerequisites = {"yuoki_industries", "yuoki_energy", "yuoki_liquids"},
				effects = {},
				unit = {
					count = 50,
					time = 120,
					ingredients = {
						{"science-pack-1",4},
						{"science-pack-2",3},
						{"science-pack-3",2},
						{s_pack,1}
					}
				},
				order = "y-1[e]"
			}
		})
		data:extend({
			{
				type = "technology",
				name = "yuoki_industries-2",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_industries.png",
				icon_size = 64,
				prerequisites = {"yuoki_industries"},
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
				order = "y-2[a]"
			},
			{
				type = "technology",
				name = "yuoki_industries-3",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_industries.png",
				icon_size = 64,
				prerequisites = {"yuoki_industries-2"},
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
				order = "y-3[a]"
			},
			{
				type = "technology",
				name = "yuoki_industries-4",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_industries.png",
				icon_size = 64,
				prerequisites = {"yuoki_industries-3"},
				effects = {},
				unit = {
					count = 75,
					time = 90,
					ingredients = {
						{"science-pack-1",4},
						{"science-pack-2",3},
						{"science-pack-3",2},
						{s_pack,1}
					}
				},
				enabled = false,
				order = "y-4[a]"
			},
			{
				type = "technology",
				name = "yuoki_energy-2",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_energy.png",
				icon_size = 64,
				prerequisites = {"yuoki_energy"},
				effects = {},
				unit = {
					count = 50,
					time = 45,
					ingredients = {
						{"science-pack-1",2},
						{"science-pack-2",1}
					}
				},
				enabled = false,
				order = "y-2[b]"
			},
			{
				type = "technology",
				name = "yuoki_energy-3",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_energy.png",
				icon_size = 64,
				prerequisites = {"yuoki_energy-2"},
				effects = {},
				unit = {
					count = 75,
					time = 60,
					ingredients = {
						{"science-pack-1",3},
						{"science-pack-2",2},
						{"science-pack-3",1}
					}
				},
				enabled = false,
				order = "y-3[b]"
			},
			{
				type = "technology",
				name = "yuoki_liquids-2",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_liquids.png",
				icon_size = 64,
				prerequisites = {"yuoki_liquids"},
				effects = {},
				unit = {
					count = 50,
					time = 45,
					ingredients = {
						{"science-pack-1",2},
						{"science-pack-2",1}
					}
				},
				enabled = false,
				order = "y-2[c]"
			},
			{
				type = "technology",
				name = "yuoki_liquids-3",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_liquids.png",
				icon_size = 64,
				prerequisites = {"yuoki_liquids-2"},
				effects = {},
				unit = {
					count = 75,
					time = 60,
					ingredients = {
						{"science-pack-1",3},
						{"science-pack-2",2},
						{"science-pack-3",1}
					}
				},
				enabled = false,
				order = "y-3[c]"
			},
			{
				type = "technology",
				name = "yuoki_def-2",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_defence.png",
				icon_size = 64,
				prerequisites = {"yuoki_def","yuoki_industries-2"},
				effects = {},
				unit = {
					count = 50,
					time = 45,
					ingredients = {
						{"science-pack-1",2},
						{"science-pack-2",1}
					}
				},
				enabled = false,
				order = "y-2[d]"
			},
			{
				type = "technology",
				name = "yuoki_def-3",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_defence.png",
				icon_size = 64,
				prerequisites = {"yuoki_def-2","yuoki_industries-3"},
				effects = {},
				unit = {
					count = 75,
					time = 60,
					ingredients = {
						{"science-pack-1",3},
						{"science-pack-2",2},
						{"science-pack-3",1}
					}
				},
				enabled = false,
				order = "y-3[d]"
			},
			{
				type = "technology",
				name = "yuoki_atomics-2",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_atomics.png",
				icon_size = 64,
				prerequisites = {"yuoki_industries-2","yuoki_energy-2","yuoki_liquids-2","yuoki_atomics"},
				effects = {},
				unit = {
					count = 75,
					time = 150,
					ingredients = {
						{"science-pack-1",4},
						{"science-pack-2",3},
						{"science-pack-3",2},
						{s_pack,1}
					}
				},
				enabled = false,
				order = "y-2[e]"
			},
			{
				type = "technology",
				name = "yuoki_atomics-3",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_atomics.png",
				icon_size = 64,
				prerequisites = {"yuoki_industries-3","yuoki_energy-3","yuoki_atomics-2"},
				effects = {},
				unit = {
					count = 100,
					time = 180,
					ingredients = {
						{"science-pack-1",4},
						{"science-pack-2",3},
						{"science-pack-3",2},
						{s_pack,1}
					}
				},
				enabled = false,
				order = "y-3[e]"
			}
		})
		
		-- yuoki_technology
		-- yuoki_industries-4
		-- yuoki_energy-3
		-- yuoki_liquids-3
		-- yuoki_def-3
		-- yuoki_atomics-3
		
		do --# gathering
			zgc.add_recipe_to_tech("yuoki_industries",			"y-mining-drill-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-underground-drill-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-mc_underground-drill-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-dirtwasher-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y_c11_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-mining-drill-e2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_c22_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_cg33_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-repair-durotal-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y_mc_dirtwasher_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y_mc_e2_mining_drill_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y_mc_underground_drill_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y_sc44_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y-repair-krakon-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y_quantrinum_hammer_recipe")
			
			zgc.add_recipe_to_tech("yuoki_liquids",				"y-water-gen-recipe")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y-water-gen-fluid-recipe")
			zgc.add_recipe_to_tech("yuoki_liquids",				"z-lithia-water")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y-tank-4500-recipe")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_buffer_station")
			
			zgc.add_recipe_to_tech("yuoki_liquids-2",				"y-water-gen-recipe-e")
			zgc.add_recipe_to_tech("yuoki_liquids-2",				"y_water_mixer_recipe")
			
			zgc.add_recipe_to_tech("yuoki_liquids-3",				"y-tank-24k")
			
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"y_repair_quantrinum-recipe")
		end
		do --# production
			zgc.add_recipe_to_tech("yuoki_industries",			"y-crusher-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y_smelter_recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-water-mixer")
			
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_crusher2_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-heat-form-press-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_charger_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_formpress2_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-atomic-quantum-composer-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y_maintance_workshop_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y-alien-infuser-recipe")
		end
		do --# plates
			zgc.add_recipe_to_tech("yuoki_industries",			"y-refined-iron")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-refined-copper")
			
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_hps_pureiron_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_hps_purecopper_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_hps_steel_recipe")
		end
		do --# chemistry
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_coal2liquid")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_ft_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_rawsyngas1_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_rawsyngas2_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_refinehydrogen_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids-2",				"y_water_mix_recipe")
		end
		do --# automatization
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-inserter-s4-recipe")
		end
		do --# transport
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_flowcheck_10_recipe")
		end
		do --# logistic
			zgc.add_recipe_to_tech("yuoki_industries-2",			"yi_roboport_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"yi_logistic-robot_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"yi_construction-robot_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-rare-chest-log-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-rare-m1bunker-log-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_pc22_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_rc22_recipe")
		end
		do --# energy
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y_obninsk_mc_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y_steam_turbine_mc_recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy",					"y-substation-m-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-accumulator-m-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-accumulator-mt2-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-notfall-generator-s2-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-steam-turbine-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-boiler-t2-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-boiler-t3-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-boiler-iv-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-meg-s-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-solar-dish-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-wooden-brikett-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-coal-brikett-recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y-coaldust-mixing-recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-substation-h-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-accumulator-b-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-accumulator-bt2-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-ups-flywheel-b-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-obninsk-turbine-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-obninsk-reactor-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-beg-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y_alien_solar_recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-mixfuel-load-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-wooden-brikett-packed-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-coal-stack-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-infused-mud-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-tinylamp-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-powerlamp-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y-lamp-alien-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y_old_bodenlampe_recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y_lampe_neotix_recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2",				"y_lampe_yuoki_recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy-3",				"y-accumulator-btx-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-3",				"y-accumulator-crystal-m-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-3",				"y_compensator_25_recipe")
			zgc.add_recipe_to_tech("yuoki_energy-3",				"y-heg-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-3",				"y_alien_solar2_recipe")
			
		end
		do --# defense
			zgc.add_recipe_to_tech("yuoki_def",						"y-mud-wall-recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"y-rare-wall-basic-recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"y_turret_flame_recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"y-gun-turret-mk2-recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"y-bullet-case-recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"y_ammo_case_recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"y_ammo_flame_recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"y-ammo-hohlspitz-recipe")
			
			zgc.add_recipe_to_tech("yuoki_def-2",					"y-rare-wall-adv-recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"y_turret_plasma_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"y-gun-turret-mk3-recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"y_laser_mk1_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"yi_radar_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"y-ammo-krakon-recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"y-ammo-biggun-recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"y_ammo_plasma_recipe")
			
			zgc.add_recipe_to_tech("yuoki_def-3",					"y_wall22_hardic_recipe")
			zgc.add_recipe_to_tech("yuoki_def-3",					"y-wall-forcefield-recipe")
			zgc.add_recipe_to_tech("yuoki_def-3",					"y_laser_onhwall_recipe")
			zgc.add_recipe_to_tech("yuoki_def-3",					"y-weapon-ztt-recipe")
			zgc.add_recipe_to_tech("yuoki_def-3",					"y-ammo-explosiv-recipe")
			zgc.add_recipe_to_tech("yuoki_def-3",					"y-ammo-poison-recipe")
			zgc.add_recipe_to_tech("yuoki_def-3",					"y-ammo-acid-medium-recipe")
		end
		do --# parts
			zgc.add_recipe_to_tech("yuoki_industries",			"y-heat-pipe-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-bluegear-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y_structure_element_recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y_structure_vessel_recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y_dotzetron_recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y_chip_plate_recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y_gauge_analog_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_drillhead_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_toolhead_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-basic-st1-mf-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-conductive-wire-1-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"yi_magnetron_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-chip1-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-basic-st2-mf-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-conductive-coil-1-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-chip2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_blocked_capa_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_drillhead_repair_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_toolhead_repair_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries",			"y-crush-unicomp-raw-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-crush-fuel-raw-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-smelt-crush-res1-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-unicomp-raw-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-pure-iron-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-pure-copper-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-digfdirt-recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-release-cwater")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-wash-dirt-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-filtering-dust-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-smelt-crush-res2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-mixing-rich-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-smelt-richdust-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_block_cold_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_block_heat_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-quantrinum-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_data_crystal_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-crystal-cnd-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-digfdirt2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-press-richdust-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-pressed_dry_mud-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_slag_granulate_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_slag_brick_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_pure_iron_wtool_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_pure_copper_wtool_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-crush-blue_whead-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-crush-green_whead-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_quantrinum_infusion_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-wash-special-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_slag_brick_burn_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-raw-fuelnium-recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy",					"y-coaldust-recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy-3",				"y-fuel-reactor-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-3",				"y-infused-uca2-recipe")
			
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_granulate_wood_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_catalyst_bp_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_catalyst_ft_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_regcatbp_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids",				"y_regcatft_recipe")
			
			zgc.add_recipe_to_tech("yuoki_liquids-2",				"y-sulfuric-acid-recipe")
		end
		do --# intermediate
			zgc.add_recipe_to_tech("yuoki_industries",			"y_blocked_capa_recipe")
			zgc.add_recipe_to_tech("yuoki_industries",			"y-battery-singleuse1-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-battery-singleuse2-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-battery-single-use3-recipe")
		end
		do --# youki
			zgc.add_recipe_to_tech("y-atomic-constructor-recipe")
			zgc.add_recipe_to_tech("y-ac-wood2uc-recipe")
			zgc.add_recipe_to_tech("y-ac-coal2uc-recipe")
			zgc.add_recipe_to_tech("y-ac-stone2uc-recipe")
			zgc.add_recipe_to_tech("y-ac-copper2uc-recipe")
			zgc.add_recipe_to_tech("y-ac-iron2uc-recipe")
			zgc.add_recipe_to_tech("y-ac-uc42uc-recipe")
			zgc.add_recipe_to_tech("y-ac-fuel2uc-recipe")
			zgc.add_recipe_to_tech("y-uc2liquid-recipe")
			zgc.add_recipe_to_tech("y-ac-uc2wood-recipe")
			zgc.add_recipe_to_tech("y-ac-uc2coal-recipe")
			zgc.add_recipe_to_tech("y-ac-uc2stone-recipe")
			zgc.add_recipe_to_tech("y-ac-uc2copper-recipe")
			zgc.add_recipe_to_tech("y-ac-uc2iron-recipe")
			zgc.add_recipe_to_tech("y-ac-uc2uc4-recipe")
			zgc.add_recipe_to_tech("y-ac-uc2fuel-recipe")
			zgc.add_recipe_to_tech("y-liquid2uc-recipe")
			zgc.add_recipe_to_tech("y_exchange_a1_recipe")
			zgc.add_recipe_to_tech("y_exchange_a4_recipe")
			zgc.add_recipe_to_tech("y_exchange_a2_recipe")
			zgc.add_recipe_to_tech("y_exchange_a3_recipe")
			zgc.add_recipe_to_tech("y_exchange_b1_recipe")
			zgc.add_recipe_to_tech("y_exchange_b4_recipe")
			zgc.add_recipe_to_tech("y_exchange_b2_recipe")
			zgc.add_recipe_to_tech("y_exchange_b3_recipe")
			zgc.add_recipe_to_tech("yi_slayerfame_recipe")
			
			zgc.add_recipe_to_tech("n-y-ac-uc2b1-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2b3-recipe")
			zgc.add_recipe_to_tech("y-ac-ucrb4-recipe")
			zgc.add_recipe_to_tech("n-y-ac-ucrb4-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2b5-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2b6-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2b7-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2b8-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2b9-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2b10-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2b11-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2b12-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2b13-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r1-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r2-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r3-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r4-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r5-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r6-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r7-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r8-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r9-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r10-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r11-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r12-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r13-recipe")
			zgc.add_recipe_to_tech("n-y-ac-uc2r14-recipe")
			
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y_fame_tech_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-ac-mud2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-ac-toxic2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-ac-slag2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-ac-crystal2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-heavyoil2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-lightoil2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-lubricant2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-petroleum-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-battery-rip1-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y_alien_artis1_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-ac-uc2plastic-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y_uc2catalyst")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-uc2crudeoil-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y-battery-rip2-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2",				"y_alien_artis2_recipe")
			
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"y-stargate-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"y-fame-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"y_greensign_ulti-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"ye_science_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"ypfw_trader_sign")
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"y_rwtechsign")
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"y-fame-gen-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"y-sgtrade-ic1-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"ye_green_ultimate_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"ye_science_ultimate_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3",				"y_trade_ultimate")
		end
		do --# module
			zgc.add_recipe_to_tech("yuoki_industries-2",			"yi_beacon_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_modul_blue1-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_modul_blue2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_modul_green1_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_modul_green2_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y-pink-module-1-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_modul_red1_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_modul_red2_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-pink-module-2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y-pink-module-3-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-4",			"y_modul_green_op_recipe")
		end
		do --# armor
			zgc.add_recipe_to_tech("yuoki_def",						"yi_armor_gray_recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"yi_armor_red_recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"yi_armor_gold_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"yi_walker_a_recipe")
			zgc.add_recipe_to_tech("yuoki_def-3",					"yi_walker_c_recipe")
			
			zgc.add_recipe_to_tech("yuoki_def",						"yi_equip_shield_a_recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"yi_equip_battery_a_recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"yi_equip_generator_a_recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"yi_equip_legs_a_recipe")
			zgc.add_recipe_to_tech("yuoki_def",						"yi_minigun_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"yi_equip_shield_b_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"yi_lasergun_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"yi_ammo_energie_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2",					"yi_equip_roboport")
			zgc.add_recipe_to_tech("yuoki_def-2",					"yi_equip_pld_recipe")
		end
		do --# decorative
			zgc.add_recipe_to_tech("yuoki_industries",			"y_tile_slagfilled_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2",			"y_tile_slagpattern_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3",			"y_tile_slagbricks_recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy",					"y_lamp_red_recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y_lamp_green_recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y_lamp_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"y_lamp_yellow_recipe")
			zgc.add_recipe_to_tech("yuoki_energy",					"yi_bug1_recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy-3",				"yi-monument1-recipe")
		end
		
	end
end
