local allow_changes = z_balance.angels

function i_exist(item)
	for _,v in pairs(zgc.name_list) do
		if tostring(v) == item then return true end
	end
	return false
end

do	--[[gathering]]--
	-- angel's water treatment
	aadd("z-gathering-11",				"seafloor-pump",																			"f")
	
	if i_exist("angels-ore1") then
		aadd("z-barreling-0",					"barreling-pump",																			"d")
	end
	if i_exist("catalyst-metal-carrier") then
		aadd("z-gathering-11",				"heavy-pump",																					"i")
		
		aadd("z-gathering-3",					"angels-storage-tank-1",															"e")
		aadd("z-gathering-3",					"angels-storage-tank-2",															"f")
		aadd("z-gathering-3",					"angels-storage-tank-3",															"g")
	end
	--angel's logistics
	if i_exist("angels-big-chest") then
		aadd("z-gathering-1",					"angels-big-chest",																		"d")
	end
end
do	--[[production]]--
	-- angel's water treatment
	aadd("z-production-14",				"hydro-plant",																				"d")
	aadd("z-production-14",				"hydro-plant-2",																			"e")
	aadd("z-production-14",				"clarifier",																					"f")
	aadd("z-production-14",				"salination-plant",																		"g")
	aadd("z-production-14",				"salination-plant-2",																	"h")
	aadd("z-production-14",				"washing-plant",																			"i")
	aadd("z-production-14",				"washing-plant-2",																		"j")
	aadd("z-production-14",				"cooling-tower",																			"k")
end
do	--[[resources]]--
	-- angel's water treatment
	aadd("z-resources-1",					"solid-salt",																					"l")
	aadd("z-resources-1",					"solid-salt-from-saline",															"m")
	aadd("z-resources-1",					"solid-nodule",																				"o")
	aadd("z-resources-1",					"solid-limestone",																		"p")
	aadd("z-resources-1",					"solid-clay",																					"q")
	aadd("z-resources-1",					"solid-sand",																					"r")
	
	aadd("z-resources-4",					"nodule-crystallization-1",														"i")
	aadd("z-resources-4",					"nodule-crystallization-2",														"j")
	
	aadd("z-resources-6",					"nodule-crushed",																			"h")
	aadd("z-resources-6",					"nodule-slurry-washing",															"i")
	aadd("z-resources-6",					"nodule-concentrated-slurry-washing",									"j")
	aadd("z-resources-6",					"nodule-pebbles-washing",															"k")
	aadd("z-resources-6",					"nodule-crushed-washing",															"k")
end
do	--[[plates]]--
end
do	--[[liquids]]--
end
do	--[[chemistry]]--
	-- angel's water treatment
	aadd("z-chemistry-11",				"water-mineralized",																	"a")
	aadd("z-chemistry-11",				"yellow-waste-water-purification-yi",									"b")
	aadd("z-chemistry-11",				"water-thermal-lithia",																"c")
	aadd("z-chemistry-11",				"yellow-waste-water-purification",										"d")
	aadd("z-chemistry-11",				"red-waste-water-purification",												"e")
	aadd("z-chemistry-11",				"green-waste-water-purification",											"f")
	aadd("z-chemistry-11",				"greenyellow-waste-water-purification",								"g")
	aadd("z-chemistry-11",				"water-saline",																				"h")
	
	aadd("z-chemistry-12",				"washing-1",																					"a")
	aadd("z-chemistry-12",				"washing-2",																					"b")
	aadd("z-chemistry-12",				"washing-3",																					"c")
	aadd("z-chemistry-12",				"washing-4",																					"d")
	aadd("z-chemistry-12",				"washing-5",																					"e")
	aadd("z-chemistry-12",				"water-viscous-mud",																	"f")
	aadd("z-chemistry-12",				"nodule-crushed-liquifying",													"g")
	
	aadd("z-chemistry-13",				"coolant",																						"a")
	aadd("z-chemistry-13",				"coolant-clean",																			"b")
	aadd("z-chemistry-13",				"coolant-used-filtration-1",													"c")
	aadd("z-chemistry-13",				"coolant-used-filtration-2",													"d")
	aadd("z-chemistry-13",				"coolant-cool-300",																		"e")
	aadd("z-chemistry-13",				"coolant-cool-200",																		"f")
	aadd("z-chemistry-13",				"coolant-cool-100",																		"g")
end
do	--[[automatization]]--
end
do	--[[transport]]--
	if i_exist("catalyst-metal-carrier") then
		aadd("z-transport-6",					"valve-check",																				"b")
		aadd("z-transport-6",					"valve-return",																				"c")
		aadd("z-transport-6",					"valve-overflow",																			"d")
		aadd("z-transport-6",					"valve-converter",																		"f")
		aadd("z-transport-7",					"angels-fluid-splitter-2-way",												"a")
		aadd("z-transport-7",					"angels-fluid-splitter-3-way",												"b")
	end
