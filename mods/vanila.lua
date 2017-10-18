local allow_changes = z_balance.vanila

for i=0,10 do zgc.get_group_name("z-barreling-"..i,"") end
for i=0,20 do zgc.get_group_name("z-armor-"..i,"") end
for i=0,20 do zgc.get_group_name("z-liquids-"..i,"") end
for i=0,20 do zgc.get_group_name("z-chemistry-"..i,"") end

do	--[[gathering]]--
	aadd("z-gathering-0",					"iron-axe",																						"a")
	aadd("z-gathering-0",					"steel-axe",																					"b")
	aadd("z-gathering-0",					"repair-pack",																				"i")
	
	aadd("z-gathering-1",					"wooden-chest",																				"a")
	aadd("z-gathering-1",					"iron-chest",																					"b")
	aadd("z-gathering-1",					"steel-chest",																				"c")
	
	aadd("z-gathering-3",					"storage-tank",																				"a")
	
	aadd("z-gathering-5",					"burner-mining-drill",																"a")
	aadd("z-gathering-5",					"electric-mining-drill",															"b")
	
	
	aadd("z-gathering-9",					"offshore-pump",																			"a")
	aadd("z-gathering-9",					"pumpjack",																						"b")
	
	aadd("z-gathering-12",				"pump",																								"a")
	
end
do	--[[production]]--
	aadd("z-production-0",				"stone-furnace",																			"a")
	aadd("z-production-0",				"steel-furnace",																			"c")
	aadd("z-production-0",				"electric-furnace",																		"d")
	
	aadd("z-production-4",				"assembling-machine-1",																"d")
	aadd("z-production-4",				"assembling-machine-2",																"f")
	aadd("z-production-4",				"assembling-machine-3",																"h")
	
	aadd("z-production-6",				"oil-refinery",																				"a")
	
	aadd("z-production-7",				"chemical-plant",																			"a")
end
do	--[[resources]]--
	aadd("z-resources-0",					"raw-wood",																						"a")
	aadd("z-resources-0",					"wood",																								"b")
	aadd("z-resources-0",					"sulfur",																							"d")
	
	aadd("z-resources-2",					"coal",																								"a")
	aadd("z-resources-2",					"solid-fuel",																					"b")
	
	aadd("z-resources-3",					"stone",																							"a")
	aadd("z-resources-3",					"iron-ore",																						"b")
	aadd("z-resources-3",					"copper-ore",																					"c")
	
  if allow_changes then
	data:extend({
		{
			type = "recipe",
			name = "z-coal",
			icon = "__base__/graphics/icons/coal-dark-background.png",
			category = "smelting",
			subgroup = "z-resources-1",
			order = "b",
			energy_required = 35,
			enabled = true,
			ingredients = {{"raw-wood",25}},
			hidden = false,
			result = "coal",
			result_count = 10
		},
	})
	aadd("z-resources-0",					"z-coal",																							"b")
  end
end
do	--[[plates]]--
	aadd("z-plates-0",						"iron-plate",																					"a")
	aadd("z-plates-0",						"copper-plate",																				"d")
	
	aadd("z-plates-1",						"steel-plate",																				"a")
	
end
do	--[[liquids]]--
	aadd("z-liquids-0",						"empty-barrel",																				"a")
	
	aadd("z-liquids-1",						"fill-crude-oil-barrel",															"a")
	
	aadd("z-liquids-3",						"empty-crude-oil-barrel",															"a")
	aadd("z-liquids-3",						"lubricant",																					"b")
	
	aadd("z-liquids-4",						"crude-oil-barrel",																		"a")
	
	aadd("z-liquids-5",						"basic-oil-processing",																"b")
	aadd("z-liquids-5",						"advanced-oil-processing",														"c")
	
end
do	--[[chemistry]]--
	aadd("z-chemistry-0",					"sulfuric-acid",																			"a")
	
	aadd("z-chemistry-2",					"heavy-oil-cracking",																	"a")
	aadd("z-chemistry-2",					"light-oil-cracking",																	"b")
	
	aadd("z-chemistry-3",					"solid-fuel-from-light-oil",													"a")
	aadd("z-chemistry-3",					"solid-fuel-from-heavy-oil",													"b")
	aadd("z-chemistry-3",					"solid-fuel-from-petroleum-gas",											"c")
	
	aadd("z-chemistry-5",					"plastic-bar",																				"a")
	
