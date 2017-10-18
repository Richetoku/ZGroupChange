local allow_changes = z_balance.bob

function i_exist(item)
	for _,v in pairs(zgc.name_list) do
		if tostring(v) == item then return true end
	end
	return false
end

do	--[[gathering]]--
	aadd("z-gathering-0",					"brass-axe",																					"c")
	aadd("z-gathering-0",					"cobalt-axe",																					"d")
	aadd("z-gathering-0",					"titanium-axe",																				"e")
	aadd("z-gathering-0",					"tungsten-axe",																				"f")
	aadd("z-gathering-0",					"diamond-axe",																				"g")
	
	aadd("z-gathering-3",					"storage-tank-2",																			"b")
	aadd("z-gathering-3",					"storage-tank-3",																			"d")
	aadd("z-gathering-3",					"storage-tank-4",																			"e")
	
	aadd("z-gathering-5",					"bob-area-mining-drill-1",														"d")
	aadd("z-gathering-5",					"bob-mining-drill-1",																	"e")
	aadd("z-gathering-5",					"bob-area-mining-drill-2",														"g")
	aadd("z-gathering-5",					"bob-mining-drill-2",																	"h")
	aadd("z-gathering-5",					"bob-area-mining-drill-3",														"j")
	aadd("z-gathering-5",					"bob-mining-drill-3",																	"k")
	aadd("z-gathering-5",					"bob-area-mining-drill-4",														"m")
	aadd("z-gathering-5",					"bob-mining-drill-4",																	"n")
	aadd("z-gathering-5",					"bob-mining-drill-5",																	"p")
	
	aadd("z-gathering-10",				"water-pump",																					"d")
	aadd("z-gathering-10",				"water-pump-2",																				"e")
	aadd("z-gathering-10",				"water-pump-3",																				"f")
	aadd("z-gathering-10",				"water-pump-4",																				"g")
	aadd("z-gathering-10",				"water-pump-5",																				"h")
	
	aadd("z-gathering-11",				"water-miner-1",																			"a")
	aadd("z-gathering-11",				"water-miner-2",																			"b")
	aadd("z-gathering-11",				"water-miner-3",																			"c")
	aadd("z-gathering-11",				"water-miner-4",																			"d")
	aadd("z-gathering-11",				"water-miner-5",																			"e")
	
	aadd("z-gathering-12",				"bob-pump-2",																					"b")
	aadd("z-gathering-12",				"bob-pump-3",																					"d")
	aadd("z-gathering-12",				"bob-pump-4",																					"e")
	aadd("z-gathering-12",				"void-pump",																					"f")
	
	aadd("z-gathering-13",				"pumpjack",																						"a")
	aadd("z-gathering-13",				"bob-pumpjack-1",																			"b")
	aadd("z-gathering-13",				"bob-pumpjack-2",																			"c")
	aadd("z-gathering-13",				"bob-pumpjack-3",																			"e")
	aadd("z-gathering-13",				"bob-pumpjack-4",																			"f")
	
	aadd("z-gathering-14",				"air-pump",																						"a")
	aadd("z-gathering-14",				"air-pump-1",																					"b")
	aadd("z-gathering-14",				"air-pump-2",																					"c")
	aadd("z-gathering-14",				"air-pump-3",																					"d")
	aadd("z-gathering-14",				"air-pump-4",																					"e")
	aadd("z-gathering-14",				"air-pump-5",																					"f")
	
	if use_graphics_tunnings then
		zgc.set_icon("water-miner-1", "__ZGroupChange__/graphics/icons/pump_water.png")
		zgc.set_icon("water-miner-2", "__ZGroupChange__/graphics/icons/pump_water.png")
		zgc.set_icon("water-miner-3", "__ZGroupChange__/graphics/icons/pump_water.png")
		zgc.set_icon("water-miner-4", "__ZGroupChange__/graphics/icons/pump_water.png")
		zgc.set_icon("water-miner-5", "__ZGroupChange__/graphics/icons/pump_water.png")
		zgc.set_icon("pumpjack", "__ZGroupChange__/graphics/icons/pump_oil.png")
		zgc.set_icon("bob-pumpjack-1", "__ZGroupChange__/graphics/icons/pump_oil.png")
		zgc.set_icon("bob-pumpjack-2", "__ZGroupChange__/graphics/icons/pump_oil.png")
		zgc.set_icon("bob-pumpjack-3", "__ZGroupChange__/graphics/icons/pump_oil.png")
		zgc.set_icon("bob-pumpjack-4", "__ZGroupChange__/graphics/icons/pump_oil.png")
	end
	
  if i_exist("5d-small-pump") and i_exist("bob-pump-2") and allow_changes then
		aadd("z-gathering-11",				"pump",																								"d")
		aadd("z-gathering-11",				"5d-small-pump",																			"e")
		aadd("z-gathering-11",				"5d-small-pump-2",																		"f")
		aadd("z-gathering-11",				"void-pump",																					"g")
		
		ahide("bob-pump-2")
		ahide("bob-pump-3")
		ahide("bob-pump-4")
		switch_tech("bob-fluid-handling-3")
		switch_tech("bob-fluid-handling-4")
	end
	
  if i_exist("5d-mining-drill-speed-1") and i_exist("bob-mining-drill-1") and allow_changes then
		ahide("bob-mining-drill-1")
		ahide("bob-mining-drill-2")
		ahide("bob-mining-drill-3")
		ahide("bob-mining-drill-4")
		ahide("bob-mining-drill-5")
		ahide("bob-area-mining-drill-1")
		ahide("bob-area-mining-drill-2")
		ahide("bob-area-mining-drill-3")
		ahide("bob-area-mining-drill-4")
		
		ahide("5d-storage-tank")
		ahide("5d-pumpjack-2")
		ahide("5d-pumpjack-3")
		
		switch_tech("bob-drills-1")
		switch_tech("bob-drills-2")
		switch_tech("bob-drills-3")
		switch_tech("bob-drills-4")
		switch_tech("bob-drills-5")
		switch_tech("bob-area-drills-1")
		switch_tech("bob-area-drills-2")
		switch_tech("bob-area-drills-3")
		switch_tech("bob-area-drills-4")
		
		switch_tech("fluid-handling-2")
		switch_tech("advanced-oil-processing-2")
		
		zgc.t_add_recipe_unlock("bob-fluid-handling-2",		"storage-tank-2")
		zgc.t_add_recipe_unlock("bob-fluid-handling-3",		"storage-tank-3")
		zgc.t_add_recipe_unlock("bob-fluid-handling-4",		"storage-tank-4")
	end
	if i_exist("green-transport-belt") and allow_changes then ahide("electric-mining-drill") end
end
do	--[[production]]--
	aadd("z-production-0",				"chemical-boiler",																		"g")
	aadd("z-production-0",				"chemical-steel-furnace",															"h")
	aadd("z-production-0",				"mixing-furnace",																			"i")
	aadd("z-production-0",				"mixing-steel-furnace",																"j")
	
	aadd("z-production-2",				"electric-furnace",																		"a")
	aadd("z-production-2",				"electric-furnace-2",																	"c")
	aadd("z-production-2",				"electric-furnace-3",																	"f")
	aadd("z-production-2",				"electric-mixing-furnace",														"i")
	aadd("z-production-2",				"chemical-furnace",																		"j")
	aadd("z-production-2",				"electric-chemical-mixing-furnace",										"k")
	aadd("z-production-2",				"electric-chemical-mixing-furnace-2",									"l")
	
	aadd("z-production-4",				"assembling-machine-1",																"d")
	aadd("z-production-4",				"assembling-machine-2",																"f")
	aadd("z-production-4",				"assembling-machine-3",																"h")
	aadd("z-production-4",				"assembling-machine-4",																"j")
	aadd("z-production-4",				"assembling-machine-5",																"l")
	aadd("z-production-4",				"assembling-machine-6",																"n")
	
	aadd("z-production-5",				"electronics-machine-1",															"a")
	aadd("z-production-5",				"electronics-machine-2",															"b")
	aadd("z-production-5",				"electronics-machine-3",															"c")
	
	aadd("z-production-8",				"electrolyser",																				"a")
	aadd("z-production-8",				"electrolyser-1",																			"b")
	aadd("z-production-8",				"electrolyser-2",																			"c")
	aadd("z-production-8",				"electrolyser-3",																			"d")
	aadd("z-production-8",				"electrolyser-4",																			"e")
	
	aadd("z-production-9",				"bob-greenhouse",																			"a")
	
	if use_graphics_tunnings then
		zgc.set_icon("chemical-furnace", "__ZGroupChange__/graphics/icons/chemical-furnace.png")
		zgc.set_icon("assembling-machine-1", "__ZGroupChange__/graphics/icons/assembling-machine-1.png")
		zgc.set_icon("assembling-machine-2", "__ZGroupChange__/graphics/icons/assembling-machine-2.png")
		zgc.set_icon("assembling-machine-3", "__ZGroupChange__/graphics/icons/assembling-machine-3.png")
		zgc.set_icon("assembling-machine-4", "__ZGroupChange__/graphics/icons/assembling-machine-4.png")
		zgc.set_icon("assembling-machine-5", "__ZGroupChange__/graphics/icons/assembling-machine-5.png")
		zgc.set_icon("assembling-machine-6", "__ZGroupChange__/graphics/icons/assembling-machine-6.png")
		
		if data.raw["assembling-machine"]["assembling-machine-3"] then
			data.raw["assembling-machine"]["assembling-machine-3"].animation = {
				filename = "__ZGroupChange__/graphics/entity/assembling-machine-3-anim.png",
				priority="high",
				width = 142,
				height = 113,
				frame_count = 32,
				line_length = 8,
				shift = {0.84, -0.1}
			}
		end
		if data.raw["assembling-machine"]["assembling-machine-4"] then
			data.raw["assembling-machine"]["assembling-machine-4"].animation = {
				filename = "__ZGroupChange__/graphics/entity/assembling-machine-4-anim.png",
				priority="high",
				width = 142,
				height = 113,
				frame_count = 32,
				line_length = 8,
				shift = {0.84, -0.1}
			}
		end
		if data.raw["assembling-machine"]["assembling-machine-5"] then
			data.raw["assembling-machine"]["assembling-machine-5"].animation = {
				filename = "__ZGroupChange__/graphics/entity/assembling-machine-5-anim.png",
				priority="high",
				width = 142,
				height = 113,
				frame_count = 32,
				line_length = 8,
				shift = {0.84, -0.1}
			}
		end
		if data.raw["assembling-machine"]["assembling-machine-6"] then
			data.raw["assembling-machine"]["assembling-machine-6"].animation = {
				filename = "__ZGroupChange__/graphics/entity/assembling-machine-6-anim.png",
				priority="high",
				width = 142,
				height = 113,
				frame_count = 32,
				line_length = 8,
				shift = {0.84, -0.1}
			}
		end
		if data.raw["assembling-machine"]["chemical-furnace"] then
			data.raw["assembling-machine"]["chemical-furnace"].animation.filename = "__ZGroupChange__/graphics/entity/electric-chemical-furnace.png"
		end
	end
	
	aadd("z-production-6",				"oil-refinery-2",																			"c")
	aadd("z-production-6",				"oil-refinery-3",																			"e")
	aadd("z-production-6",				"oil-refinery-4",																			"g")
	
	aadd("z-production-7",				"chemical-plant-2",																		"b")
	aadd("z-production-7",				"chemical-plant-3",																		"d")
	aadd("z-production-7",				"chemical-plant-4",																		"f")
	
  if i_exist("5d-chemical-plant-2") and allow_changes then
		ahide("oil-refinery-2")
		ahide("oil-refinery-3")
		ahide("oil-refinery-4")
		ahide("chemical-plant-2")
		ahide("chemical-plant-3")
		ahide("chemical-plant-4")
		
		switch_tech("oil-processing-4")
		switch_tech("chemical-plant-4")
		
		zgc.t_add_recipe_unlock("chemical-plant-2",			"5d-chemical-plant-2")
		zgc.t_add_recipe_unlock("chemical-plant-3",			"5d-chemical-plant-3")
		zgc.t_add_recipe_unlock("oil-processing-2",			"5d-oil-refinery-2")
		zgc.t_add_recipe_unlock("oil-processing-3",			"5d-oil-refinery-3")
		
		zgc.t_remove_recipe_unlock("chemical-plant-2", "chemical-plant-2")
		zgc.t_remove_recipe_unlock("chemical-plant-3", "chemical-plant-3")
		zgc.t_remove_recipe_unlock("oil-processing-2", "oil-refinery-2")
		zgc.t_remove_recipe_unlock("oil-processing-3", "oil-refinery-3")
	end
	
	
  if allow_changes then
		if i_exist("electric-furnace-2") then
			ahide("5d-electric-furnace")
			ahide("electric-furnace-mk2")
			ahide("electric-furnace-mk3")
		end
		
		ahide("electronics-machine-1")
		ahide("electronics-machine-2")
		ahide("electronics-machine-3")
		
		switch_tech("electronics-machine-1")
		switch_tech("electronics-machine-2")
		switch_tech("electronics-machine-3")
	end