end
do	--[[logistic]]--
	aadd("z-logistic-2",					"construction-roboport",															"g")
	aadd("z-logistic-2",					"cargo-roboport",																			"h")
	
	aadd("z-logistic-3",					"angels-zone-expander",																"k")
	aadd("z-logistic-3",					"angels-zone-expander-2",															"l")
	aadd("z-logistic-3",					"angels-relay-station",																"m")
	aadd("z-logistic-3",					"angels-relay-station-2",															"n")
	
	aadd("z-logistic-5",					"cargo-robot",																				"i")
	
	aadd("z-logistic-6",					"angels-construction-robot",													"j")
	
	aadd("z-logistic-8",					"angels-logistic-chest-storage",											"i")
	aadd("z-logistic-8",					"angels-logistic-chest-requester",										"j")
	aadd("z-logistic-8",					"angels-logistic-chest-passive-provider",							"k")
	aadd("z-logistic-8",					"angels-logistic-chest-active-provider",							"l")

	--angel's logistics
	if i_exist("angels-big-chest") and i_exist("logistic-chest-storage") and i_exist("5d-storage") and allow_changes then
		ahide("logistic-chest-storage-2")
		ahide("logistic-chest-requester-2")
		ahide("logistic-chest-passive-provider-2")
		ahide("logistic-chest-active-provider-2")
	end
end
do	--[[energy]]--
end
do	--[[defense]]--
end
do	--[[armor]]--
	--angel's components
	aadd("z-armor-22",						"angels-burner-generator-vequip",											"a")
	aadd("z-armor-22",						"angels-fusion-reactor-vequip",												"b")
	aadd("z-armor-22",						"angels-repair-roboport-vequip",											"c")
	aadd("z-armor-22",						"angels-construction-roboport-vequip",								"d")
	aadd("z-armor-22",						"angels-heavy-energy-shield-vequip",									"e")
	aadd("z-armor-22",						"angels-rocket-defense-equipment-vequip",							"f")
end
do	--[[intermediate]]--
end
do	--[[module]]--
end
do	--[[weaponry]]--
		aadd("z-weaponry-11",					"heavy-cannon-shell",																	"e")
end
do	--[[trains-vehicles]]--
end
do	--[[alien]]--
end
do  --[[atomic]]--
end
do --[[barreling]]--
end
do --[[decorative]]--
	-- angel's water treatment
	aadd("z-decorative-0",				"solid-mud-landfill",																	"aa")
end
do --[[other]]--
end
do	--[[trains-vehicles]]--
	aadd("z-vehicles-0",					"angels-crawler",																			"ab")
	aadd("z-vehicles-0",					"angels-heavy-tank",																	"f")
	
	aadd("z-trains-1",						"crawler-locomotive",																	"zangels-a")
	aadd("z-trains-1",						"crawler-locomotive-wagon",														"zangels-b")
	aadd("z-trains-1",						"crawler-wagon",																			"zangels-c")
	aadd("z-trains-1",						"crawler-bot-wagon",																	"zangels-d")
	
	aadd("z-trains-2",						"petro-locomotive-1",																	"zangels-a")
	
	aadd("z-trains-2",						"petro-tank1",																				"zangels-b")
	aadd("z-trains-2",						"petro-tank2",																				"zangels-c")
end
--REPLACE REFINING GROUPS
do
	--angel's refining
	if i_exist("angels-ore1") then
		data.raw["item-group"]["resource-refining"].icon = "__ZGroupChange__/graphics/icons/cat/ore-refining.png"
		data.raw["item-group"]["resource-refining"].icon_size = 64
		data.raw["item-group"]["water-treatment"].icon = "__ZGroupChange__/graphics/icons/cat/water-treatment-group.png"
		data.raw["item-group"]["water-treatment"].icon_size = 64
		--data.raw["item-group"]["angels-void"].icon = "__ZGroupChange__/graphics/icons/cat/clarifier.png"
		--data.raw["item-group"]["angels-void"].icon_size = 64
	end
	--angel's bio processing
	if i_exist("algae-green") then
		data.raw["item-group"]["bio-processing"].icon = "__ZGroupChange__/graphics/icons/cat/bio-processing.png"
		data.raw["item-group"]["bio-processing"].icon_size = 64
	end
	--angel's pretrochem
	if i_exist("catalyst-metal-carrier") then
		--data.raw["item-group"]["angels-fluid-control"].icon = "__ZGroupChange__/graphics/icons/cat/heavy-pump-group.png"
		--data.raw["item-group"]["angels-fluid-control"].icon_size = 64
		data.raw["item-group"]["petrochem-refining"].icon = "__ZGroupChange__/graphics/icons/cat/petrochem.png"
		data.raw["item-group"]["petrochem-refining"].icon_size = 64
	end
	--angel's smelting
	if i_exist("angels-solder") then
		data.raw["item-group"]["angels-smelting"].icon = "__ZGroupChange__/graphics/icons/cat/blast-furnace-group.png"
		data.raw["item-group"]["angels-smelting"].icon_size = 64
		data.raw["item-group"]["angels-casting"].icon = "__ZGroupChange__/graphics/icons/cat/induction-furnace-group.png"
		data.raw["item-group"]["angels-casting"].icon_size = 64
	end
end
