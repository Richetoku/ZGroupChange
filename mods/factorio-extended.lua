local allow_changes = z_balance.extended

function i_exist(item)
	for _,v in pairs(zgc.name_list) do
		if tostring(v) == item then return true end
	end
	return false
end

do	--[[gathering]]--
	aadd("z-gathering-0",					"repair-pack-mk2",																		"j")
	aadd("z-gathering-0",					"repair-pack-mk3",																		"k")
	
	aadd("z-gathering-1",					"titanium-chest",																			"d")
	
	
  if i_exist("5d-mining-drill-speed-1") and i_exist("bob-mining-drill-1") and allow_changes then
		ahide("storage-tank-mk2")
		ahide("basic-mining-drill-mk2")
		ahide("pump-mk2")
		ahide("pumpjack-mk2")
	else
		aadd("z-gathering-3",					"storage-tank-mk2",																		"c")
		aadd("z-gathering-5",					"basic-mining-drill-mk2",															"c")
		aadd("z-gathering-12",				"pump-mk2",																						"c")
		aadd("z-gathering-13",				"pumpjack-mk2",																				"d")
	end
	
	
end
do	--[[production]]--
  if i_exist("electric-furnace-2") and i_exist("5d-electric-furnace") and allow_changes then
		ahide("electric-furnace-mk2")
		ahide("electric-furnace-mk3")
	else
		aadd("z-production-2",				"electric-furnace-mk2",																"e")
		aadd("z-production-2",				"electric-furnace-mk3",																"h")
	end
	
	aadd("z-production-6",				"oil-refinery-mk2",																		"d")
	aadd("z-production-6",				"oil-refinery-mk3",																		"f")
	
	aadd("z-production-7",				"chemical-plant-mk2",																	"c")
	aadd("z-production-7",				"chemical-plant-mk3",																	"e")
end
do	--[[resources]]--
	aadd("z-resources-9",					"titanium-ore",																				"j")
end
do	--[[plates]]--
	aadd("z-plates-11",						"titanium-alloy",																			"i")
end
do	--[[liquids]]--
end
do	--[[chemistry]]--
end
do	--[[automatization]]--
	aadd("z-automatization-2",		"fast-inserter-mk2",																	"i")
	aadd("z-automatization-2",		"fast-inserter-mk3",																	"j")
	
	aadd("z-automatization-3",		"fast-long-handed-inserter",													"i")
	aadd("z-automatization-3",		"filter-long-handed-inserter",												"j")
end
do	--[[transport]]--
	aadd("z-transport-0",					"rapid-transport-belt-mk1",														"h")
	aadd("z-transport-0",					"rapid-transport-belt-mk2",														"i")

	aadd("z-transport-2",					"rapid-transport-belt-to-ground-mk1",									"e")
	aadd("z-transport-2",					"rapid-transport-belt-to-ground-mk2",									"f")

	aadd("z-transport-5",					"rapid-splitter-mk1",																	"f")
	aadd("z-transport-5",					"rapid-splitter-mk2",																	"g")
	
	aadd("z-transport-10",				"pipe-mk2",																						"z")
	aadd("z-transport-11",				"pipe-to-ground-mk2",																	"z")
end
do	--[[logistic]]--
	aadd("z-logistic-2",					"roboport-mk2",																				"d")
	aadd("z-logistic-2",					"roboport-mk3",																				"f")
	
	aadd("z-logistic-5",					"logistic-robot-mk2",																	"d")
	aadd("z-logistic-6",					"construction-robot-mk2",															"e")
	
	aadd("z-logistic-7",					"titanium-logistic-chest-storage",										"e")
	aadd("z-logistic-7",					"titanium-logistic-chest-requester",									"f")
	aadd("z-logistic-7",					"titanium-logistic-chest-passive-provider",						"g")
	aadd("z-logistic-7",					"titanium-logistic-chest-active-provider",						"h")
end
do	--[[energy]]--
	aadd("z-energy-1",						"boiler-mk2",																					"d")
	aadd("z-energy-1",						"boiler-mk3",																					"g")
	
	aadd("z-energy-2",						"steam-engine-mk2",																		"d")
	aadd("z-energy-2",						"steam-engine-mk3",																		"g")

	aadd("z-energy-4",						"accumulator-mk2",																		"c")
	aadd("z-energy-4",						"accumulator-mk3",																		"e")

	aadd("z-energy-5",						"solar-panel-mk2",																		"d")
	aadd("z-energy-5",						"solar-panel-mk3",																		"g")
	
	aadd("z-energy-10",						"medium-electric-pole-mk2",														"e")
	aadd("z-energy-10",						"medium-electric-pole-mk3",														"g")
	
	aadd("z-energy-11",						"big-electric-pole-mk2",															"d")
	aadd("z-energy-11",						"big-electric-pole-mk3",															"f")
	
	aadd("z-energy-12",						"substation-mk2",																			"c")
	aadd("z-energy-12",						"substation-mk3",																			"e")
end
do	--[[defense]]--
	aadd("z-defense-0",						"iron-wall",																					"g")
	aadd("z-defense-0",						"steel-wall",																					"h")
	aadd("z-defense-0",						"titanium-wall",																			"i")
	
	aadd("z-defense-1",						"iron-gate",																					"d")
	aadd("z-defense-1",						"steel-gate",																					"e")
	aadd("z-defense-1",						"titanium-gate",																			"f")

	aadd("z-defense-8",						"radar-mk2",																					"c")
	
	aadd("z-defense-4",						"gun-turret-mk2",																			"c")
	
	aadd("z-defense-5",						"laser-turret-mk2",																		"c")
end
do	--[[armor]]--
	aadd("z-armor-5",							"power-armor-mk3",																		"d")
	
	aadd("z-armor-8",							"fusion-reactor-mk2-equipment",												"g")
end
do	--[[intermediate]]--
	aadd("z-intermediate-6",			"pollution-filter",																		"j")
end
do	--[[module]]--
end
do	--[[weaponry]]--
	aadd("z-weaponry-2",					"shattering-bullet-magazine",													"i")
	
	aadd("z-weaponry-3",					"shattering-shotgun-shell",														"j")
end
do	--[[trains-vehicles]]--
	aadd("z-trains-1",						"locomotive-mk2",																			"fe-b")
	aadd("z-trains-1",						"locomotive-mk3",																			"fe-c")
	
	aadd("z-trains-2",						"cargo-wagon-mk2",																		"fe-b")
	aadd("z-trains-2",						"cargo-wagon-mk3",																		"fe-c")
	
	aadd("z-trains-3",						"fluid-wagon-mk2",																		"fe-b")
	aadd("z-trains-3",						"fluid-wagon-mk3",																		"fe-c")
end
do	--[[alien]]--
end
do  --[[atomic]]--
end