end
do	--[[resources]]--
	aadd("z-resources-0",					"raw-wood",																						"a")
	aadd("z-resources-0",					"wood",																								"b")
	aadd("z-resources-0",					"synthetic-wood",																			"c")
	aadd("z-resources-0",					"seedling",																						"d")
	aadd("z-resources-0",					"coal",																								"e")
	aadd("z-resources-0",					"5d-coal",																						"f")
	aadd("z-resources-0",					"stone",																							"g")
	aadd("z-resources-0",					"sulfur",																							"h")
	aadd("z-resources-0",					"sulfur-2",																						"i")
	
	aadd("z-resources-1",					"enriched-fuel",																			"a")
	aadd("z-resources-1",					"enriched-fuel-from-liquid-fuel",											"a")
	
	aadd("z-resources-3",					"lead-ore",																						"c")
	aadd("z-resources-3",					"tin-ore",																						"d")
	aadd("z-resources-3",					"zinc-ore",																						"e")
	aadd("z-resources-3",					"bauxite-ore",																				"f")
	aadd("z-resources-3",					"gold-ore",																						"g")
	aadd("z-resources-3",					"gem-ore",																						"h")
	aadd("z-resources-3",					"sort-gem-ore",																				"i")	
	aadd("z-resources-3",					"silver-ore",																					"j")
	
	aadd("z-resources-4",					"cobalt-ore",																					"a")
	aadd("z-resources-4",					"nickel-ore",																					"b")
	aadd("z-resources-4",					"quartz",																							"c")
	aadd("z-resources-4",					"quartz-ore",																					"d")
	aadd("z-resources-4",					"rutile-ore",																					"e")
	aadd("z-resources-4",					"tungsten-ore",																				"f")
	
	
	iadd("z-resources-7",				"plastic-bar",							"a")
	aadd("z-resources-7",					"silicon",																						"b")
	aadd("z-resources-7",					"bob-silicon-plate",																	"c")
	aadd("z-resources-7",					"resin",																							"d")
	aadd("z-resources-7",					"bob-resin-wood",																			"e")
	aadd("z-resources-7",					"bob-resin-oil",																			"f")
	aadd("z-resources-7",					"rubber",																							"g")
	aadd("z-resources-7",					"bob-rubber",																					"h")
	aadd("z-resources-7",					"carbon",																							"i")
	aadd("z-resources-7",					"glass",																							"j")
	aadd("z-resources-7",					"quartz-glass",																				"k")
	
	radd("z-resources-9",				"plastic-bar",							"a")
	aadd("z-resources-9",					"salt",																								"b")
	aadd("z-resources-9",					"alumina",																						"c")
	aadd("z-resources-9",					"cobalt-oxide",																				"d")
	iadd("z-resources-9",				"lithium-cobalt-oxide",				"e")
	iadd("z-resources-9",				"silicon-powder",						"f")
	aadd("z-resources-9",					"lead-oxide",																					"g")
	aadd("z-resources-9",					"silver-oxide",																				"h")
	aadd("z-resources-9",					"tungsten-oxide",																			"i")
	
	aadd("z-resources-10",				"calcium-chloride",																		"a")
	aadd("z-resources-10",				"lithium-chloride",																		"b")
	radd("z-resources-10",				"lithium-cobalt-oxide",								"c")
	radd("z-resources-10",				"silicon-powder",										"d")
	aadd("z-resources-10",				"silicon-wafer",																			"e")
	aadd("z-resources-10",				"silicon-carbide",																		"f")
	aadd("z-resources-10",				"silicon-nitride",																		"g")
	aadd("z-resources-10",				"silver-nitrate",																			"h")
	aadd("z-resources-10",				"petroleum-jelly",																		"i")
	aadd("z-resources-10",				"lithium-perchlorate",																"j")
	aadd("z-resources-10",				"sodium-hydroxide",																		"k")
	
	aadd("z-resources-11",				"ruby-ore",																						"a")
	aadd("z-resources-11",				"sapphire-ore",																				"b")
	aadd("z-resources-11",				"emerald-ore",																				"c")
	aadd("z-resources-11",				"amethyst-ore",																				"d")
	aadd("z-resources-11",				"topaz-ore",																					"e")
	aadd("z-resources-11",				"diamond-ore",																				"f")
	
	aadd("z-resources-12",				"ruby-3",																							"a")
	aadd("z-resources-12",				"sapphire-3",																					"b")
	aadd("z-resources-12",				"emerald-3",																					"c")
	aadd("z-resources-12",				"amethyst-3",																					"d")
	aadd("z-resources-12",				"topaz-3",																						"e")
	aadd("z-resources-12",				"diamond-3",																					"f")
	
	aadd("z-resources-13",				"ruby-4",																							"a")
	aadd("z-resources-13",				"sapphire-4",																					"b")
	aadd("z-resources-13",				"emerald-4",																					"c")
	aadd("z-resources-13",				"amethyst-4",																					"d")
	aadd("z-resources-13",				"topaz-4",																						"e")
	aadd("z-resources-13",				"diamond-4",																					"f")
	
	aadd("z-resources-14",				"ruby-5",																							"a")
	aadd("z-resources-14",				"sapphire-5",																					"b")
	aadd("z-resources-14",				"emerald-5",																					"c")
	aadd("z-resources-14",				"amethyst-5",																					"d")
	aadd("z-resources-14",				"topaz-5",																						"e")
	aadd("z-resources-14",				"diamond-5",																					"f")
	
	if z_balance.add_gems then
		zgc.add_newRessource_min_max("gem-ore",						"ruby-3",		1,1,0.2)
		zgc.add_newRessource_min_max("gem-ore",						"sapphire-3",	1,1,0.2)
		zgc.add_newRessource_min_max("gem-ore",						"emerald-3",	1,1,0.1)
		zgc.add_newRessource_min_max("gem-ore",						"amethyst-3",	1,1,0.1)
	end
	
	if z_balance.bob_synthetic then
		ahide("synthetic-wood")
		zgc.r_replace_ingredient_in_all("synthetic-wood",				"wood")
	end
end
do	--[[plates]]--
	
	aadd("z-plates-0",						"iron-plate",																					"a")
	aadd("z-plates-0",						"copper-plate",																				"b")
	aadd("z-plates-0",						"lead-plate",																					"c")
	aadd("z-plates-0",						"tin-plate",																					"d")
	aadd("z-plates-0",						"zinc-plate",																					"e")
	aadd("z-plates-0",						"aluminium-plate",																		"f")
	aadd("z-plates-0",						"gold-plate",																					"g")
	
	aadd("z-plates-4",						"brass-alloy",																				"a")
	aadd("z-plates-4",						"cobalt-oxide-from-copper",														"b")
	aadd("z-plates-4",						"bob-lead-plate",																			"c")
	aadd("z-plates-4",						"silver-from-lead",																		"d")
	aadd("z-plates-4",						"bob-zinc-plate",																			"e")
	aadd("z-plates-4",						"bob-aluminium-plate",																"f")
	aadd("z-plates-4",						"bob-gold-plate",																			"g")
	aadd("z-plates-4",						"bronze-alloy",																				"h")
	aadd("z-plates-4",						"tungsten-carbide",																		"i")
	
	aadd("z-plates-9",						"powdered-tungsten",																	"a")
	aadd("z-plates-9",						"alumina",																						"b")
	aadd("z-plates-9",						"lithium",																						"c")
	
	aadd("z-plates-10",						"cobalt-plate",																				"a")
	aadd("z-plates-10",						"bob-nickel-plate",																		"b")
	aadd("z-plates-10",						"nickel-plate",																				"c")
	aadd("z-plates-10",						"silver-plate",																				"d")
	aadd("z-plates-10",						"steel-plate",																				"e")
	aadd("z-plates-10",						"bob-tungsten-plate",																	"f")
	aadd("z-plates-10",						"tungsten-plate",																			"g")
	aadd("z-plates-10",						"titanium-plate",																			"h")
	aadd("z-plates-10",						"bob-titanium-plate",																	"i")
	
	aadd("z-plates-11",						"copper-tungsten-alloy",															"a")
	aadd("z-plates-11",						"cobalt-steel-alloy",																	"b")
	aadd("z-plates-11",						"electrum-alloy",																			"c")
	aadd("z-plates-11",						"invar-alloy",																				"d")
	aadd("z-plates-11",						"nitinol-alloy",																			"e")
	aadd("z-plates-11",						"alien-orange-alloy",																	"f")
	aadd("z-plates-11",						"alien-blue-alloy",																		"g")
	aadd("z-plates-11",						"gunmetal-alloy",																			"h")
	
	if data.raw.recipe["lead-plate"] then ahide("5d-lead-plate") end
	if data.raw.recipe["tin-plate"] then ahide("5d-tin-plate") end
	
	if z_balance.bob_warfare then
		ahide("gunmetal-alloy")
		zgc.t_remove_recipe_unlock("zinc-processing", "gunmetal-alloy")
	end