end
do	--[[automatization]]--
	aadd("z-automatization-0",		"burner-inserter",																		"a")
	aadd("z-automatization-0",		"inserter",																						"b")
	aadd("z-automatization-0",		"long-handed-inserter",																"c")
	
	aadd("z-automatization-1",		"filter-inserter",																		"a")
	aadd("z-automatization-1",		"stack-filter-inserter",															"i")
	
	aadd("z-automatization-2",		"fast-inserter",																			"a")
	aadd("z-automatization-2",		"stack-inserter",																			"h")
	
end
do	--[[transport]]--
	aadd("z-transport-0",					"transport-belt",																			"a")
	aadd("z-transport-0",					"fast-transport-belt",																"b")
	aadd("z-transport-0",					"express-transport-belt",															"c")
	
	aadd("z-transport-2",					"underground-belt",																		"a")
	aadd("z-transport-2",					"fast-underground-belt",															"b")
	aadd("z-transport-2",					"express-underground-belt",														"c")
	
	aadd("z-transport-5",					"splitter",																						"a")
	aadd("z-transport-5",					"fast-splitter",																			"b")
	aadd("z-transport-5",					"express-splitter",																		"c")
	
	aadd("z-transport-9",					"pipe",																								"a")
	
	aadd("z-transport-9",					"pipe-to-ground",																			"b")
	
	if use_graphics_tunnings then
		if i_exist("fast-underground-belt") then
			data.raw["underground-belt"]["fast-underground-belt"].underground_sprite.filename = "__ZGroupChange__/graphics/entity/u_line_r.png" end
		if i_exist("express-underground-belt") then
			data.raw["underground-belt"]["express-underground-belt"].underground_sprite.filename = "__ZGroupChange__/graphics/entity/u_line_b.png" end
		if i_exist("pipe-to-ground") then
			data.raw["pipe-to-ground"]["pipe-to-ground"].underground_sprite = {
				filename = "__ZGroupChange__/graphics/entity/u_pipe_1.png",
				priority = "high",
				width = 64,
				height = 64,
				x = 64,
				scale = 0.5
			}
		end
	end
	
end
do	--[[logistic]]--
	aadd("z-logistic-0",					"blueprint-book",																			"a")
	aadd("z-logistic-0",					"blueprint",																					"b")
	aadd("z-logistic-0",					"deconstruction-planner",															"c")
	
	aadd("z-logistic-1",					"roboport",																						"a")
	aadd("z-logistic-1",					"logistic-robot",																			"c")
	aadd("z-logistic-1",					"construction-robot",																	"e")
	
	aadd("z-logistic-7",					"logistic-chest-storage",															"a")
	aadd("z-logistic-7",					"logistic-chest-requester",														"b")
	aadd("z-logistic-7",					"logistic-chest-passive-provider",										"c")
	aadd("z-logistic-7",					"logistic-chest-active-provider",											"d")
	
	aadd("z-logistic-11",					"copper-cable",																				"a")
	aadd("z-logistic-11",					"red-wire",																						"b")
	aadd("z-logistic-11",					"green-wire",																					"c")
	
	aadd("z-logistic-12",					"arithmetic-combinator",															"a")
	aadd("z-logistic-12",					"decider-combinator",																	"b")
	aadd("z-logistic-12",					"constant-combinator",																"c")
	
	aadd("z-logistic-16",					"programmable-speaker",																"d")
	aadd("z-logistic-16",					"power-switch",																				"e")
end
do	--[[energy]]--
	aadd("z-energy-1",						"boiler",																							"a")
	
	aadd("z-energy-2",						"steam-engine",																				"a")
	
	
	aadd("z-energy-4",						"accumulator",																				"a")
	
	aadd("z-energy-5",						"solar-panel",																				"a")
	
	aadd("z-energy-6",						"steam-turbine",																			"a")
	
	aadd("z-energy-10",						"small-electric-pole",																"b")
	aadd("z-energy-10",						"medium-electric-pole",																"c")
	
	aadd("z-energy-11",						"big-electric-pole",																	"b")
	
	aadd("z-energy-12",						"substation",																					"a")
	
