local allow_changes = z_balance.angels

--REPLACE REFINING GROUPS
do
	--gathering
	aadd("z-barreling-0",			"barreling-pump",									"d")
	--angel's refining
	if mods.angels_refining then
		data.raw["item-group"]["resource-refining"].icon = "__ZGroupChange__/graphics/icons/cat/ore-refining.png"
		data.raw["item-group"]["resource-refining"].icon_size = 64
		data.raw["item-group"]["water-treatment"].icon = "__ZGroupChange__/graphics/icons/cat/water-treatment-group.png"
		data.raw["item-group"]["water-treatment"].icon_size = 64
		--data.raw["item-group"]["angels-void"].icon = "__ZGroupChange__/graphics/icons/cat/clarifier.png"
		--data.raw["item-group"]["angels-void"].icon_size = 64
	end
	--angel's pretrochem
	if mods.angels_petrochem then
		--data.raw["item-group"]["angels-fluid-control"].icon = "__ZGroupChange__/graphics/icons/cat/heavy-pump-group.png"
		--data.raw["item-group"]["angels-fluid-control"].icon_size = 64
		data.raw["item-group"]["petrochem-refining"].icon = "__ZGroupChange__/graphics/icons/cat/petrochem.png"
		data.raw["item-group"]["petrochem-refining"].icon_size = 64
		aadd("z-transport-6",			"valve-check",										"b")
		aadd("z-transport-6",			"valve-return",										"c")
		aadd("z-transport-6",			"valve-overflow",									"d")
		aadd("z-transport-6",			"valve-converter",								"f")
		aadd("z-transport-7",			"angels-fluid-splitter-2-way",		"a")
		aadd("z-transport-7",			"angels-fluid-splitter-3-way",		"b")
		
		aadd("z-gathering-10",		"heavy-pump",											"i")
		
		aadd("z-gathering-3",			"angels-storage-tank-1",					"e")
		aadd("z-gathering-3",			"angels-storage-tank-2",					"f")
	end
	--angel's smelting
	if mods.angels_smelting then
		data.raw["item-group"]["angels-smelting"].icon = "__ZGroupChange__/graphics/icons/cat/blast-furnace-group.png"
		data.raw["item-group"]["angels-smelting"].icon_size = 64
		data.raw["item-group"]["angels-casting"].icon = "__ZGroupChange__/graphics/icons/cat/induction-furnace-group.png"
		data.raw["item-group"]["angels-casting"].icon_size = 64
	end
	--angel's components
	aadd("z-armor-22",				"angels-burner-generator-vequip",							"a")
	aadd("z-armor-22",				"angels-fusion-reactor-vequip",								"b")
	aadd("z-armor-22",				"angels-repair-roboport-vequip",							"c")
	aadd("z-armor-22",				"angels-construction-roboport-vequip",				"d")
	aadd("z-armor-22",				"angels-heavy-energy-shield-vequip",					"e")
	aadd("z-armor-22",				"angels-rocket-defense-equipment-vequip",			"f")
	-- angel's water treatment
	aadd("z-production-14",                       "hydro-plant",                             "d")
	aadd("z-production-14",                       "hydro-plant-2",                           "e")
	aadd("z-production-14",                       "clarifier",                               "f")
	aadd("z-production-14",                       "salination-plant",                        "g")
	aadd("z-production-14",                       "salination-plant-2",                      "h")
	aadd("z-production-14",                       "washing-plant",                           "i")
	aadd("z-production-14",                       "washing-plant-2",                         "j")
	
	aadd("z-gathering-10",                        "seafloor-pump",                           "f")
	
	aadd("z-chemistry-11",                        "water-mineralized",                       "a")
	aadd("z-chemistry-11",                        "yellow-waste-water-purification-yi",      "b")
	aadd("z-chemistry-11",                        "water-thermal-lithia",                    "c")
	aadd("z-chemistry-11",                        "yellow-waste-water-purification",         "d")
	aadd("z-chemistry-11",                        "red-waste-water-purification",            "e")
	aadd("z-chemistry-11",                        "green-waste-water-purification",          "f")
	aadd("z-chemistry-11",                        "greenyellow-waste-water-purification",    "g")
	aadd("z-chemistry-11",                        "water-saline",                            "h")
	
	aadd("z-resources-1",                         "solid-salt",                              "l")
	aadd("z-resources-1",                         "solid-salt-from-saline",                  "m")
	aadd("z-resources-1",                         "solid-nodule",                            "o")
	aadd("z-resources-1",                         "solid-limestone",                         "p")
	
	aadd("z-resources-4",                         "nodule-crystallization-1",                "i")
	aadd("z-resources-4",                         "nodule-crystallization-2",                "j")
	
	aadd("z-resources-6",                         "nodule-crushed",                          "h")
	aadd("z-resources-6",                         "nodule-slurry-washing",                   "i")
	aadd("z-resources-6",                         "nodule-concentrated-slurry-washing",      "j")
	aadd("z-resources-6",                         "nodule-pebbles-washing",                  "k")
	aadd("z-resources-6",                         "nodule-crushed-washing",                  "k")
	
	aadd("z-decorative-0",                        "solid-mud-landfill",                      "aa")
end