end
do	--[[liquids]]--
	
	if not z_balance.chemistry then
		aadd("z-liquids-1",						"bob-oil-processing",																	"a")
		aadd("z-liquids-1",						"basic-oil-processing",																"b")
		aadd("z-liquids-1",						"advanced-oil-processing",														"d")
		aadd("z-liquids-1",						"ground-water",																				"e")
		aadd("z-liquids-1",						"oil-processing-with-sulfur",													"e")
		aadd("z-liquids-1",						"oil-processing-with-sulfur-dioxide",									"e")
		aadd("z-liquids-1",						"oil-processing-with-sulfur-dioxide-2",								"e")
		aadd("z-liquids-1",						"oil-processing-with-sulfur-dioxide-3",								"e")
		
		aadd("z-liquids-3",						"water",																							"a")
		aadd("z-liquids-3",						"lithia-water",																				"b")
		aadd("z-liquids-3",						"coal-cracking",																			"d")
		aadd("z-liquids-3",						"liquid-fuel",																				"e")
		aadd("z-liquids-3",						"lubricant",																					"f")
		aadd("z-liquids-3",						"bob-liquid-air",																			"g")
		
		else
		aadd("z-chemistry-0",					"gas-canister",																				"a")
		
		aadd("z-chemistry-1",					"bob-oil-processing",																	"a")
		aadd("z-chemistry-1",					"basic-oil-processing",																"b")
		aadd("z-chemistry-1",					"advanced-oil-processing",														"d")
		aadd("z-chemistry-1",					"ground-water",																				"e")
		aadd("z-chemistry-1",					"oil-processing-with-sulfur",													"e")
		aadd("z-chemistry-1",					"oil-processing-with-sulfur-dioxide",									"e")
		aadd("z-chemistry-1",					"oil-processing-with-sulfur-dioxide-2",								"e")
		aadd("z-chemistry-1",					"oil-processing-with-sulfur-dioxide-3",								"e")
		
		aadd("z-chemistry-3",					"water",																							"a")
		aadd("z-chemistry-3",					"lithia-water",																				"b")
		aadd("z-chemistry-3",					"coal-cracking",																			"d")
		aadd("z-chemistry-3",					"liquid-fuel",																				"e")
		aadd("z-chemistry-3",					"lubricant",																					"f")
		aadd("z-chemistry-3",					"bob-liquid-air",																			"g")
	end
	if z_balance.hide_canisters then
		rhide("empty-canister")
		rhide("gas-canister")
		
		rhide("oxygen-canister")
		rhide("hydrogen-canister")
		rhide("nitrogen-canister")
		rhide("chlorine-canister")
		rhide("hydrogen-chloride-canister")
		rhide("petroleum-gas-canister")
		rhide("liquid-fuel-canister")
		rhide("ferric-chloride-canister")
		
		rhide("empty-oxygen-canister")
		rhide("empty-hydrogen-canister")
		rhide("empty-nitrogen-canister")
		rhide("empty-chlorine-canister")
		rhide("empty-hydrogen-chloride-canister")
		rhide("empty-petroleum-gas-canister")
		rhide("empty-liquid-fuel-canister")
		rhide("empty-ferric-chloride-canister")
		else
	end
	
end
do	--[[chemistry]]--
	aadd("z-chemistry-0",					"sulfuric-acid",																			"a")
	aadd("z-chemistry-0",					"sulfuric-acid-2",																		"b")
	aadd("z-chemistry-0",					"nitrogen",																						"d")
	aadd("z-chemistry-0",					"nitrogen-dioxide",																		"e")
	aadd("z-chemistry-0",					"nitric-acid",																				"g")
	aadd("z-chemistry-0",					"tungstic-acid",																			"h")
	aadd("z-chemistry-0",					"gun-cotton",																					"i")
	aadd("z-chemistry-0",					"gun-cotton-synthetic",																"j")
	
	aadd("z-chemistry-1",					"water-electrolysis",																	"a")
	aadd("z-chemistry-1",					"salt-water-electrolysis",														"b")
	aadd("z-chemistry-1",					"salt-water-electrolysis-2",													"c")
	aadd("z-chemistry-1",					"petroleum-gas-cracking",															"d")
	aadd("z-chemistry-1",					"lithium-water-electrolysis",													"e")
	aadd("z-chemistry-1",					"hydrogen-chloride",																	"f")
	aadd("z-chemistry-1",					"nitroglycerin",																			"g")
	aadd("z-chemistry-1",					"sulfuric-nitric-acid",																"h")
	aadd("z-chemistry-1",					"glycerol",																						"i")
	
	aadd("z-chemistry-2",					"heavy-oil-cracking",																	"a")
	aadd("z-chemistry-2",					"light-oil-cracking",																	"b")
	aadd("z-chemistry-2",					"ferric-chloride-solution",														"d")
	
	aadd("z-chemistry-3",					"solid-fuel-from-heavy-oil",													"a")
	aadd("z-chemistry-3",					"solid-fuel-from-light-oil",													"b")
	aadd("z-chemistry-3",					"solid-fuel-from-petroleum-gas",											"c")
	aadd("z-chemistry-3",					"solid-fuel-from-hydrogen",														"d")
	
	if allow_changes and i_exist("nitroglycerin") then
		data.raw.recipe["nitroglycerin"].ingredients = {}
		data.raw.recipe["nitroglycerin"].ingredients =
		{
			{name="sulfur", amount=12},
			{type="fluid", name="nitric-acid", amount=3},
			{type="fluid", name="light-oil", amount=1},
		}
		aadd("z-chemistry-1",					"nitroglycerin",																			"f")
		
		ahide("sulfuric-nitric-acid")
		ahide("glycerol")
		switch_tech("nitroglycerin-processing")
		zgc.t_remove_recipe_unlock("nitroglycerin-processing", "glycerol")
	end
	if z_balance.bob_warfare then
		ahide("nitroglycerin")
		ahide("sulfuric-nitric-acid")
		ahide("glycerol")
		switch_tech("nitroglycerin-processing")
		zgc.t_remove_recipe_unlock("nitroglycerin-processing", "glycerol")
	end
end
do	--[[automatization]]--
	aadd("z-automatization-0",		"express-inserter",																		"d")
	
	aadd("z-automatization-1",		"express-filter-inserter",														"g")
	aadd("z-automatization-1",		"express-filter-inserter",														"b")
	aadd("z-automatization-1",		"express-stack-filter-inserter",											"j")
	
	aadd("z-automatization-2",		"stack-filter-inserter",															"h")
	aadd("z-automatization-2",		"express-stack-inserter",															"i")
	
	aadd("z-automatization-3",		"express-inserter",																		"g")
	aadd("z-automatization-3",		"express-stack-inserter",															"h")
	aadd("z-automatization-3",		"express-stack-filter-inserter",											"i")
	
  if z_balance.bob_inserters then
		ahide("long-handed-inserter",		"inserter")
		ahide("5d-inserter-speed1-range3","inserter")
		ahide("5d-inserter-speed1-range1-close","inserter")
		ahide("5d-inserter-speed1-range2-close","inserter")
		ahide("5d-inserter-speed1-range3-close","inserter")
		ahide("5d-inserter-speed2-range2","fast-inserter")
		ahide("5d-inserter-speed2-range3","fast-inserter")
		ahide("5d-inserter-speed2-range1-close","fast-inserter")
		ahide("5d-inserter-speed2-range2-close","fast-inserter")
		ahide("5d-inserter-speed2-range3-close","fast-inserter")
		ahide("5d-inserter-speed3-range1","express-inserter")
		ahide("5d-inserter-speed3-range2","express-inserter")
		ahide("5d-inserter-speed3-range3","express-inserter")
		ahide("5d-inserter-speed3-range1-close","express-inserter")
		ahide("5d-inserter-speed3-range2-close","express-inserter")
		ahide("5d-inserter-speed3-range3-close","express-inserter")
		ahide("5d-basic-inserter-left-90d","inserter")
		ahide("5d-basic-inserter-right-90d","inserter")
		ahide("5d-basic-inserter-left-90d-close","inserter")
		ahide("5d-basic-inserter-right-90d-close","inserter")
		ahide("5d-fast-inserter-left-90d","fast-inserter")
		ahide("5d-fast-inserter-right-90d","fast-inserter")
		ahide("5d-fast-inserter-left-90d-close","fast-inserter")
		ahide("5d-fast-inserter-right-90d-close","fast-inserter")
		ahide("5d-extreme-inserter-left-90d","express-inserter")
		ahide("5d-extreme-inserter-right-90d","express-inserter")
		ahide("5d-extreme-inserter-left-90d-close","express-inserter")
		ahide("5d-extreme-inserter-right-90d-close","express-inserter")
		ahide("5d-inserter-smart-speed2-range1-close","filter-inserter")
		ahide("5d-inserter-smart-speed2-range2","filter-inserter")
		ahide("5d-inserter-smart-speed2-range2-close","filter-inserter")
		ahide("5d-inserter-smart-speed3-range1","express-filter-inserter")
		ahide("5d-inserter-smart-speed3-range1-close","express-filter-inserter")
		
		switch_tech("inserters")
		switch_tech("inserters-2")
		switch_tech("inserters-3")
		switch_tech("close")
		switch_tech("close-2")
		switch_tech("close-3")
		switch_tech("side-inserters")
		switch_tech("side-inserters-2")
		switch_tech("side-inserters-3")
		switch_tech("smart-inserters")
	end