end
do	--[[defense]]--
	aadd("z-defense-0",						"stone-wall",																					"c")
	
	aadd("z-defense-1",						"gate",																								"a")
	
	aadd("z-defense-3",						"gun-turret",																					"a")
	aadd("z-defense-3",						"flamethrower-turret",																"b")
	aadd("z-defense-3",						"laser-turret",																				"c")
	
	aadd("z-defense-8",						"radar",																							"a")
	
end
do	--[[armor]]--
	aadd("z-armor-3",							"light-armor",																				"a")
	aadd("z-armor-3",							"heavy-armor",																				"b")
	aadd("z-armor-3",							"modular-armor",																			"c")
	aadd("z-armor-3",							"power-armor",																				"d")
	aadd("z-armor-3",							"power-armor-mk2",																		"e")
	
	aadd("z-armor-4",							"exoskeleton-equipment",															"a")
	aadd("z-armor-4",							"night-vision-equipment",															"b")
	aadd("z-armor-4",							"personal-roboport-equipment",												"c")
	aadd("z-armor-4",							"personal-roboport-mk2-equipment",										"d")
	
	aadd("z-armor-7",							"solar-panel-equipment",															"a")
	aadd("z-armor-7",							"fusion-reactor-equipment",														"b")
	aadd("z-armor-7",							"battery-equipment",																	"c")
	aadd("z-armor-7",							"battery-mk2-equipment",															"d")
	
	aadd("z-armor-8",							"personal-laser-defense-equipment",										"a")
	aadd("z-armor-8",							"discharge-defense-equipment",												"b")
	
	aadd("z-armor-9",							"energy-shield-equipment",														"a")
	aadd("z-armor-9",							"energy-shield-mk2-equipment",												"b")
end
do	--[[weapons]]--
	aadd("z-weaponry-0",					"pistol",																							"a")
	aadd("z-weaponry-0",					"submachine-gun",																			"b")
	aadd("z-weaponry-0",					"shotgun",																						"c")
	aadd("z-weaponry-0",					"combat-shotgun",																			"d")
	aadd("z-weaponry-0",					"flamethrower",																				"e")
	aadd("z-weaponry-0",					"rocket-launcher",																		"f")
	
	aadd("z-weaponry-1",					"firearm-magazine",																		"a")
	aadd("z-weaponry-1",					"piercing-rounds-magazine",														"b")
	aadd("z-weaponry-1",					"uranium-rounds-magazine",														"c")
	aadd("z-weaponry-1",					"shotgun-shell",																			"d")
	aadd("z-weaponry-1",					"piercing-shotgun-shell",															"e")
	aadd("z-weaponry-1",					"flamethrower-ammo",																	"f")
	aadd("z-weaponry-1",					"rocket",																							"g")
	aadd("z-weaponry-1",					"explosive-rocket",																		"h")
	aadd("z-weaponry-1",					"atomic-bomb",																				"i")
	
	aadd("z-weaponry-6",					"grenade",																						"a")
	aadd("z-weaponry-6",					"cluster-grenade",																		"b")
	aadd("z-weaponry-6",					"land-mine",																					"c")
	
	aadd("z-weaponry-8",					"slowdown-capsule",																		"a")
	aadd("z-weaponry-8",					"poison-capsule",																			"b")
	aadd("z-weaponry-8",					"defender-capsule",																		"c")
	aadd("z-weaponry-8",					"distractor-capsule",																	"d")
	aadd("z-weaponry-8",					"destroyer-capsule",																	"e")
	aadd("z-weaponry-8",					"discharge-defense-remote",														"f")
	
	aadd("z-weaponry-11",					"cannon-shell",																				"a")
	aadd("z-weaponry-11",					"explosive-cannon-shell",															"b")
	aadd("z-weaponry-11",					"uranium-cannon-shell",																"c")
	aadd("z-weaponry-11",					"explosive-uranium-cannon-shell",											"d")