end
do	--[[transport]]--
	
	aadd("z-transport-0",					"green-transport-belt",																"d")
	aadd("z-transport-0",					"purple-transport-belt",															"e")
	
	aadd("z-transport-2",					"green-underground-belt",															"d")
	aadd("z-transport-2",					"purple-underground-belt",														"e")
	
	aadd("z-transport-5",					"green-splitter",																			"d")
	aadd("z-transport-5",					"purple-splitter",																		"e")
	
	aadd("z-transport-7",					"bob-valve",																					"a")
	
	aadd("z-transport-10",				"stone-pipe",																					"a")
	aadd("z-transport-10",				"pipe",																								"b")
	aadd("z-transport-10",				"copper-pipe",																				"c")
	aadd("z-transport-10",				"steel-pipe",																					"d")
	aadd("z-transport-10",				"bronze-pipe",																				"e")
	aadd("z-transport-10",				"plastic-pipe",																				"f")
	aadd("z-transport-10",				"brass-pipe",																					"g")
	aadd("z-transport-10",				"ceramic-pipe",																				"h")
	aadd("z-transport-10",				"titanium-pipe",																			"i")
	aadd("z-transport-10",				"tungsten-pipe",																			"j")
	
	aadd("z-transport-11",				"stone-pipe-to-ground",																"a")
	aadd("z-transport-11",				"pipe-to-ground",																			"b")
	aadd("z-transport-11",				"copper-pipe-to-ground",															"c")
	aadd("z-transport-11",				"steel-pipe-to-ground",																"d")
	aadd("z-transport-11",				"bronze-pipe-to-ground",															"e")
	aadd("z-transport-11",				"plastic-pipe-to-ground",															"f")
	aadd("z-transport-11",				"brass-pipe-to-ground",																"g")
	aadd("z-transport-11",				"ceramic-pipe-to-ground",															"h")
	aadd("z-transport-11",				"titanium-pipe-to-ground",														"i")
	aadd("z-transport-11",				"tungsten-pipe-to-ground",														"j")
	
  if use_graphics_tunnings then
		local function set_sprite(pic)
			local pic = pic or "u_line_y"
			return {
				filename = "__ZGroupChange__/graphics/entity/"..pic..".png",
				priority = "high",
				width = 64,
				height = 64,
				x = 64,
				scale = 0.5
			}
		end
		
		if i_exist("green-underground-belt") then
		data.raw["underground-belt"]["green-underground-belt"].underground_sprite = set_sprite("u_line_g") end
		if i_exist("purple-underground-belt") then
		data.raw["underground-belt"]["purple-underground-belt"].underground_sprite = set_sprite("u_line_p") end
	end
	
  if allow_changes then
		if i_exist("5d-mk4-transport-belt") then
			ahide("green-transport-belt")
			ahide("green-underground-belt")
			ahide("green-splitter")
			ahide("purple-transport-belt")
			ahide("purple-underground-belt")
			ahide("purple-splitter")
			switch_tech("bob-logistics-4")
			switch_tech("bob-logistics-5")
		end
		if z_balance.bob_pipes then
			if data.raw.item["5d-pipe-mk2"] then
				ahide("copper-pipe")
				ahide("steel-pipe")
				ahide("copper-pipe-to-ground")
				ahide("steel-pipe-to-ground")
				zgc.r_replace_ingredient_in_all("copper-pipe",					"pipe")
				zgc.r_replace_ingredient_in_all("steel-pipe",					"pipe")
				else
				aadd("z-transport-9",					"copper-pipe",																				"b")
				aadd("z-transport-9",					"steel-pipe",																					"d")
				
				aadd("z-transport-10",				"copper-pipe-to-ground",															"b")
				aadd("z-transport-10",				"steel-pipe-to-ground",																"d")
			end
			ahide("stone-pipe")
			ahide("bronze-pipe")
			ahide("plastic-pipe")
			ahide("brass-pipe")
			ahide("ceramic-pipe")
			ahide("titanium-pipe")
			ahide("tungsten-pipe")
			ahide("stone-pipe-to-ground")
			ahide("bronze-pipe-to-ground")
			ahide("plastic-pipe-to-ground")
			ahide("brass-pipe-to-ground")
			ahide("ceramic-pipe-to-ground")
			ahide("titanium-pipe-to-ground")
			ahide("tungsten-pipe-to-ground")
			zgc.r_replace_ingredient_in_all("bronze-pipe",					"pipe")
			
			if data.raw.item["5d-pipe-mk2"] then
				zgc.r_replace_ingredient_in_all("steel-pipe",					"5d-pipe-mk2")
				zgc.r_replace_ingredient_in_all("plastic-pipe",					"5d-pipe-mk2")
				zgc.r_replace_ingredient_in_all("brass-pipe",					"5d-pipe-mk2")
				zgc.r_replace_ingredient_in_all("ceramic-pipe",					"5d-pipe-mk3")
				zgc.r_replace_ingredient_in_all("titanium-pipe",				"5d-pipe-mk3")
				zgc.r_replace_ingredient_in_all("tungsten-pipe",				"5d-pipe-mk3")
				else
				zgc.r_replace_ingredient_in_all("plastic-pipe",					"copper-pipe")
				zgc.r_replace_ingredient_in_all("brass-pipe",					"copper-pipe")
				zgc.r_replace_ingredient_in_all("ceramic-pipe",					"steel-pipe")
				zgc.r_replace_ingredient_in_all("titanium-pipe",				"steel-pipe")
				zgc.r_replace_ingredient_in_all("tungsten-pipe",				"steel-pipe")
			end
		end
	end
end
do	--[[logistic]]--
	aadd("z-logistic-2",					"roboport",																						"a")
	aadd("z-logistic-2",					"bob-roboport-2",																			"b")
	aadd("z-logistic-2",					"bob-roboport-3",																			"e")
	aadd("z-logistic-2",					"bob-roboport-4",																			"g")
	
	aadd("z-logistic-3",					"bob-logistic-zone-expander",													"f")
	aadd("z-logistic-3",					"bob-logistic-zone-expander-2",												"g")
	aadd("z-logistic-3",					"bob-logistic-zone-expander-3",												"h")
	aadd("z-logistic-3",					"bob-logistic-zone-expander-4",												"i")
	aadd("z-logistic-3",					"bob-logistic-zone-interface",												"j")
	
	aadd("z-logistic-4",					"bob-robo-charge-port",																"a")
	aadd("z-logistic-4",					"bob-robo-charge-port-2",															"b")
	aadd("z-logistic-4",					"bob-robo-charge-port-3",															"c")
	aadd("z-logistic-4",					"bob-robo-charge-port-4",															"d")
	aadd("z-logistic-4",					"bob-robo-charge-port-large",													"e")
	aadd("z-logistic-4",					"bob-robo-charge-port-large-2",												"f")
	aadd("z-logistic-4",					"bob-robo-charge-port-large-3",												"g")
	aadd("z-logistic-4",					"bob-robo-charge-port-large-4",												"h")
	
	aadd("z-logistic-5",					"logistic-robot",																			"a")
	aadd("z-logistic-5",					"bob-logistic-robot-2",																"b")
	aadd("z-logistic-5",					"bob-logistic-robot-3",																"e")
	aadd("z-logistic-5",					"bob-logistic-robot-4",																"g")
	
	aadd("z-logistic-6",					"construction-robot",																	"a")
	aadd("z-logistic-6",					"bob-construction-robot-2",														"b")
	aadd("z-logistic-6",					"bob-construction-robot-3",														"e")
	aadd("z-logistic-6",					"bob-construction-robot-4",														"g")
	
	aadd("z-logistic-10",					"bob-robochest",																			"e")
	aadd("z-logistic-10",					"bob-robochest-2",																		"f")
	aadd("z-logistic-10",					"bob-robochest-3",																		"g")
	aadd("z-logistic-10",					"bob-robochest-4",																		"h")
	
	aadd("z-logistic-11",					"tinned-copper-cable",																"f")
	aadd("z-logistic-11",					"insulated-cable",																		"g")
	aadd("z-logistic-11",					"gilded-copper-cable",																"h")
	
	
	if use_graphics_tunnings then
		zgc.set_icon("bob-roboport-3", "__ZGroupChange__/graphics/icons/roboport2.png")
		zgc.set_icon("bob-roboport-4", "__ZGroupChange__/graphics/icons/roboport3.png")
		
		if data.raw["roboport"]["bob-roboport-3"] then
			data.raw["roboport"]["bob-roboport-3"].base.filename = "__ZGroupChange__/graphics/entity/roboport2-base.png"
		end
		if data.raw["roboport"]["bob-roboport-3"] then
			data.raw["roboport"]["bob-roboport-3"].base_patch.filename = "__ZGroupChange__/graphics/entity/roboport2-base-patch.png"
		end
		if data.raw["roboport"]["bob-roboport-3"] then
			data.raw["roboport"]["bob-roboport-3"].base_animation.filename = "__ZGroupChange__/graphics/entity/roboport2-base-animation.png"
		end
		if data.raw["roboport"]["bob-roboport-3"] then
			data.raw["roboport"]["bob-roboport-3"].door_animation_up.filename = "__ZGroupChange__/graphics/entity/roboport2-door-up.png"
		end
		if data.raw["roboport"]["bob-roboport-3"] then
			data.raw["roboport"]["bob-roboport-3"].door_animation_down.filename = "__ZGroupChange__/graphics/entity/roboport2-door-down.png"
		end
		if data.raw["roboport"]["bob-roboport-3"] then
			data.raw["roboport"]["bob-roboport-3"].recharging_animation.filename = "__ZGroupChange__/graphics/entity/roboport2-recharging.png"
		end
		if data.raw["roboport"]["bob-roboport-4"] then
			data.raw["roboport"]["bob-roboport-4"].base.filename = "__ZGroupChange__/graphics/entity/roboport3-base.png"
		end
		if data.raw["roboport"]["bob-roboport-4"] then
			data.raw["roboport"]["bob-roboport-4"].base_patch.filename = "__ZGroupChange__/graphics/entity/roboport3-base-patch.png"
		end
	end
	
	if i_exist("logistic-chest-storage") and i_exist("5d-storage") and allow_changes then
		ahide("logistic-chest-storage-2")
		ahide("logistic-chest-requester-2")
		ahide("logistic-chest-passive-provider-2")
		ahide("logistic-chest-active-provider-2")
	end
	
	if i_exist("bob-roboport-2") and i_exist("5d-roboport-2") and allow_changes then
		ahide("5d-roboport-2")
		ahide("5d-logistic-robot-2")
		ahide("5d-construction-robot-2")
		switch_tech("robots-2")
	end
end
do	--[[energy]]--
	aadd("z-energy-1",						"boiler-2",																						"b")
	aadd("z-energy-1",						"boiler-3",																						"e")
	aadd("z-energy-1",						"boiler-4",																						"h")
	
	aadd("z-energy-2",						"steam-engine-2",																			"b")
	aadd("z-energy-2",						"steam-engine-3",																			"e")
	
	aadd("z-energy-3",						"steam-turbine",																			"a")
	aadd("z-energy-3",						"steam-turbine-2",																		"b")
	aadd("z-energy-3",						"steam-turbine-3",																		"c")
	
	aadd("z-energy-5",						"solar-panel-2",																			"b")
	aadd("z-energy-5",						"solar-panel-3",																			"e")
	
	aadd("z-energy-6",						"solar-panel-small",																	"a")
	aadd("z-energy-6",						"solar-panel-small-2",																"b")
	aadd("z-energy-6",						"solar-panel-small-3",																"c")
	aadd("z-energy-6",						"solar-panel-large",																	"d")
	aadd("z-energy-6",						"solar-panel-large-2",																"e")
	aadd("z-energy-6",						"solar-panel-large-3",																"f")
	
	aadd("z-energy-9",						"slow-accumulator",																		"a")
	aadd("z-energy-9",						"slow-accumulator-2",																	"d")
	aadd("z-energy-9",						"slow-accumulator-3",																	"c")
	aadd("z-energy-9",						"large-accumulator",																	"d")
	aadd("z-energy-9",						"large-accumulator-2",																"e")
	aadd("z-energy-9",						"large-accumulator-3",																"f")
	aadd("z-energy-9",						"fast-accumulator",																		"g")
	aadd("z-energy-9",						"fast-accumulator-2",																	"h")
	aadd("z-energy-9",						"fast-accumulator-3",																	"i")
	
	aadd("z-energy-10",						"medium-electric-pole-2",															"d")
	aadd("z-energy-10",						"medium-electric-pole-3",															"f")
	aadd("z-energy-10",						"medium-electric-pole-4",															"h")
	
	aadd("z-energy-11",						"big-electric-pole-2",																"c")
	aadd("z-energy-11",						"big-electric-pole-3",																"e")
	aadd("z-energy-11",						"big-electric-pole-4",																"g")
	
	aadd("z-energy-12",						"substation",																					"a")
	aadd("z-energy-12",						"substation-2",																				"b")
	aadd("z-energy-12",						"substation-3",																				"d")
	aadd("z-energy-12",						"substation-4",																				"f")
	
	if i_exist("boiler-2") and i_exist("5d-boiler") and allow_changes then
		ahide("boiler-2")
		ahide("boiler-3")
		ahide("boiler-4")
		switch_tech("bob-boiler-1")
		switch_tech("bob-boiler-2")
		switch_tech("bob-boiler-3")
	end
	
	if i_exist("steam-engine-2") and i_exist("5d-steam-engine-2") and allow_changes then
		ahide("steam-engine-2")
		ahide("steam-engine-3")
		switch_tech("steam-engine-generator-1")
		switch_tech("steam-engine-generator-2")
	end
	
	if allow_changes
		and i_not_exist("5d-basic-accumulator-2")
		and i_not_exist("y-accumulator-m")
		and i_exist("slow-accumulator") then
		ahide("accumulator")
	end
	
	if i_exist("5d-solar-panel-2") or i_exist("y_alien_solar") and allow_changes then
		ahide("solar-panel-2")
		ahide("solar-panel-3")
	end
end
do	--[[defense]]--
	aadd("z-defense-0",						"reinforced-wall",																		"d")
	
	aadd("z-defense-1",						"reinforced-gate",																		"c")
	
	aadd("z-defense-3",						"flamethrower-turret",																"a")
	aadd("z-defense-3",						"bob-sniper-turret-1",																"b")
	aadd("z-defense-3",						"bob-sniper-turret-2",																"c")
	aadd("z-defense-3",						"bob-sniper-turret-3",																"d")
	
	aadd("z-defense-4",						"gun-turret",																					"a")
	aadd("z-defense-4",						"bob-gun-turret-2",																		"d")
	aadd("z-defense-4",						"bob-gun-turret-3",																		"f")
	aadd("z-defense-4",						"bob-gun-turret-4",																		"g")
	aadd("z-defense-4",						"bob-gun-turret-5",																		"h")
	
	aadd("z-defense-5",						"laser-turret",																				"b")
	aadd("z-defense-5",						"bob-laser-turret-2",																	"d")
	aadd("z-defense-5",						"bob-laser-turret-3",																	"e")
	aadd("z-defense-5",						"bob-laser-turret-4",																	"f")
	aadd("z-defense-5",						"bob-laser-turret-5",																	"g")
	
	aadd("z-defense-8",						"radar-2",																						"b")
	aadd("z-defense-8",						"radar-3",																						"d")
	aadd("z-defense-8",						"radar-4",																						"e")
	aadd("z-defense-8",						"radar-5",																						"f")
	
	if i_exist("bob-gun-turret-2") then
		rhide("flamethrower-turret")
		rhide("bob-sniper-turret-1")
		rhide("bob-sniper-turret-2")
		rhide("bob-sniper-turret-3")
		
		rhide("gun-turret")
		rhide("bob-gun-turret-2")
		rhide("bob-gun-turret-3")
		rhide("bob-gun-turret-4")
		rhide("bob-gun-turret-5")
		
		rhide("laser-turret")
		rhide("bob-laser-turret-2")
		rhide("bob-laser-turret-3")
		rhide("bob-laser-turret-4")
		rhide("bob-laser-turret-5")
	end
end
do	--[[armor]]--
	aadd("z-armor-4",							"light-armor",																				"a")
	aadd("z-armor-4",							"heavy-armor",																				"b")
	aadd("z-armor-4",							"heavy-armor-2",																			"c")
	aadd("z-armor-4",							"heavy-armor-3",																			"d")
	aadd("z-armor-4",							"modular-armor",																			"e")
	
	aadd("z-armor-5",							"power-armor",																				"a")
	aadd("z-armor-5",							"power-armor-mk2",																		"b")
	aadd("z-armor-5",							"bob-power-armor-mk3",																"c")
	aadd("z-armor-5",							"bob-power-armor-mk4",																"e")
	aadd("z-armor-5",							"bob-power-armor-mk5",																"f")
	
	aadd("z-armor-7",							"exoskeleton-equipment",															"a")
	aadd("z-armor-7",							"exoskeleton-equipment-2",														"b")
	aadd("z-armor-7",							"exoskeleton-equipment-3",														"c")
	aadd("z-armor-7",							"night-vision-equipment",															"d")
	aadd("z-armor-7",							"night-vision-equipment-2",														"e")
	aadd("z-armor-7",							"night-vision-equipment-3",														"f")
	aadd("z-armor-7",							"personal-roboport-equipment",												"h")
	
	aadd("z-armor-8",							"solar-panel-equipment",															"a")
	aadd("z-armor-8",							"solar-panel-equipment-2",														"b")
	aadd("z-armor-8",							"solar-panel-equipment-3",														"c")
	aadd("z-armor-8",							"solar-panel-equipment-4",														"d")
	aadd("z-armor-8",							"fusion-reactor-equipment",														"e")
	aadd("z-armor-8",							"fusion-reactor-equipment-2",													"f")
	aadd("z-armor-8",							"fusion-reactor-equipment-3",													"h")
	aadd("z-armor-8",							"fusion-reactor-equipment-4",													"i")
	
	aadd("z-armor-9",							"battery-equipment",																	"a")
	aadd("z-armor-9",							"battery-mk2-equipment",															"b")
	aadd("z-armor-9",							"battery-mk3-equipment",															"c")
	aadd("z-armor-9",							"battery-mk4-equipment",															"d")
	aadd("z-armor-9",							"battery-mk5-equipment",															"e")
	aadd("z-armor-9",							"battery-mk6-equipment",															"f")
	
	aadd("z-armor-10",						"personal-laser-defense-equipment",										"a")
	aadd("z-armor-10",						"personal-laser-defense-equipment-2",									"b")
	aadd("z-armor-10",						"personal-laser-defense-equipment-3",									"c")
	aadd("z-armor-10",						"personal-laser-defense-equipment-4",									"d")
	aadd("z-armor-10",						"personal-laser-defense-equipment-5",									"e")
	aadd("z-armor-10",						"personal-laser-defense-equipment-6",									"f")
	aadd("z-armor-10",						"discharge-defense-equipment",												"h")
	
	aadd("z-armor-11",						"energy-shield-equipment",														"a")
	aadd("z-armor-11",						"energy-shield-mk2-equipment",												"b")
	aadd("z-armor-11",						"energy-shield-mk3-equipment",												"c")
	aadd("z-armor-11",						"energy-shield-mk4-equipment",												"d")
	aadd("z-armor-11",						"energy-shield-mk5-equipment",												"e")
	aadd("z-armor-11",						"energy-shield-mk6-equipment",												"f")
	
	for _,recipe in pairs(data.raw.item) do
		if recipe.subgroup == "vehicle-equipment" then
			zgc.get_group_name("z-armor-23", recipe.name)
			aadd("z-armor-23",		recipe.name,				"a["..recipe.name.."]")
		end
	end
	