end
do	--[[intermediate]]--	
	aadd("z-intermediate-1",			"electronic-circuit",																	"b")
	aadd("z-intermediate-1",			"advanced-circuit",																		"d")
	aadd("z-intermediate-1",			"processing-unit",																		"f")
	
	aadd("z-intermediate-4",			"iron-gear-wheel",																		"a")
	
	aadd("z-intermediate-4",			"fish",																								"a")
	aadd("z-intermediate-4",			"raw-fish",																						"b")
	aadd("z-intermediate-4",			"iron-stick",																					"c")
	aadd("z-intermediate-4",			"explosives",																					"d")
	aadd("z-intermediate-4",			"battery",																						"e")
	aadd("z-intermediate-4",			"engine-unit",																				"f")
	aadd("z-intermediate-4",			"electric-engine-unit",																"g")
	aadd("z-intermediate-4",			"flying-robot-frame",																	"h")
	
	aadd("z-intermediate-7",			"rocket-silo",																				"a")
	aadd("z-intermediate-7",			"low-density-structure",															"b")
	aadd("z-intermediate-7",			"rocket-fuel",																				"c")
	aadd("z-intermediate-7",			"rocket-part",																				"d")
	aadd("z-intermediate-7",			"rocket-control-unit",																"e")
	aadd("z-intermediate-7",			"satellite",																					"f")
	
end
do	--[[module]]--
	aadd("z-module-0",						"lab",																								"a")
	aadd("z-module-0",						"beacon",																							"e")
	
	aadd("z-module-1",						"science-pack-1",																			"a")
	aadd("z-module-1",						"science-pack-2",																			"b")
	aadd("z-module-1",						"science-pack-3",																			"c")
	aadd("z-module-1",						"military-science-pack",															"d")
	aadd("z-module-1",						"production-science-pack",														"e")
	aadd("z-module-1",						"high-tech-science-pack",															"f")
	
	aadd("z-module-4",						"speed-module",																				"a")
	aadd("z-module-4",						"speed-module-2",																			"b")
	aadd("z-module-4",						"speed-module-3",																			"c")
	
	aadd("z-module-5",						"productivity-module",																"a")
	aadd("z-module-5",						"productivity-module-2",															"b")
	aadd("z-module-5",						"productivity-module-3",															"c")
	
	aadd("z-module-6",						"effectivity-module",																	"a")
	aadd("z-module-6",						"effectivity-module-2",																"b")
	aadd("z-module-6",						"effectivity-module-3",																"c")
end
do	--[[trains-vehicles]]--
	aadd("z-trains-0",						"rail",																								"a")
	aadd("z-trains-0",						"straight-rail",																			"b")
	aadd("z-trains-0",						"curved-rail",																				"e")
	aadd("z-trains-0",						"train-stop",																					"f")
	aadd("z-trains-0",						"rail-signal",																				"g")
	aadd("z-trains-0",						"rail-chain-signal",																	"h")
	
	aadd("z-trains-1",						"locomotive",																					"a")
	
	aadd("z-trains-2",						"cargo-wagon",																				"a")
	
	aadd("z-trains-3",						"fluid-wagon",																				"a")
	
	aadd("z-vehicles-0",					"car",																								"a")
	aadd("z-vehicles-0",					"tank",																								"b")
	
	aadd("z-vehicles-3",					"tank-machine-gun",																		"a")
	aadd("z-vehicles-3",					"vehicle-machine-gun",																"b")
	
end
do	--[[decorative]]--
	aadd("z-decorative-0",				"landfill",																						"a")
	aadd("z-decorative-0",				"stone-brick",																				"b")
	aadd("z-decorative-0",				"concrete",																						"c")
	aadd("z-decorative-0",				"hazard-concrete",																		"d")
	
	aadd("z-decorative-4",				"small-lamp",																					"a")
	
end
do  --[[atomic]]--
	zgc.add_main_group("atom")
	aadd("z-atom-0",							"nuclear-reactor",																		"a")
	aadd("z-atom-0",							"heat-exchanger",																			"b")
	aadd("z-atom-0",							"heat-pipe",																					"e")
	aadd("z-atom-0",							"centrifuge",																					"f")
	
	aadd("z-atom-1",							"uranium-235",																				"a")
	aadd("z-atom-1",							"uranium-238",																				"b")
	aadd("z-atom-1",							"uranium-fuel-cell",																	"c")
	aadd("z-atom-1",							"uranium-processing",																	"e")
	aadd("z-atom-1",							"kovarex-enrichment-process",													"f")
	aadd("z-atom-1",							"nuclear-fuel-reprocessing",													"g")

end
do  --[[barreling]]--
	zgc.add_main_group("barreling", 4)
	aadd("z-barreling-0",					"empty-barrel",																				"a")
end