end
do	--[[intermediate]]--
	
	aadd("z-intermediate-1",			"basic-circuit-board",																"a")
	aadd("z-intermediate-1",			"circuit-board",																			"c")
	aadd("z-intermediate-1",			"superior-circuit-board",															"e")
	aadd("z-intermediate-1",			"multi-layer-circuit-board",													"g")
	aadd("z-intermediate-1",			"advanced-processing-unit",														"h")
	aadd("z-intermediate-1",			"intergrated-electronics",														"i")
	aadd("z-intermediate-1",			"processing-electronics",															"j")
	
	aadd("z-intermediate-2",			"wooden-board",																				"a")
	aadd("z-intermediate-2",			"phenolic-board",																			"b")
	aadd("z-intermediate-2",			"fibreglass-board",																		"c")
	
	aadd("z-intermediate-3",			"solder-alloy",																				"d")
	aadd("z-intermediate-3",			"solder-alloy-lead",																	"e")
	aadd("z-intermediate-3",			"solder",																							"f")
	aadd("z-intermediate-3",			"module-case",																				"g")
	aadd("z-intermediate-3",			"basic-electronic-components",												"h")
	aadd("z-intermediate-3",			"electronic-components",															"i")
	
	aadd("z-intermediate-4",			"steel-gear-wheel",																		"e")
	aadd("z-intermediate-4",			"brass-gear-wheel",																		"f")
	aadd("z-intermediate-4",			"titanium-gear-wheel",																"g")
	aadd("z-intermediate-4",			"nitinol-gear-wheel",																	"h")
	aadd("z-intermediate-4",			"tungsten-gear-wheel",																"i")
	
	aadd("z-intermediate-5",			"steel-bearing-ball",																	"a")
	aadd("z-intermediate-5",			"ceramic-bearing-ball",																"b")
	aadd("z-intermediate-5",			"nitinol-bearing-ball",																"c")
	aadd("z-intermediate-5",			"titanium-bearing-ball",															"d")
	aadd("z-intermediate-5",			"steel-bearing",																			"e")
	aadd("z-intermediate-5",			"ceramic-bearing",																		"f")
	aadd("z-intermediate-5",			"nitinol-bearing",																		"g")
	aadd("z-intermediate-5",			"titanium-bearing",																		"h")
	
	aadd("z-intermediate-6",			"iron-stick",																					"a")
	aadd("z-intermediate-6",			"explosives",																					"b")
	aadd("z-intermediate-6",			"grinding-wheel",																			"c")
	aadd("z-intermediate-6",			"polishing-wheel",																		"d")
	aadd("z-intermediate-6",			"polishing-compound",																	"e")
	aadd("z-intermediate-6",			"bob-seedling",																				"f")
	aadd("z-intermediate-6",			"bob-basic-greenhouse-cycle",													"g")
	aadd("z-intermediate-6",			"bob-advanced-greenhouse-cycle",											"h")
	aadd("z-intermediate-6",			"fertiliser",																					"i")
	
	aadd("z-intermediate-7",			"battery",																						"a")
	aadd("z-intermediate-7",			"lithium-ion-battery",																"b")
	aadd("z-intermediate-7",			"silver-zinc-battery",																"c")
	aadd("z-intermediate-7",			"engine-unit",																				"d")
	aadd("z-intermediate-7",			"electric-engine-unit",																"e")
	aadd("z-intermediate-7",			"alien-artifact",																			"f")
	
	aadd("z-intermediate-10",			"flying-robot-frame",																	"a")
	aadd("z-intermediate-10",			"flying-robot-frame-2",																"b")
	aadd("z-intermediate-10",			"flying-robot-frame-3",																"c")
	aadd("z-intermediate-10",			"flying-robot-frame-4",																"d")
	aadd("z-intermediate-10",			"roboport-chargepad-1",																"e")
	aadd("z-intermediate-10",			"roboport-chargepad-2",																"f")
	aadd("z-intermediate-10",			"roboport-chargepad-3",																"g")
	aadd("z-intermediate-10",			"roboport-chargepad-4",																"h")
	
	aadd("z-intermediate-11",			"roboport-antenna-1",																	"a")
	aadd("z-intermediate-11",			"roboport-antenna-2",																	"b")
	aadd("z-intermediate-11",			"roboport-antenna-3",																	"c")
	aadd("z-intermediate-11",			"roboport-antenna-4",																	"d")
	aadd("z-intermediate-11",			"roboport-door-1",																		"e")
	aadd("z-intermediate-11",			"roboport-door-2",																		"f")
	aadd("z-intermediate-11",			"roboport-door-3",																		"g")
	aadd("z-intermediate-11",			"roboport-door-4",																		"h")
	
	aadd("z-intermediate-12",			"robot-brain-logistic",																"a")
	aadd("z-intermediate-12",			"robot-brain-logistic-2",															"b")
	aadd("z-intermediate-12",			"robot-brain-logistic-3",															"c")
	aadd("z-intermediate-12",			"robot-brain-logistic-4",															"d")
	aadd("z-intermediate-12",			"robot-brain-construction",														"e")
	aadd("z-intermediate-12",			"robot-brain-construction-2",													"f")
	aadd("z-intermediate-12",			"robot-brain-construction-3",													"g")
	aadd("z-intermediate-12",			"robot-brain-construction-4",													"h")
	
	aadd("z-intermediate-13",			"robot-tool-construction",														"a")
	aadd("z-intermediate-13",			"robot-tool-construction-2",													"b")
	aadd("z-intermediate-13",			"robot-tool-construction-3",													"c")
	aadd("z-intermediate-13",			"robot-tool-construction-4",													"d")
	aadd("z-intermediate-13",			"robot-tool-logistic",																"e")
	aadd("z-intermediate-13",			"robot-tool-logistic-2",															"f")
	aadd("z-intermediate-13",			"robot-tool-logistic-3",															"g")
	aadd("z-intermediate-13",			"robot-tool-logistic-4",															"h")
	
	aadd("z-intermediate-14",			"robot-brain-combat",																	"a")
	aadd("z-intermediate-14",			"robot-brain-combat-2",																"b")
	aadd("z-intermediate-14",			"robot-brain-combat-3",																"c")
	aadd("z-intermediate-14",			"robot-brain-combat-4",																"d")
	aadd("z-intermediate-14",			"robot-tool-combat",																	"e")
	aadd("z-intermediate-14",			"robot-tool-combat-2",																"f")
	aadd("z-intermediate-14",			"robot-tool-combat-3",																"g")
	aadd("z-intermediate-14",			"robot-tool-combat-4",																"h")
	
	aadd("z-intermediate-15",			"rocket-silo",																				"a")
	aadd("z-intermediate-15",			"low-density-structure",															"b")
	aadd("z-intermediate-15",			"rocket-fuel",																				"c")
	aadd("z-intermediate-15",			"rocket-part",																				"d")
	aadd("z-intermediate-15",			"rocket-control-unit",																"e")
	aadd("z-intermediate-15",			"satellite",																					"f")
	
	
  if false and allow_changes and i_exist("module-case") and i_exist("solder") then
		ahide("module-case",					"solder")
		for tech_name,tech in pairs(data.raw.technology) do
			if tech.unit.ingredients then
				for i,ingredient in pairs(tech.unit.ingredients) do
					if ingredient[1] == "module-case" then
						data.raw.technology[tech_name].unit.ingredients[i][1] = "solder"
					end
				end
			end
		end
	end
	
	if use_graphics_tunnings then
		zgc.set_icon("science-pack-4", "__ZGroupChange__/graphics/icons/science-pack4.png")
		zgc.set_icon("science-pack-gold", "__ZGroupChange__/graphics/icons/science-pack-gold.png")
	end
	if z_balance.bob_synthetic then
		rhide("wooden-board-synthetic")
		rhide("phenolic-board-synthetic")
		ahide("polishing-wheel-synthetic")
		zgc.t_remove_recipe_unlock("polishing", "polishing-wheel-synthetic")
		else
		aadd("z-intermediate-2",			"wooden-board-synthetic",															"a")
		aadd("z-intermediate-2",			"phenolic-board-synthetic",														"b")
		aadd("z-intermediate-2",			"fibreglass-board-synthetic",													"c")
		aadd("z-intermediate-6",			"polishing-wheel",																		"f")
		aadd("z-intermediate-6",			"polishing-wheel-synthetic",													"g")
	end
	
end
do	--[[module]]--
	
	aadd("z-module-0",						"lab-2",																							"b")
	aadd("z-module-0",						"lab-alien",																					"c")
	
	aadd("z-module-0",						"beacon-2",																						"f")
	aadd("z-module-0",						"beacon-3",																						"g")
	
	aadd("z-module-1",						"logistic-science-pack",															"g")
	
	if data.raw["item-subgroup"]["speed-module"] then
		aadd("speed-module",					"speed-module",																				"a")
		aadd("speed-module",					"speed-module-2",																			"b")
		aadd("speed-module",					"speed-module-3",																			"c")
	end
	if data.raw["item-subgroup"]["productivity-module"] then
		aadd("productivity-module",		"productivity-module",																"a")
		aadd("productivity-module",		"productivity-module-2",															"b")
		aadd("productivity-module",		"productivity-module-3",															"c")
	end
	if data.raw["item-subgroup"]["effectivity-module"] then
		aadd("effectivity-module",		"effectivity-module",																	"a")
		aadd("effectivity-module",		"effectivity-module-2",																"b")
		aadd("effectivity-module",		"effectivity-module-3",																"c")
	end
	
	for _,v in pairs(data.raw["item-subgroup"]) do
		if v.group == "module-intermediates" then v.group = "zgc-module" end
		if v.group == "bobmodules"			 then v.group = "zgc-module" end
		if v.name  == "god-module"			 then v.order = "f-0g" end
	end
	
	if allow_changes and i_exist("module-contact") then
		ahide("5d-speed-module-4")
		ahide("5d-speed-module-5")
		ahide("5d-productivity-module-4")
		ahide("5d-productivity-module-5")
		ahide("5d-effectivity-module-4")
		ahide("5d-effectivity-module-5")
		ahide("5d-pollution-module-1")
		ahide("5d-pollution-module-2")
		ahide("5d-pollution-module-3")
		ahide("5d-pollution-module-4")
		ahide("5d-pollution-module-5")
		ahide("5d-speed-effectivity-4")
		ahide("5d-speed-pollution-4")
		ahide("5d-speed-productivity-4")
		ahide("5d-pollution-effectivity-4")
		ahide("5d-pollution-productivity-4")
		ahide("5d-effectivity-productivity-4")
		ahide("5d-speed-effectivity-5")
		ahide("5d-speed-pollution-5")
		ahide("5d-speed-productivity-5")
		ahide("5d-pollution-effectivity-5")
		ahide("5d-pollution-productivity-5")
		ahide("5d-effectivity-productivity-5")
	end
	
end
do	--[[weaponry]]--
	if not z_balance.bob_warfare then
		aadd("z-weaponry-0",					"pistol",																							"a")
		aadd("z-weaponry-0",					"submachine-gun",																			"b")
		aadd("z-weaponry-0",					"shotgun",																						"c")
		aadd("z-weaponry-0",					"combat-shotgun",																			"d")
		aadd("z-weaponry-0",					"flamethrower",																				"e")
		aadd("z-weaponry-0",					"rocket-launcher",																		"f")
		aadd("z-weaponry-0",					"rifle",																							"g")
		aadd("z-weaponry-0",					"sniper-rifle",																				"h")
		aadd("z-weaponry-0",					"laser-rifle",																				"i")
		
		aadd("z-weaponry-1",					"bullet-magazine",																		"a")
		aadd("z-weaponry-1",					"shotgun-shell-casing",																"b")
		aadd("z-weaponry-1",					"shot",																								"c")
		aadd("z-weaponry-1",					"cordite",																						"d")
		aadd("z-weaponry-1",					"bullet-casing",																			"e")
		aadd("z-weaponry-1",					"magazine",																						"f")
		aadd("z-weaponry-1",					"flamethrower-ammo",																	"g")	
		
		aadd("z-weaponry-2",					"firearm-magazine",																		"a")
		aadd("z-weaponry-2",					"piercing-rounds-magazine",														"b")
		aadd("z-weaponry-2",					"ap-bullet-magazine",																	"c")
		aadd("z-weaponry-2",					"he-bullet-magazine",																	"d")
		aadd("z-weaponry-1",					"flame-bullet-magazine",															"e")
		aadd("z-weaponry-2",					"acid-bullet-magazine",																"f")
		aadd("z-weaponry-2",					"poison-bullet-magazine",															"g")
		aadd("z-weaponry-2",					"electric-bullet-magazine",														"h")
		aadd("z-weaponry-2",					"uranium-rounds-magazine",														"k")
		
		aadd("z-weaponry-3",					"shotgun-shell",																			"a")
		aadd("z-weaponry-3",					"piercing-shotgun-shell",															"b")
		aadd("z-weaponry-3",					"better-shotgun-shell",																"c")
		aadd("z-weaponry-3",					"shotgun-ap-shell",																		"d")
		aadd("z-weaponry-3",					"shotgun-explosive-shell",														"e")
		aadd("z-weaponry-3",					"shotgun-flame-shell",																"f")
		aadd("z-weaponry-3",					"shotgun-acid-shell",																	"g")
		aadd("z-weaponry-3",					"shotgun-poison-shell",																"h")
		aadd("z-weaponry-3",					"shotgun-electric-shell",															"i")
		
		aadd("z-weaponry-4",					"bullet",																							"a")
		aadd("z-weaponry-4",					"ap-bullet",																					"b")
		aadd("z-weaponry-4",					"he-bullet",																					"c")
		aadd("z-weaponry-4",					"flame-bullet",																				"d")
		aadd("z-weaponry-4",					"acid-bullet",																				"e")
		aadd("z-weaponry-4",					"poison-bullet",																			"f")
		aadd("z-weaponry-4",					"electric-bullet",																		"g")
		
		aadd("z-weaponry-5",					"bullet-projectile",																	"a")
		aadd("z-weaponry-5",					"ap-bullet-projectile",																"b")
		aadd("z-weaponry-5",					"he-bullet-projectile",																"c")
		aadd("z-weaponry-5",					"flame-bullet-projectile",														"d")
		aadd("z-weaponry-5",					"acid-bullet-projectile",															"e")
		aadd("z-weaponry-5",					"poison-bullet-projectile",														"f")
		aadd("z-weaponry-5",					"electric-bullet-projectile",													"g")
		
		aadd("z-weaponry-6",					"laser-rifle-battery-case",														"a")
		aadd("z-weaponry-6",					"laser-rifle-battery",																"b")
		aadd("z-weaponry-6",					"laser-rifle-battery-ruby",														"c")
		aadd("z-weaponry-6",					"laser-rifle-battery-sapphire",												"d")
		aadd("z-weaponry-6",					"laser-rifle-battery-emerald",												"e")
		aadd("z-weaponry-6",					"laser-rifle-battery-amethyst",												"f")
		aadd("z-weaponry-6",					"laser-rifle-battery-topaz",													"g")
		aadd("z-weaponry-6",					"laser-rifle-battery-diamond",												"h")
		
		aadd("z-weaponry-7",					"grenade",																						"a")
		aadd("z-weaponry-7",					"cluster-grenade",																		"b")
		aadd("z-weaponry-7",					"land-mine",																					"c")
		aadd("z-weaponry-7",					"slowdown-mine",																			"d")
		aadd("z-weaponry-7",					"poison-mine",																				"e")
		aadd("z-weaponry-7",					"distractor-mine",																		"f")
		
		aadd("z-weaponry-8",					"defender-robot",																			"a")
		aadd("z-weaponry-8",					"distractor-robot",																		"b")
		aadd("z-weaponry-8",					"destroyer-robot",																		"c")
		aadd("z-weaponry-8",					"bob-laser-robot-capsule",														"d")
		aadd("z-weaponry-8",					"bob-laser-robot",																		"e")
		
		aadd("z-weaponry-9",					"slowdown-capsule",																		"a")
		aadd("z-weaponry-9",					"poison-capsule",																			"b")
		aadd("z-weaponry-9",					"defender-capsule",																		"c")
		aadd("z-weaponry-9",					"distractor-capsule",																	"d")
		aadd("z-weaponry-9",					"destroyer-capsule",																	"e")
		aadd("z-weaponry-9",					"discharge-defense-remote",														"f")
		
		aadd("z-weaponry-10",					"piercing-rocket-warhead",														"a")
		aadd("z-weaponry-10",					"electric-rocket-warhead",														"b")
		aadd("z-weaponry-10",					"explosive-rocket-warhead",														"c")
		aadd("z-weaponry-10",					"poison-rocket-warhead",															"d")
		aadd("z-weaponry-10",					"flame-rocket-warhead",																"e")
		aadd("z-weaponry-10",					"acid-rocket-warhead",																"f")
		
		aadd("z-weaponry-11",					"cannon-shell",																				"a")
		aadd("z-weaponry-11",					"explosive-cannon-shell",															"b")
		aadd("z-weaponry-11",					"uranium-cannon-shell",																"c")
		aadd("z-weaponry-11",					"explosive-uranium-cannon-shell",											"d")
		aadd("z-weaponry-11",					"scatter-cannon-shell",																"e")
		
		aadd("z-weaponry-12",					"rocket",																							"a")
		aadd("z-weaponry-12",					"explosive-rocket",																		"b")
		aadd("z-weaponry-12",					"bob-rocket",																					"c")
		aadd("z-weaponry-12",					"bob-piercing-rocket",																"d")
		aadd("z-weaponry-12",					"bob-explosive-rocket",																"e")
		aadd("z-weaponry-12",					"bob-flame-rocket",																		"f")
		aadd("z-weaponry-12",					"bob-acid-rocket",																		"g")
		aadd("z-weaponry-12",					"bob-poison-rocket",																	"h")
		aadd("z-weaponry-12",					"bob-electric-rocket",																"i")
		aadd("z-weaponry-12",					"atomic-bomb",																				"j")
		
		aadd("z-weaponry-13",					"poison-artillery-shell",															"a")
		aadd("z-weaponry-13",					"explosive-artillery-shell",													"b")
		aadd("z-weaponry-13",					"distractor-artillery-shell",													"c")
		
		aadd("z-weaponry-15",					"rocket-body",																				"b")
		aadd("z-weaponry-15",					"rocket-warhead",																			"c")
		aadd("z-weaponry-15",					"rocket-engine",																			"d")
		
		
		if i_exist("cordite") then
			data.raw.recipe["cordite"].category = "chemistry"
			data.raw.recipe["cordite"].ingredients = {}
			data.raw.recipe["cordite"].ingredients =
			{
				{name="raw-wood", amount=4},
				{type="fluid", name="nitroglycerin", amount=1},
				{type="fluid", name="heavy-oil", amount=1},
			}
			ahide("petroleum-jelly")
			ahide("gun-cotton-synthetic")
			ahide("gun-cotton")
			zgc.t_remove_recipe_unlock("cordite-processing", "petroleum-jelly")
			zgc.t_remove_recipe_unlock("cordite-processing", "gun-cotton")
			zgc.t_remove_recipe_unlock("cordite-processing", "gun-cotton-synthetic")
			else
			switch_tech("cordite-processing")
		end
		else
		ahide("petroleum-jelly")
		ahide("gun-cotton")
		ahide("gun-cotton-synthetic")
		ahide("cordite")
		ahide("poison-mine")
		ahide("slowdown-mine")
		ahide("distractor-mine")
		ahide("bullet-magazine")
		ahide("ap-bullet-magazine")
		ahide("he-bullet-magazine")
		ahide("flame-bullet-magazine")
		ahide("acid-bullet-magazine")
		ahide("poison-bullet-magazine")
		ahide("electric-bullet-magazine")
		ahide("better-shotgun-shell")
		ahide("shotgun-ap-shell")
		ahide("shotgun-electric-shell")
		ahide("shotgun-explosive-shell")
		ahide("shotgun-flame-shell")
		ahide("shotgun-acid-shell")
		ahide("shotgun-poison-shell")
		ahide("bob-rocket")
		ahide("rocket-body")
		ahide("rocket-engine")
		ahide("rocket-warhead")
		ahide("bob-piercing-rocket")
		ahide("piercing-rocket-warhead")
		ahide("electric-rocket-warhead")
		ahide("bob-electric-rocket")
		ahide("bob-explosive-rocket")
		ahide("explosive-rocket-warhead")
		ahide("bob-acid-rocket")
		ahide("acid-rocket-warhead")
		ahide("bob-flame-rocket")
		ahide("flame-rocket-warhead")
		ahide("bob-poison-rocket")
		ahide("poison-rocket-warhead")
		ahide("rifle")
		ahide("sniper-rifle")
		ahide("poison-mine")
		ahide("defender-robot")
		ahide("distractor-robot")
		ahide("destroyer-robot")
		ahide("bob-laser-robot-capsule")
		ahide("bob-laser-robot")
		ahide("robot-brain-combat")
		ahide("robot-brain-combat-2")
		ahide("robot-brain-combat-3")
		ahide("robot-brain-combat-4")
		ahide("robot-tool-combat")
		ahide("robot-tool-combat-2")
		ahide("robot-tool-combat-3")
		ahide("robot-tool-combat-4")
		ahide("bullet-casing")
		ahide("shotgun-shell-casing")
		ahide("magazine")
		ahide("shot")
		ahide("bullet-projectile")
		ahide("ap-bullet-projectile")
		ahide("he-bullet-projectile")
		ahide("flame-bullet-projectile")
		ahide("acid-bullet-projectile")
		ahide("poison-bullet-projectile")
		ahide("electric-bullet-projectile")
		ahide("bullet")
		ahide("ap-bullet")
		ahide("he-bullet")
		ahide("flame-bullet")
		ahide("acid-bullet")
		ahide("poison-bullet")
		ahide("electric-bullet")
		ahide("bullet-magazine")
		ahide("ap-bullet-magazine")
		ahide("electric-bullet-magazine")
		ahide("he-bullet-magazine")
		ahide("flame-bullet-magazine")
		ahide("acid-bullet-magazine")
		ahide("poison-bullet-magazine")
		
		switch_tech("poison-mine")
		switch_tech("slowdown-mine")
		switch_tech("distractor-mine")
		switch_tech("nitroglycerin-processing")
		switch_tech("cordite-processing")
		switch_tech("bob-bullets")
		switch_tech("bob-ap-bullets")
		switch_tech("bob-electric-bullets")
		switch_tech("bob-he-bullets")
		switch_tech("bob-flame-bullets")
		switch_tech("bob-acid-bullets")
		switch_tech("bob-poison-bullets")
		switch_tech("bob-shotgun-shells")
		switch_tech("bob-shotgun-ap-shells")
		switch_tech("bob-shotgun-electric-shells")
		switch_tech("bob-shotgun-explosive-shells")
		switch_tech("bob-shotgun-flame-shells")
		switch_tech("bob-shotgun-acid-shells")
		switch_tech("bob-shotgun-poison-shells")
		switch_tech("bob-rocket")
		switch_tech("bob-piercing-rocket")
		switch_tech("bob-electric-rocket")
		switch_tech("bob-explosive-rocket")
		switch_tech("bob-acid-rocket")
		switch_tech("bob-flame-rocket")
		switch_tech("bob-poison-rocket")
		switch_tech("combat-robotics-4")
		
		zgc.t_remove_recipe_unlock("combat-robotics", "defender-robot")
		zgc.t_remove_recipe_unlock("combat-robotics", "robot-brain-combat")
		zgc.t_remove_recipe_unlock("combat-robotics", "robot-tool-combat")
		zgc.t_remove_recipe_unlock("combat-robotics-2", "distractor-robot")
		zgc.t_remove_recipe_unlock("combat-robotics-2", "robot-brain-combat-2")
		zgc.t_remove_recipe_unlock("combat-robotics-2", "robot-tool-combat-2")
		zgc.t_remove_recipe_unlock("combat-robotics-3", "destroyer-robot")
		zgc.t_remove_recipe_unlock("combat-robotics-3", "robot-brain-combat-3")
		zgc.t_remove_recipe_unlock("combat-robotics-3", "robot-tool-combat-3")
	end
	
end
do	--[[trains-vehicles]]--
	aadd("z-trains-1",						"bob-locomotive-2",																		"bobs-b")
	aadd("z-trains-1",						"bob-locomotive-3",																		"bobs-c")
	aadd("z-trains-1",						"bob-armoured-locomotive",														"bobs-d")
	aadd("z-trains-1",						"bob-armoured-locomotive-2",													"bobs-e")
	
	aadd("z-trains-2",						"bob-cargo-wagon-2",																	"bobs-b")
	aadd("z-trains-2",						"bob-cargo-wagon-3",																	"bobs-c")
	aadd("z-trains-2",						"bob-armoured-cargo-wagon",														"bobs-d")
	aadd("z-trains-2",						"bob-armoured-cargo-wagon-2",													"bobs-e")
	aadd("z-trains-2",						"bob-armoured-cargo-wagon-3",													"bobs-f")
	
	aadd("z-trains-3",						"bob-fluid-wagon-2",																	"bobs-b")
	aadd("z-trains-3",						"bob-fluid-wagon-3",																	"bobs-c")
	aadd("z-trains-3",						"bob-armoured-fluid-wagon",														"bobs-d")
	aadd("z-trains-3",						"bob-armoured-fluid-wagon-2",													"bobs-e")
	
	aadd("z-vehicles-0",					"bob-tank-2",																					"c")
	aadd("z-vehicles-0",					"bob-tank-3",																					"d")
	aadd("z-vehicles-0",					"bob-robot-tank",																			"e")
	
	aadd("z-vehicles-3",					"tank-machine-gun",																		"a")
	aadd("z-vehicles-3",					"vehicle-machine-gun",																"b")
	aadd("z-vehicles-3",					"tank-cannon-2",																			"c")
	aadd("z-vehicles-3",					"tank-cannon-3",																			"d")
	aadd("z-vehicles-3",					"tank-artillery-1",																		"e")
	aadd("z-vehicles-3",					"tank-artillery-2",																		"f")
	aadd("z-vehicles-3",					"gatling-gun",																				"g")
	aadd("z-vehicles-3",					"tank-laser",																					"h")
	if z_balance.bob_transport then
		ahide("bob-armoured-locomotive")
		ahide("bob-armoured-locomotive-2")
		ahide("bob-armoured-cargo-wagon")
		ahide("bob-armoured-cargo-wagon-2")
		ahide("bob-armoured-cargo-wagon-3")
		ahide("bob-armoured-fluid-wagon")
		ahide("bob-armoured-fluid-wagon-2")
		ahide("gatling-gun")
		ahide("tank-laser")
		ahide("tank-2")
		ahide("tank-3")
		ahide("bob-robot-tank")
		ahide("tank-cannon-2")
		ahide("tank-cannon-3")
		ahide("tank-artillery-1")
		ahide("tank-artillery-2")
		ahide("scatter-cannon-shell")
		ahide("poison-artillery-shell")
		ahide("explosive-artillery-shell")
		ahide("distractor-artillery-shell")
		
		switch_tech("tanks-2")
		switch_tech("tanks-3")
		switch_tech("bob-robot-tanks")
		
		switch_tech("bob-tank-artillery-damage-1")
		switch_tech("bob-tank-artillery-damage-2")
		switch_tech("bob-tank-artillery-damage-3")
		switch_tech("bob-tank-artillery-damage-4")
		switch_tech("bob-tank-artillery-damage-5")
		switch_tech("bob-tank-artillery-damage-6")
		switch_tech("bob-tank-artillery-speed-1")
		switch_tech("bob-tank-artillery-speed-2")
		switch_tech("bob-tank-artillery-speed-3")
		switch_tech("bob-tank-artillery-speed-4")
		switch_tech("bob-tank-artillery-speed-5")
		switch_tech("bob-tank-artillery-speed-6")
	end
	
	ahide("combat-robot-dispenser-equipment")
	
end
do	--[[alien]]--
	aadd("z-alien-7",							"alien-acid",																					"a")
	aadd("z-alien-7",							"alien-explosive",																		"b")
	aadd("z-alien-7",							"alien-fire",																					"c")
	aadd("z-alien-7",							"alien-poison",																				"d")
	
	aadd("z-alien-8",							"alien-acid-barrel",																	"a")
	aadd("z-alien-8",							"alien-explosive-barrel",															"b")
	aadd("z-alien-8",							"alien-fire-barrel",																	"c")
	aadd("z-alien-8",							"alien-poison-barrel",																"d")
	
	aadd("z-alien-8",							"fill-alien-acid-barrel",															"a")
	aadd("z-alien-8",							"fill-alien-explosive-barrel",												"b")
	aadd("z-alien-8",							"fill-alien-fire-barrel",															"c")
	aadd("z-alien-8",							"fill-alien-poison-barrel",														"d")
	
	aadd("z-alien-9",							"empty-alien-acid-barrel",														"a")
	aadd("z-alien-9",							"empty-alien-explosive-barrel",												"b")
	aadd("z-alien-9",							"empty-alien-fire-barrel",														"c")
	aadd("z-alien-9",							"empty-alien-poison-barrel",													"d")
	
	aadd("z-alien-9",							"alien-acid-in-tanker",																"a")
	aadd("z-alien-9",							"alien-explosive-in-tanker",													"b")
	aadd("z-alien-9",							"alien-fire-in-tanker",																"c")
	aadd("z-alien-9",							"alien-poison-in-tanker",															"d")
end
do  --[[atomic]]--
	aadd("z-atom-0",							"heat-exchanger",																			"b")
	aadd("z-atom-0",							"heat-exchanger-2",																		"c")
	aadd("z-atom-0",							"heat-exchanger-3",																		"d")
end
do --[[barreling]]--
	aadd("z-barreling-0",					"gas-canister",																				"b")
	aadd("z-barreling-0",					"empty-canister",																			"c")
	
	aadd("z-barreling-3",					"fill-water-barrel",																	"a")
	aadd("z-barreling-3",					"fill-lithia-water-barrel",														"b")
	aadd("z-barreling-3",					"fill-crude-oil-barrel",															"c")
	aadd("z-barreling-3",					"bob-fill-crude-oil-barrel",													"d")
	aadd("z-barreling-3",					"fill-heavy-oil-barrel",															"e")
	aadd("z-barreling-3",					"fill-light-oil-barrel",															"f")
	aadd("z-barreling-3",					"fill-lubricant-barrel",															"g")
	aadd("z-barreling-3",					"fill-sulfuric-acid-barrel",													"h")
	aadd("z-barreling-3",					"fill-nitric-acid-barrel",														"i")
	
	aadd("z-barreling-4",					"oxygen-canister",																		"a")
	aadd("z-barreling-4",					"hydrogen-canister",																	"b")
	aadd("z-barreling-4",					"nitrogen-canister",																	"c")
	aadd("z-barreling-4",					"chlorine-canister",																	"d")
	aadd("z-barreling-4",					"hydrogen-chloride-canister",													"e")
	aadd("z-barreling-4",					"petroleum-gas-canister",															"f")
	aadd("z-barreling-4",					"liquid-fuel-canister",																"g")
	aadd("z-barreling-4",					"ferric-chloride-canister",														"h")
	
	aadd("z-barreling-5",					"empty-water-barrel",																	"a")
	aadd("z-barreling-5",					"empty-lithia-water-barrel",													"b")
	aadd("z-barreling-5",					"empty-crude-oil-barrel",															"c")
	aadd("z-barreling-5",					"bob-empty-crude-oil-barrel",													"d")
	aadd("z-barreling-5",					"empty-heavy-oil-barrel",															"e")
	aadd("z-barreling-5",					"empty-light-oil-barrel",															"f")
	aadd("z-barreling-5",					"empty-lubricant-barrel",															"g")
	aadd("z-barreling-5",					"empty-sulfuric-acid-barrel",													"h")
	aadd("z-barreling-5",					"empty-nitric-acid-barrel",														"i")
	
	aadd("z-barreling-6",					"empty-oxygen-canister",															"a")
	aadd("z-barreling-6",					"empty-hydrogen-canister",														"b")
	aadd("z-barreling-6",					"empty-nitrogen-canister",														"c")
	aadd("z-barreling-6",					"empty-chlorine-canister",														"d")
	aadd("z-barreling-6",					"empty-hydrogen-chloride-canister",										"e")
	aadd("z-barreling-6",					"empty-petroleum-gas-canister",												"f")
	aadd("z-barreling-6",					"empty-liquid-fuel-canister",													"g")
	aadd("z-barreling-6",					"empty-ferric-chloride-canister",											"h")
	
end