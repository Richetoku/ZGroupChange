local allow_changes = z_balance.other

do --[[gathering]]--
	--void chest
	aadd("z-gathering-1",                         "void-chest",                              "e")
	
	-- mini machines
	aadd("z-gathering-5",		"mini-miner-1",				"c")
	aadd("z-gathering-5",		"mini-miner-2",				"f")
	aadd("z-gathering-5",		"mini-miner-3",				"i")
	aadd("z-gathering-5",		"mini-miner-4",				"l")
	aadd("z-gathering-5",		"mini-miner-5",				"o")
		
	-- quarry
	aadd("z-gathering-8",                         "burner-quarry",                           "a")
	aadd("z-gathering-8",                         "quarry",                                  "b")
	aadd("z-gathering-8",                         "quarry-mk2",                              "c")
	aadd("z-gathering-8",                         "quarry-mk3",                              "d")
	aadd("z-gathering-8",                         "nuclear-quarry",                          "e")
	aadd("z-gathering-8",                         "alien-quarry",                            "f")
	for a                                       ,b in pairs(data.raw["recipe"]) do
		if not (b.category == nil) and (b.category == "quarry") then
			aadd("z-resources-4"                    , b.name                                   ,   "z["..b.name.."]")
			data.raw.recipe[b.name].enabled = true
			data.raw.recipe[b.name].hidden = true
			data.raw.recipe[b.name].energy_required = 1
			--ihide(b.name)
			--rhide(b.name)
		end
	end
	
	-- warehousing
	aadd("z-gathering-2",                         "storehouse-basic",                        "e")
	aadd("z-gathering-2",                         "warehouse-basic",                         "f")
	
	-- waterwell
	aadd("z-gathering-8",                         "water-well-pump",                         "b")
	
	-- stone waterwell
	aadd("z-gathering-8",                         "stone-waterwell",                         "b")
	
	-- aquifer drill
	aadd("z-gathering-8",                         "aquifer-drill",                           "c")
	
	if i_exist("stone-waterwell") and allow_changes then
		--Hide Water Well Pemp  in favor of Stone Waterwell
		ahide("water-well-pump")
		--Hide Water Miners in favor of Stone Waterwell
		ahide("water-miner-1")
		ahide("water-miner-2")
		ahide("water-miner-3")
		ahide("water-miner-4")
		ahide("water-miner-5")
		--Hide Water Pumps in favor of Stone Waterwell
		ahide("water-pump")
		ahide("water-pump-1")
		ahide("water-pump-2")
		ahide("water-pump-3")
		ahide("water-pump-4")
		ahide("water-pump-5")
		--Hide Aquifer Drill in favor of Stone Waterwell
		ahide("aquifer-drill")
	elseif i_exist("water-well-pump") and allow_changes then
		--Hide Water Miners in favor of Waterwell Pump
		ahide("water-miner-1")
		ahide("water-miner-2")
		ahide("water-miner-3")
		ahide("water-miner-4")
		ahide("water-miner-5")
		--Hide Water Pumps in favor of Waterwell Pump
		ahide("water-pump")
		ahide("water-pump-1")
		ahide("water-pump-2")
		ahide("water-pump-3")
		ahide("water-pump-4")
		ahide("water-pump-5")
		--Hide Aquifer Drill in favor of Waterwell Pump
		ahide("aquifer-drill")
	elseif i_exist("aquifer-drill") and allow_changes then
		--Hide Water Miners in favor of Aquifer Drill
		ahide("water-miner-1")
		ahide("water-miner-2")
		ahide("water-miner-3")
		ahide("water-miner-4")
		ahide("water-miner-5")
		--Hide Water Pumps in favor of Aquifer Drill
		ahide("water-pump")
		ahide("water-pump-1")
		ahide("water-pump-2")
		ahide("water-pump-3")
		ahide("water-pump-4")
		ahide("water-pump-5")
	elseif i_exist("water-miner-1") and allow_changes then
		--Hide Water Pumps in favor of Water Miner
		ahide("water-pump")
		ahide("water-pump-1")
		ahide("water-pump-2")
		ahide("water-pump-3")
		ahide("water-pump-4")
		ahide("water-pump-5")
	end
	
end
do --[[production]]--
	-- assembly zero
	aadd("z-production-4",                        "assembling-machine-0",                    "0a")
	aadd("z-production-4",                        "assembling-machine-x",                    "0b")
	aadd("z-production-4",                        "assembling-machine-z",                    "0c")
	
	-- flare stack
	aadd("z-production-0",                        "electric-stone-furnace",                  "d")
	aadd("z-production-0",                        "electric-steel-furnace",                  "j")

	aadd("z-production-6",                        "vent-stack",                              "f")
	aadd("z-production-6",                        "flare-stack",                             "g")
	
	aadd("z-production-7",                        "incinerator",                             "g")
	aadd("z-production-7",                        "electric-incinerator",                    "h")
	
	if allow_changes and data.raw.recipe["vent-stack"] then
		data.raw.recipe["vent-stack"].enabled = "false"
		data.raw.recipe["vent-stack"].hidden = "false"
		data.raw.recipe["flare-stack"].enabled = "false"
		data.raw.recipe["flare-stack"].hidden = "false"
		data.raw.recipe["incinerator"].enabled = "false"
		data.raw.recipe["incinerator"].hidden = "false"
		data.raw.recipe["electric-incinerator"].enabled = "false"
		data.raw.recipe["electric-incinerator"].hidden = "false"
		zgc.t_add_recipe_unlock("oil-processing"  , "vent-stack")
		zgc.t_add_recipe_unlock("oil-processing"  , "flare-stack")
		zgc.t_add_recipe_unlock("oil-processing-2", "incinerator")
		zgc.t_add_recipe_unlock("oil-processing-2", "electric-incinerator")
	end
	
	
	-- mini machines
	aadd("z-production-2",                        "mini-furnace-1",                          "b")
	aadd("z-production-2",                        "mini-furnace-2",                          "d")
	aadd("z-production-2",                        "mini-furnace-3",                          "f")
	aadd("z-production-4",                        "mini-assembler-1",                        "e")
	aadd("z-production-4",                        "mini-assembler-2",                        "g")
	aadd("z-production-4",                        "mini-assembler-3",                        "i")
	aadd("z-production-4",                        "mini-assembler-4",                        "k")
	aadd("z-production-4",                        "mini-assembler-5",                        "m")
	aadd("z-production-4",                        "mini-assembler-6",                        "o")
	aadd("z-production-6",                        "mini-refinery",                           "b")
		
	if use_graphics_tunnings then
		if data.raw["assembling-machine"]["mini-assembler-3"] then
			v = data.raw["assembling-machine"]["mini-assembler-3"].animation
			v.filename = "__ZGroupChange__/graphics/entity/assembling-machine-3-anim.png"
			v.priority="high"
			v.width = 142
			v.height = 113
			v.frame_count = 32
			v.line_length = 8
			v.shift = {0.84*0.66                    , -0.1*0.66}
			v.scale = 0.66
		end
		zgc.set_icon("mini-assembler-1"           , "__ZGroupChange__/graphics/icons/mini-assembling-machine-1.png")
		zgc.set_icon("mini-assembler-2"           , "__ZGroupChange__/graphics/icons/mini-assembling-machine-2.png")
		zgc.set_icon("mini-assembler-3"           , "__ZGroupChange__/graphics/icons/mini-assembling-machine-3.png")
	end
	if z_balance.other_mini and mods.mini_machines then
		ahide("electric-furnace",                   "mini-furnace-1")
		if mods.bobs and extended_mod then 
			ahide("electric-furnace-2")
			ahide("electric-furnace-mk2",               "mini-furnace-2")
			ahide("electric-furnace-3")
			ahide("electric-furnace-mk3",               "mini-furnace-3")
			ahide("assembling-machine-1")
			ahide("assembling-machine-2")
			ahide("assembling-machine-3")
			ahide("assembling-machine-4")
			ahide("assembling-machine-5")
			ahide("assembling-machine-6")
		elseif mods.bobs then
			ahide("electric-furnace-2",                 "mini-furnace-2")
			ahide("electric-furnace-3",                 "mini-furnace-3")
			ahide("assembling-machine-1")
			ahide("assembling-machine-2")
			ahide("assembling-machine-3")
			ahide("assembling-machine-4")
			ahide("assembling-machine-5")
			ahide("assembling-machine-6")
		end
		if not angels_mod then ahide("oil-refinery",                       "mini-refinery") end
	end
	
	-- chem flip
	aadd("z-production-8",                        "electrolyser-flipped",                    "bb")
	aadd("z-production-8",                        "electrolyser-2-flipped",                  "cb")
	aadd("z-production-8",                        "electrolyser-3-flipped",                  "db")
	aadd("z-production-8",                        "electrolyser-4-flipped",                  "eb")
	
	-- bio industries
	aadd("z-production-9",                        "bi_bio_farm",                             "a")
	aadd("z-production-9",                        "bi-Bio_Garden",                           "b")
	aadd("z-production-9",                        "bi-cokery",                               "c")
	aadd("z-production-9",                        "bi-bioreactor",                           "d")
	aadd("z-production-9",                        "bi-stone-crusher",                        "e")
	
	aadd("z-production-10",                       "bi-burner-mining-drill-disassemble",      "a")
	aadd("z-production-10",                       "bi-steel-furnace-disassemble",            "b")
		
	if allow_changes and data.raw.recipe["bob-greenhouse"] and data.raw.recipe["bi_bio_farm"] then
		ahide("bob-greenhouse")
		ahide("bob-basic-greenhouse-cycle")
		ahide("bob-advanced-greenhouse-cycle")
		
		switch_tech("bob-greenhouse")
	end
	
	-- tree farm
	aadd("z-production-9",                        "tf-field",                                "f")
	aadd("z-production-9",                        "tf-fieldmk2",                             "g")
	
	-- sawmill
	aadd("z-production-9",                        "sawmill",                                 "h")
	
	-- charging station
	aadd("z-production-11",                       "charging-station",                        "a")
	aadd("z-production-11",                       "charging-station-rapid",                  "b")
	
	-- reverse factory
	aadd("z-production-12",                       "reverse-factory",                         "a")
	
	-- recycle
	aadd("z-production-12",                       "recycling-machine-1",                     "b")
	aadd("z-production-12",                       "recycling-machine-2",                     "c")
	aadd("z-production-12",                       "recycling-machine-3",                     "d")
	
	-- factorissimo
	aadd("z-production-13",                       "factory-1",                               "a")
	aadd("z-production-13",                       "factory-2",                               "b")
	aadd("z-production-13",                       "factory-3",                               "c")
	
	-- air filter
	aadd("z-production-14",                       "air-filter-machine",                      "a")
	aadd("z-production-14",                       "air-filter-machine-mk2",                  "b")
	aadd("z-production-14",                       "air-filter-machine-mk3",                  "c")
	
	-- avatars
	aadd("z-production-15",                       "avatar-assembling-machine",               "a")
	aadd("z-production-15",                       "avatar-remote-deployment-unit",           "b")
	aadd("z-production-15",                       "avatar-control-center",                   "c")
	aadd("z-production-15",                       "avatar",                                  "d")
	
	for _                                       ,v in pairs(data.raw["item-subgroup"]) do
		if v.name == "recycling-machine" then v.group = "zgc-production" end
	end
	
end
do --[[resources]]--
	-- bio industries
	radd("z-resources-0", "bi-cellulose", "h")
	
	aadd("z-resources-1",                         "bi-woodpulp",                             "a")
	aadd("z-resources-1",                         "bi-ash",                                  "b")
	aadd("z-resources-1",                         "bi-ash-2",                                "c")
	aadd("z-resources-1",                         "bi-charcoal",                             "d")
	aadd("z-resources-1",                         "bi-charcoal-2",                           "e")
	aadd("z-resources-1",                         "bi-coal",                                 "f")
	aadd("z-resources-1",                         "bi-coal-2",                               "g")
	aadd("z-resources-1",                         "z-coal",                                  "h")
	aadd("z-resources-1",                         "bi-coke-coal",                            "i")
	iadd("z-resources-1", 												"crushed-stone", 													 "j")
	aadd("z-resources-1",                         "bi-crushed-stone",                        "k")
	aadd("z-resources-1",                         "carbon",                                  "l")
	
	aadd("z-resources-7",                         "bi-plastic",                              "l")
	
	aadd("z-resources-9",                         "titanium-2-ore",                          "k")
	
	if i_exist("bi-woodpulp") then
	if z_balance.add_trees then
		zgc.add_newRessource_min_max("raw-wood","bi-woodpulp",1,3,0.7)
	end
	if z_balance.add_dirt then
		zgc.add_newRessource_min_max("coal","bi-ash",1,2,0.2)
		zgc.add_newRessource_min_max("stone","stone-crushed",1,2,0.1)
	end
	end
end
do --[[chemistry]]--
	-- bergius process
	aadd("z-chemistry-1",                         "bergius-process",                         "c")
	aadd("z-chemistry-3",                         "coal-liquefaction",                       "c")
	
	-- bio industries
	if i_exist("bi-liquid-air") then
	aadd("z-chemistry-0",                         "liquid-air",                              "f")
	aadd("z-chemistry-0",                         "bob-liquid-air",                          "e")
	aadd("z-chemistry-0",                         "bi-liquid-air",                           "g")
	end
	aadd("z-chemistry-2",                         "bi-Fuel_Conversion",                      "a")
	radd("z-chemistry-2",                         "bi-biomass-0",                          "b")
	aadd("z-chemistry-2",                         "bi-Bio_Fuel",                             "c")
	radd("z-chemistry-2",                         "bi-Clean_Air",                          "d")
	radd("z-chemistry-2",                         "bi-Clean_Air2",                         "e")
	
	-- natural evolution
	aadd("z-chemistry-1",                         "NE_nutrient-solution",                    "j")
	aadd("z-chemistry-1",                         "NE_basic-alien-nutrientant",              "j")
	aadd("z-chemistry-3",                         "NE_enhanced-nutrient-solution",           "j")
	aadd("z-chemistry-3",                         "NE_enhanced-alien-nutrientant",           "j")
	aadd("z-chemistry-3",                         "NE_alien-revitalization",                 "l")
	
	-- n-tech chemistry
	aadd("z-chemistry-1",                         "basic-desulphurized-oil-processing",      "e")
	aadd("z-chemistry-1",                         "advanced-desulphurized-oil-processing",   "f")
	
	aadd("z-chemistry-3",                         "crude-oil-desulphurization",              "e")
	aadd("z-chemistry-3",                         "water-purification",                      "a")
	
	aadd("z-barreling-6",                         "petroleum-gas-barrel",                    "i")
	aadd("z-barreling-6",                         "fill-petroleum-gas-barrel",               "i")
	aadd("z-barreling-6",                         "methanol-barrel",                         "j")
	aadd("z-barreling-6",                         "fill-methanol-barrel",                    "j")
	aadd("z-barreling-6",                         "disulfuric-acid-barrel",                  "k")
	aadd("z-barreling-6",                         "fill-disulfuric-acid-barrel",             "k")
	aadd("z-barreling-6",                         "methylhydrazine-barrel",                  "l")
	aadd("z-barreling-6",                         "fill-methylhydrazine-barrel",             "l")
	aadd("z-barreling-6",                         "dimethylhydrazine-barrel",                "m")
	aadd("z-barreling-6",                         "fill-dimethylhydrazine-barrel",           "m")
	
	aadd("z-barreling-7",                         "empty-petroleum-gas-barrel",              "i")
	aadd("z-barreling-7",                         "empty-methanol-barrel",                   "j")
	aadd("z-barreling-7",                         "empty-disulfuric-acid-barrel",            "k")
	aadd("z-barreling-7",                         "empty-methylhydrazine-barrel",            "l")
	aadd("z-barreling-7",                         "empty-dimethylhydrazine-barrel",          "m")
	
	-- rail tanker
	iadd("z-chemistry-10",                        "crude-oil",                               "d")
	iadd("z-chemistry-10",                        "heavy-oil",                               "e")
	iadd("z-chemistry-10",                        "light-oil",                               "f")
	iadd("z-chemistry-10",                        "bi-biomass",                              "n")
	iadd("z-chemistry-10",                        "water-purified",                          "p")
	iadd("z-chemistry-10",                        "water-floatation-waste",                  "r")
	iadd("z-chemistry-10",                        "water-saline",                            "s")
	iadd("z-chemistry-10",                        "crystal-seedling",                        "t")
	iadd("z-chemistry-10",                        "crystal-matrix",                          "u")
	iadd("z-chemistry-10",                        "crystal-slurry",                          "v")
	iadd("z-chemistry-10",                        "thermal-water",                           "w")
	iadd("z-chemistry-10",                        "mineral-sludge",                          "x")
	iadd("z-chemistry-10",                        "slag-slurry",                             "y")
	iadd("z-chemistry-10",                        "liquefied-coal",                          "z")
	iadd("z-chemistry-10",                        "liquid-air-in-tanker",                    "a")
	iadd("z-chemistry-10",                        "water-in-tanker",                         "b")
	iadd("z-chemistry-10",                        "lithia-water-in-tanker",                  "c")
	iadd("z-chemistry-10",                        "crude-oil-in-tanker",                     "d")
	iadd("z-chemistry-10",                        "heavy-oil-in-tanker",                     "e")
	iadd("z-chemistry-10",                        "light-oil-in-tanker",                     "f")
	iadd("z-chemistry-10",                        "lubricant-in-tanker",                     "g")
	iadd("z-chemistry-10",                        "liquid-fuel-in-tanker",                   "h")
	iadd("z-chemistry-10",                        "ferric-chloride-solution-in-tanker",      "i")
	iadd("z-chemistry-10",                        "alien-goo-in-tanker",                     "j")
	iadd("z-chemistry-10",                        "y-con_water-in-tanker",                   "k", "__ZGroupChange__/graphics/icons/y-con-water.png")
	iadd("z-chemistry-10",                        "y-liquid-uc2-in-tanker",                  "l")
	iadd("z-chemistry-10",                        "bi-Bio_Fuel-in-tanker",                   "m")
	iadd("z-chemistry-10",                        "bi-biomass-in-tanker",                    "n")
	iadd("z-chemistry-10",                        "bi-liquid-co2-in-tanker",                 "o")
	iadd("z-chemistry-10",                        "water-purified-in-tanker",                "p")
	iadd("z-chemistry-10",                        "water-mineralized-in-tanker",             "q")
	iadd("z-chemistry-10",                        "water-floatation-waste-in-tanker",        "r")
	iadd("z-chemistry-10",                        "water-saline-in-tanker",                  "s")
	iadd("z-chemistry-10",                        "crystal-seedling-in-tanker",              "t")
	iadd("z-chemistry-10",                        "crystal-matrix-in-tanker",                "u")
	iadd("z-chemistry-10",                        "crystal-slurry-in-tanker",                "v")
	iadd("z-chemistry-10",                        "thermal-water-in-tanker",                 "w")
	iadd("z-chemistry-10",                        "mineral-sludge-in-tanker",                "x")
	iadd("z-chemistry-10",                        "slag-slurry-in-tanker",                   "y") 
	iadd("z-chemistry-10",                        "liquefied-coal-in-tanker",                "z")
	
	ihide("liquid-chlor-methane-in-tanker")
	
	-- natural evolution
	iadd("z-chemistry-11",                        "NE_alien_toxin")
	iadd("z-chemistry-11",                        "NE_alien_toxin-in-tanker")
	iadd("z-chemistry-11",                        "NE_nutrient-solution-in-tanker")
	iadd("z-chemistry-11",                        "NE_basic-alien-nutrientant-in-tanker")
	iadd("z-chemistry-11",                        "NE_enhanced-nutrient-solution-in-tanker")
	iadd("z-chemistry-11",                        "NE_enhanced-alien-nutrientant-in-tanker")
	iadd("z-chemistry-11",                        "NE_alien-revitalization-in-tanker")
	iadd("z-chemistry-11",                        "NE_revitalization-solition-in-tanker")
	
	-- bio industries
	aadd("z-chemistry-2",                         "air-cracking",                            "d")
	aadd("z-chemistry-2",                         "carbon-dioxide",                          "e")
	aadd("z-chemistry-2",                         "ammonia",                                 "f")
	
	aadd("z-chemistry-3",                         "solid-fuel-from-methylhydrazine",         "e")
	
	aadd("z-chemistry-7",                         "hydrogen-sulfide",                        "a")
	aadd("z-chemistry-7",                         "sulfur-dioxide-from-hydrogen-sulfide",    "b")
	aadd("z-chemistry-7",                         "sulfur-from-sulfur-dioxide",              "c")
	aadd("z-chemistry-7",                         "sulfur-dioxide",                          "d")
	aadd("z-chemistry-7",                         "sulfur-trioxide",                         "e")
	aadd("z-chemistry-7",                         "disulfuric-acid",                         "f")
	aadd("z-chemistry-7",                         "sulfuric-acid-from-disulfuric-acid",      "g")
	
	aadd("z-chemistry-8",                         "methanol",                                "a")
	aadd("z-chemistry-8",                         "methylamine",                             "b")
	aadd("z-chemistry-8",                         "dimethylamine",                           "c")
	aadd("z-chemistry-8",                         "methylhydrazine",                         "d")
	aadd("z-chemistry-8",                         "dimethylhydrazine",                       "e")
	aadd("z-chemistry-8",                         "dinitrogen-tetroxide",                    "f")
	aadd("z-chemistry-8",                         "dinitrogen-tetroxide-container",          "g")
	
	-- bio industries
	aadd("z-chemistry-0",                         "bi-nitrogen",                             "e")
	aadd("z-chemistry-4",                         "bi-liquid-co2",                           "f")
	iadd("z-chemistry-9",                         "bi-cellulose",                            "p")
	
	-- rail tanker
	iadd("z-chemistry-9",                         "oxygen",                                  "a")
	iadd("z-chemistry-9",                         "chlorine",                                "b")
	iadd("z-chemistry-9",                         "hydrogen",                                "c")
	iadd("z-chemistry-9",                         "petroleum-gas",                           "e")
	iadd("z-chemistry-9",                         "sulfur-dioxide",                          "i")
	iadd("z-chemistry-9",                         "sulfuric-acid",                           "k")
	iadd("z-chemistry-9",                         "oxygen-in-tanker",                        "a")
	iadd("z-chemistry-9",                         "chlorine-in-tanker",                      "b")
	iadd("z-chemistry-9",                         "hydrogen-in-tanker",                      "c")
	iadd("z-chemistry-9",                         "nitrogen-in-tanker",                      "d")
	iadd("z-chemistry-9",                         "petroleum-gas-in-tanker",                 "e")
	iadd("z-chemistry-9",                         "hydrogen-chloride-in-tanker",             "f")
	iadd("z-chemistry-9",                         "nitrogen-dioxide-in-tanker",              "h")
	iadd("z-chemistry-9",                         "sulfur-dioxide-in-tanker",                "i")
	iadd("z-chemistry-9",                         "nitric-acid-in-tanker",                   "j")
	iadd("z-chemistry-9",                         "sulfuric-acid-in-tanker",                 "k")
	iadd("z-chemistry-9",                         "tungstic-acid-in-tanker",                 "l")
	iadd("z-chemistry-9",                         "sulfuric-nitric-acid-in-tanker",          "m")
	iadd("z-chemistry-9",                         "nitroglycerin-in-tanker",                 "n")
	iadd("z-chemistry-9",                         "glycerol-in-tanker",                      "o")
	iadd("z-chemistry-9",                         "y_hydrogen-in-tanker",                    "q")
	iadd("z-chemistry-9",                         "y_syngas_clean-in-tanker",                "r")
	iadd("z-chemistry-9",                         "y_syngas_raw-in-tanker",                  "s")
		
	-- advanced machines
	aadd("z-chemistry-10",                        "extreme-oil-processing",                  "a")
	aadd("z-chemistry-10",                        "extreme-heavy-oil-cracking",              "b")
	
	-- personal teleporter
	aadd("z-chemistry-11",                        "liquid-alien-artifacts",                  "j")
	
end
do --[[automatization]]--
	-- KPOT Titanium
	aadd("z-automatization-0",                    "titanium-long-handed-inserter",           "d")
		
	-- burner filter inserter
	aadd("z-automatization-1",                    "burner-filter-inserter",                  "a")
	
	-- natural evolution
	aadd("z-automatization-1",                    "combat-inserter",                         "j")
end
do --[[transport]]--
	-- pipe cleaner
	aadd("z-transport-6",                         "pipe-cleaner",                            "i")
	
	-- loaders
	aadd("z-transport-1",                         "loader",                                  "a")
	aadd("z-transport-1",                         "fast-loader",                             "b")
	aadd("z-transport-1",                         "express-loader",                          "c")
	aadd("z-transport-1",                         "green-loader",                            "d")
	aadd("z-transport-1",                         "purple-loader",                           "e")
	
	-- belt sorter
	aadd("z-transport-1",                         "belt-sorter",                             "i")
	aadd("z-transport-1",                         "belt-sorter-advanced",                    "j")
	
	-- smart splitter
	aadd("z-transport-2",                         "smartsplitter",                           "h")
	
	-- compound splitter
	aadd("z-transport-3",                         "compound-splitter-priority-totem",        "f")
	aadd("z-transport-3",                         "cs-express-transport-belt",               "g")
	aadd("z-transport-3",                         "compound-splitter-round-robin-totem",     "h")
	
	aadd("z-transport-4",                         "compound-splitter-endcap",                "f")
	aadd("z-transport-4",                         "compound-splitter-lane",                  "g")
	aadd("z-transport-4",                         "compound-splitter-buffer",                "h")
	
	-- hacked splitter
	aadd("z-transport-5",                         "hacked-splitter",                         "a")
	aadd("z-transport-5",                         "hacked-fast-splitter",                    "b")
	aadd("z-transport-5",                         "hacked-express-splitter",                 "c")
	aadd("z-transport-5",                         "hacked-green-splitter",                   "f")
	aadd("z-transport-5",                         "hacked-purple-splitter",                  "g")
	
	-- flow control bob
	aadd("z-transport-7",                         "check-valve",                             "a")
	aadd("z-transport-7",                         "overflow-valve",                          "e")
	aadd("z-transport-7",                         "underflow-valve",                         "g")
	
	aadd("z-transport-11",                        "express-pump",                            "k")
	
	aadd("z-transport-12",                        "pipe-stone-straight",                     "a")
	aadd("z-transport-12",                        "pipe-straight",                           "b")
	aadd("z-transport-12",                        "pipe-copper-straight",                    "c")
	aadd("z-transport-12",                        "pipe-steel-straight",                     "d")
	aadd("z-transport-12",                        "pipe-bronze-straight",                    "e")
	aadd("z-transport-12",                        "pipe-plastic-straight",                   "f")
	aadd("z-transport-12",                        "pipe-brass-straight",                     "g")
	aadd("z-transport-12",                        "pipe-ceramic-straight",                   "h")
	aadd("z-transport-12",                        "pipe-titanium-straight",                  "i")
	aadd("z-transport-12",                        "pipe-tungsten-straight",                  "j")
		
	aadd("z-transport-13",                        "pipe-stone-junction",                     "a")
	aadd("z-transport-13",                        "pipe-junction",                           "b")
	aadd("z-transport-13",                        "pipe-copper-junction",                    "c")
	aadd("z-transport-13",                        "pipe-steel-junction",                     "d")
	aadd("z-transport-13",                        "pipe-bronze-junction",                    "e")
	aadd("z-transport-13",                        "pipe-plastic-junction",                   "f")
	aadd("z-transport-13",                        "pipe-brass-junction",                     "g")
	aadd("z-transport-13",                        "pipe-ceramic-junction",                   "h")
	aadd("z-transport-13",                        "pipe-titanium-junction",                  "i")
	aadd("z-transport-13",                        "pipe-tungsten-junction",                  "j")
		
	aadd("z-transport-14",                        "pipe-stone-elbow",                        "a")
	aadd("z-transport-14",                        "pipe-elbow",                              "b")
	aadd("z-transport-14",                        "pipe-copper-elbow",                       "c")
	aadd("z-transport-14",                        "pipe-steel-elbow",                        "d")
	aadd("z-transport-14",                        "pipe-bronze-elbow",                       "e")
	aadd("z-transport-14",                        "pipe-plastic-elbow",                      "f")
	aadd("z-transport-14",                        "pipe-brass-elbow",                        "g")
	aadd("z-transport-14",                        "pipe-ceramic-elbow",                      "h")
	aadd("z-transport-14",                        "pipe-titanium-elbow",                     "i")
	aadd("z-transport-14",                        "pipe-tungsten-elbow",                     "j")
		
	-- personal teleporter
	aadd("z-transport-16",                        "Teleporter_Beacon",                       "a")
	
	-- factorissimo
	aadd("z-transport-18",                        "factory-input-pipe",                      "a")
	aadd("z-transport-18",                        "factory-output-pipe",                     "b")
	aadd("z-transport-18",                        "fish-output",                             "c")

	if z_balance.bob_pipes then
		ahide("pipe-stone-straight")
		ahide("pipe-copper-straight")
		ahide("pipe-steel-straight")
		ahide("pipe-bronze-straight")
		ahide("pipe-plastic-straight")
		ahide("pipe-brass-straight")
		ahide("pipe-ceramic-straight")
		ahide("pipe-titanium-straight")
		ahide("pipe-tungsten-straight")
		
		ahide("pipe-stone-junction")
		ahide("pipe-copper-junction")
		ahide("pipe-steel-junction")
		ahide("pipe-bronze-junction")
		ahide("pipe-plastic-junction")
		ahide("pipe-brass-junction")
		ahide("pipe-ceramic-junction")
		ahide("pipe-titanium-junction")
		ahide("pipe-tungsten-junction")
		
		ahide("pipe-stone-elbow")
		ahide("pipe-copper-elbow")
		ahide("pipe-steel-elbow")
		ahide("pipe-bronze-elbow")
		ahide("pipe-plastic-elbow")
		ahide("pipe-brass-elbow")
		ahide("pipe-ceramic-elbow")
		ahide("pipe-titanium-elbow")
		ahide("pipe-tungsten-elbow")
	end
	
	-- flow control
	if false == true and allow_changes and i_exist("pipe-elbow") and i_exist("catalyst-metal-carrier") then
		ahide("bob-valve")
		ahide("check-valve")
		ahide("overflow-valve")
		ahide("express-pump")
	end
	
	if use_graphics_tunnings and i_exist("small-pump-4") or i_exist("5d-small-pump") then
		zgc.set_icon("small-pump"                 ,"__base__/graphics/icons/small-pump.png")
	end
end
do --[[logistic]]--
	-- upgrade planer
	aadd("z-logistic-0",                          "upgrade-builder",                         "a")
	
	-- nanobots
	aadd("z-logistic-0",                          "gun-nano-emitter",                        "d")
	aadd("z-logistic-0",                          "ammo-nano-constructors",                  "e")
	aadd("z-logistic-0",                          "ammo-nano-termites",                      "f")
	
	aadd("z-logistic-2",                          "roboport-interface",                      "j")
	
	-- aai
	aadd("z-logistic-0",                          "zone-planner",                            "i")
	aadd("z-logistic-0",                          "unit-remote-control",                     "j")
	
	aadd("z-logistic-13",                         "zone-control",                            "a")
	aadd("z-logistic-13",                         "unit-control",                            "b")
	aadd("z-logistic-13",                         "unitdata-control",                        "c")
	aadd("z-logistic-13",                         "tile-scan",                               "d")
	aadd("z-logistic-13",                         "unit-scan",                               "e")
	aadd("z-logistic-13",                         "unitdata-scan",                           "f")
	aadd("z-logistic-13",                         "zone-scan",                               "g")
	
	aadd("z-logistic-14",                         "vehicle-deployer",                        "a")
	aadd("z-logistic-14",                         "vehicle-depot",                           "b")
	
	-- yarm
	aadd("z-logistic-0",                          "resource-monitor",                        "e")
	
	-- fusion robots
	aadd("z-logistic-5",                          "logistic-robot-fusion",                   "j")
	aadd("z-logistic-6",                          "construction-robot-fusion",               "j")
	
	-- nuclear robots
	aadd("z-logistic-5",                          "logistic-robot-nuclear",                  "k")
	aadd("z-logistic-6",                          "construction-robot-nuclear",              "k")
	
	-- warehousing
	aadd("z-logistic-9",                          "storehouse-requester",                    "a")
	aadd("z-logistic-9",                          "storehouse-passive-provider",             "b")
	aadd("z-logistic-9",                          "storehouse-active-provider",              "c")
	aadd("z-logistic-9",                          "storehouse-storage",                      "d")
	aadd("z-logistic-9",                          "warehouse-storage",                       "e")
	aadd("z-logistic-9",                          "warehouse-requester",                     "f")
	aadd("z-logistic-9",                          "warehouse-passive-provider",              "g")
	aadd("z-logistic-9",                          "warehouse-active-provider",               "h")
	
	-- time tools
	aadd("z-logistic-11",                         "clock-combinator",                        "d")
	
	-- crafting combinator
	aadd("z-logistic-12",                         "crafting_combinator_crafting-combinator", "e")
	aadd("z-logistic-12",                         "crafting_combinator_recipe-combinator",   "f")
	aadd("z-logistic-12",                         "item-sensor",                             "g")
	
	-- factorissimo
	aadd("z-logistic-7",                          "factory-requester-chest",                 "i")
	aadd("z-logistic-12",                         "factory-circuit-input",                   "h")
	aadd("z-logistic-12",                         "factory-circuit-output",                  "i")
	
	-- nixie tubes
	aadd("z-logistic-15",                         "nixie-tube",                              "e")
	aadd("z-logistic-15",                         "nixie-tube-alpha",                        "f")
	aadd("z-logistic-15",                         "nixie-tube-small",                        "g")
	
	-- smart display
	aadd("z-logistic-15",                         "smart-display-visible",                   "i")
	
end
do --[[energy]]--
	-- advanced electric
	aadd("z-energy-4",                            "advanced-accumulator",                    "n")
	aadd("z-energy-4",                            "elite-accumulator",                       "o")
	aadd("z-energy-4",                            "ultimate-accumulator",                    "p")
	
	aadd("z-energy-5",                            "advanced-solar",                          "h")
	aadd("z-energy-5",                            "elite-solar",                             "i")
	aadd("z-energy-5",                            "ultimate-solar",                          "j")
	
	-- lighted poles plus
	aadd("z-energy-10",                           "lighted-small-electric-pole",             "bb")
	aadd("z-energy-10",                           "lighted-medium-electric-pole",            "cb")
	aadd("z-energy-10",                           "lighted-medium-electric-pole-2",          "db")
	aadd("z-energy-10",                           "lighted-medium-electric-pole-3",          "fb")
	aadd("z-energy-10",                           "lighted-medium-electric-pole-4",          "hb")
	aadd("z-energy-10",                           "lighted-medium-electric-pole-mk2",        "eb")
	aadd("z-energy-10",                           "lighted-medium-electric-pole-mk3",        "gb")
	
	aadd("z-energy-11",                           "lighted-big-electric-pole",               "bb")
	aadd("z-energy-11",                           "lighted-big-electric-pole-2",             "cb")
	aadd("z-energy-11",                           "lighted-big-electric-pole-mk2",           "db")
	aadd("z-energy-11",                           "lighted-big-electric-pole-3",             "eb")
	aadd("z-energy-11",                           "lighted-big-electric-pole-mk3",           "fb")
	aadd("z-energy-11",                           "lighted-big-electric-pole-4",             "gb")
	aadd("z-energy-11",                           "lighted-5d-electric-pole-4",              "hb") 
	aadd("z-energy-11",                           "lighted-5d-electric-pole-5",              "ib")
	aadd("z-energy-11",                           "lighted-5d-electric-pole-6",              "jb")
	
	aadd("z-energy-12",                           "lighted-substation",                      "ab")
	aadd("z-energy-12",                           "lighted-substation-2",                    "bb")
	aadd("z-energy-12",                           "lighted-substation-mk2",                  "cb")
	aadd("z-energy-12",                           "lighted-substation-3",                    "db")
	aadd("z-energy-12",                           "lighted-substation-mk3",                  "eb")
	aadd("z-energy-12",                           "lighted-substation-4",                    "fb")
	
	-- KPOT Titanium
	aadd("z-energy-11",                           "titanium-electric-pole",                  "k")
	aadd("z-energy-11",                           "lighted-titanium-electric-pole",          "kb")
	
	-- bio industries
	aadd("z-energy-6",                            "bi_bio_Solar_Farm",                       "j")
	aadd("z-energy-11",                           "bi-big-wooden-pole",                      "a")
	
	-- electric train
	aadd("z-energy-7",                            "power-provider",                          "i")
	
	-- tesseract
	aadd("z-energy-7",                            "tesseract",                               "j")
	
end
do --[[module]]--
	-- wormmus config
	aadd("z-module-1",                            "space-science-pack",                      "h")
	
	-- science cost tweaker
	aadd("z-module-0",                            "sct-lab-1",                               "ab")
	aadd("z-module-0",                            "sct-lab-2",                               "ac")
	aadd("z-module-0",                            "sct-lab-3",                               "ad")
	aadd("z-module-0",                            "sct-lab-4",                               "ae")
	
	aadd("z-module-1",                            "sct-bm4-plating",                         "01")
	aadd("z-module-1",                            "sct-bm4-injector",                        "02")
	aadd("z-module-1",                            "sct-bm4-supercoils",                      "03")
	aadd("z-module-1",                            "sct-bm4-capbank",                         "04")
	aadd("z-module-1",                            "sct-t1-ironcore",                         "05")
	aadd("z-module-1",                            "sct-t1-magnet-coils",                     "06")
	aadd("z-module-1",                            "sct-t2-reaction-nodes",                   "07")
	aadd("z-module-1",                            "sct-t2-instruments",                      "08")
	aadd("z-module-1",                            "sct-t2-microcircuits",                    "09")
	aadd("z-module-1",                            "sct-t2-micro-wafer",                      "10")
	aadd("z-module-1",                            "sct-t2-wafer-stamp",                      "11")
	aadd("z-module-1",                            "sct-t3-flash-fuel",                       "12")
	aadd("z-module-1",                            "sct-t3-laser-foci",                       "13")
	aadd("z-module-1",                            "sct-t3-laser-emitter",                    "14")
	aadd("z-module-1",                            "sct-t3-femto-lasers",                     "15")
	aadd("z-module-1",                            "sct-t3-atomic-sensors",                   "16")
	aadd("z-module-1",                            "sct-t4-bioprocessor",                     "17")
	aadd("z-module-1",                            "sct-t4-overclocker",                      "18")
	aadd("z-module-1",                            "sct-bm4-part1",                           "19")
	aadd("z-module-1",                            "sct-bm4-part1a",                          "20")
	aadd("z-module-1",                            "sct-bm4-part1b",                          "21")
	aadd("z-module-1",                            "sct-bm4-part1c",                          "22")
	aadd("z-module-1",                            "sct-bm4-part2",                           "23")
	aadd("z-module-1",                            "sct-bm4-part2a",                          "24")
	aadd("z-module-1",                            "sct-bm4-part2b",                          "25")
	aadd("z-module-1",                            "sct-bm4-part2c",                          "26")
	aadd("z-module-1",                            "sct-bm4-part3",                           "27")
	aadd("z-module-1",                            "sct-bm4-part3a",                          "28")
	aadd("z-module-1",                            "sct-bm4-part3b",                          "29")
	aadd("z-module-1",                            "sct-bm4-part3c",                          "30")
	aadd("z-module-1",                            "sct-bm4-part3d",                          "31")
	aadd("z-module-1",                            "sct-bm4-part4",                           "32")
	aadd("z-module-1",                            "sct-bm4-part4a",                          "33")
	aadd("z-module-1",                            "sct-bm4-part4b",                          "34")
	aadd("z-module-1",                            "sct-bm4-part4c",                          "35")
	aadd("z-module-1",                            "sct-bm4-part4d",                          "36")
	aadd("z-module-1",                            "sct-bm4-part5",                           "37")
	aadd("z-module-1",                            "sct-bm4-part5a",                          "38")
	aadd("z-module-1",                            "sct-bm4-part5b",                          "39")
	aadd("z-module-1",                            "sct-bm4-part5c",                          "40")
	aadd("z-module-1",                            "sct-bm4-part5d",                          "41")
	
	-- bio industries
	aadd("z-module-0",                            "lab-module",                              "d")
end
do --[[defense]]--
	-- natural evolution
	aadd("z-defense-0",                           "ne-living-wall",                          "h")
	aadd("z-defense-0",                           "ne-living-wall-refresh",                  "i")
	aadd("z-defense-0",                           "ne-living-wall-exhausted",                "j")
	
	-- dectorio
	aadd("z-defense-0",                           "dect-chain-wall",                         "a")
	aadd("z-defense-0",                           "dect-concrete-wall",                      "d")
	
	-- reinforced walls
	aadd("z-defense-0",                           "acid-resist-wall",                        "f")
	aadd("z-defense-0",                           "damage-reflect-wall",                     "g")
	
	-- bio industries
	aadd("z-defense-2",                           "bi-wooden-fence",                         "a")
	aadd("z-defense-2",                           "Bio_Cannon",                              "b")
	aadd("z-defense-2",                           "Bio_Cannon_Area",                         "c")
	aadd("z-defense-2",                           "Bio_Cannon_Basic_Ammo",                   "d")
	aadd("z-defense-2",                           "Bio_Cannon_Poison_Ammo",                  "e")
	aadd("z-defense-2",                           "Bio_Cannon_Bio_Ammo",                     "f")
	
	-- force field
	aadd("z-defense-2",                           "forcefield-emitter",                      "f")
	aadd("z-defense-2",                           "forcefield-tool",                         "g")
	
	-- ion cannon
	aadd("z-defense-2",                           "orbital-ion-cannon",                      "h")
	aadd("z-defense-2",                           "ion-cannon-targeter",                     "i")
	aadd("z-defense-8",                           "auto-targeter",                           "g")
	
end
do --[[intermediate]]--
	-- bio industries
	aadd("z-intermediate-6",                      "bi-seedling",                             "h")
	aadd("z-intermediate-6",                      "fertiliser",                              "i")
	aadd("z-intermediate-6",                      "bi-fertiliser",                           "j")
	aadd("z-intermediate-6",                      "bi-fertiliser-2",                         "k")
	aadd("z-intermediate-6",                      "bi-adv-fertiliser",                       "l")
	
	-- advanced machines
	aadd("z-intermediate-6",                      "unused-air-filter",                       "m")
	aadd("z-intermediate-6",                      "filter-air",                              "n")
	aadd("z-intermediate-6",                      "air-filter-recycling",                    "o")
	
	-- natural evolution buildings
	aadd("z-intermediate-6",                      "alien-artifact",                          "z")
	
	-- tree farm
	aadd("z-intermediate-6",                      "tf-germling",                             "l")
	aadd("z-intermediate-6",                      "tf-coral-seed",                           "m")
	
	-- personal teleporter
	aadd("z-intermediate-8",                      "TeleporterCore",                          "z")
	
	-- avatars
	aadd("z-intermediate-8",                      "actuator",                                "a")
	aadd("z-intermediate-8",                      "avatar-arm",                              "b")
	aadd("z-intermediate-8",                      "avatar-leg",                              "c")
	aadd("z-intermediate-8",                      "avatar-head",                             "d")
	aadd("z-intermediate-8",                      "avatar-torso",                            "e")
	aadd("z-intermediate-8",                      "avatar-internals",                        "f")
	aadd("z-intermediate-8",                      "avatar-skin",                             "g")

	if allow_changes and i_exist("bi_bio_farm") then
		if i_exist("bob-seedling") then
			rhide("bi-seedling")
		else rhide("bob-seedling") end
		ahide("bob-fertiliser")
		switch_tech("bob-fertiliser")
	end
	
end
do --[[trains-vehicles]]--
	-- bio industries
	aadd("z-trains-0",                            "bi-rail-wood",                            "c")
	aadd("z-trains-0",                            "bi-straight-rail-wood",                   "d")
	
	-- logistic train network
	aadd("z-trains-0",                            "logistic-train-stop",                     "g")
	
	-- farl
	aadd("z-trains-1",                            "farl",                                    "l")
	aadd("z-trains-1",                            "farl-roboport",                           "m")
	
	-- folk logistic wagon
	aadd("z-trains-1",                            "folk-logistic-wagon",                     "n")
	aadd("z-trains-1",                            "rail-tanker",                             "o")
	
	-- tankwerkz
	aadd("z-vehicles-1",                          "hydra-tank",                              "f")
	aadd("z-vehicles-1",                          "light-tank",                              "g")
	aadd("z-vehicles-1",                          "flame-tank",                              "h")
	aadd("z-vehicles-1",                          "heavy-tank",                              "i")
	
	aadd("z-vehicles-5",                          "hiex-cannon-shell",                       "a")
	aadd("z-vehicles-5",                          "ap-cannon-shell",                         "c")
	aadd("z-vehicles-5",                          "heavy-mg-ammo",                           "d")
	aadd("z-vehicles-5",                          "hydra-rocket",                            "e")
	aadd("z-vehicles-5",                          "tank-flame-thrower-ammo",                 "f")
	aadd("z-vehicles-5",                          "heavy-mg",                                "g")
	aadd("z-vehicles-5",                          "hydra-rocket-launcher",                   "h")
	aadd("z-vehicles-5",                          "flame-tank-flame-thrower",                "i")
	
	-- aircraft
	aadd("z-vehicles-2",                          "cargo-plane",                             "d")
	aadd("z-vehicles-2",                          "flying-fortress",                         "e")
	aadd("z-vehicles-2",                          "gunship",                                 "f")
	aadd("z-vehicles-2",                          "jet",                                     "g")
	
	aadd("z-vehicles-5",                          "high-explosive-cannon-shell",             "b")
	
	-- aai
	aadd("z-vehicles-3",                          "vehicle-miner",                           "a")
	aadd("z-vehicles-3",                          "vehicle-miner-mk2",                       "b")
	aadd("z-vehicles-3",                          "vehicle-miner-mk3",                       "c")
	aadd("z-vehicles-3",                          "vehicle-miner-mk4",                       "d")
	aadd("z-vehicles-3",                          "vehicle-miner-mk5",                       "e")
	aadd("z-vehicles-3",                          "vehicle-hauler",                          "f")
	aadd("z-vehicles-3",                          "vehicle-flame-tumbler",                   "g")
	aadd("z-vehicles-3",                          "vehicle-laser-tank",                      "h")
	
	-- electric trains
	aadd("z-trains-1",                            "electric-locomotive",                     "i")
	aadd("z-trains-1",                            "electric-locomotive-mk2",                 "j")
	aadd("z-trains-1",                            "electric-locomotive-mk3",                 "k")
	
	aadd("z-trains-2",                            "electric-cargo-wagon",                    "i")
	aadd("z-trains-2",                            "electric-cargo-wagon-mk2",                "j")
	aadd("z-trains-2",                            "electric-cargo-wagon-mk3",                "k")
	
	-- electric vehicles
	aadd("z-trains-1",                            "electric-vehicles-electric-locomotive",   "h")
	aadd("z-vehicles-0",                          "electric-vehicles-electric-tank",         "f")
	aadd("z-vehicles-1",                          "electric-vehicles-electric-car",          "g")
	
end
do --[[armor]]--
	-- advanced power armor
	aadd("z-armor-5",                             "power-armor-mk6",                         "g")
	aadd("z-armor-5",                             "power-armor-mk7",                         "h")
	
	-- afraid of dark
	aadd("z-armor-7",                             "perfect-night-glasses",                   "g")
	
	-- teleportation
	aadd("z-armor-7",                             "teleportation-portal",                    "h")
	aadd("z-armor-7",                             "teleportation-equipment",                 "i")
	aadd("z-armor-7",                             "teleportation-beacon",                    "j")
	aadd("z-armor-12",                      			"Personal-Teleporter",                     "g")
	
	-- modular chargepacks
	aadd("z-armor-9",                             "chargepack-small",                        "g")
	aadd("z-armor-9",                             "chargepack-large",                        "h")
	
	-- advanced personal defense
	aadd("z-armor-10",                            "advanced-laser-defense-equipment",        "g")

	-- nanobots
	aadd("z-armor-12",                      			"equipment-bot-chip-items",                "a")
	aadd("z-armor-12",                      			"equipment-bot-chip-launcher",             "b")
	aadd("z-armor-12",                      			"equipment-bot-chip-trees",                "c")
	aadd("z-armor-12",                      			"equipment-bot-chip-feeder",               "d")
	aadd("z-armor-12",                      			"equipment-bot-chip-nanointerface",        "e")
	aadd("z-armor-12",                      			"belt-immunity-equipment",                 "f")
	
	aadd("z-armor-24",                            "shuttle-lite",                            "a")
	aadd("z-armor-24",                            "electric-vehicles-lo-voltage-transformer","b")
	aadd("z-armor-24",                            "electric-vehicles-hi-voltage-transformer","c")
	aadd("z-armor-24",                            "electric-vehicles-regen-brake-controller","d")
			
end
do --[[weaponry]]--
	-- explosive termites
	aadd("z-weaponry-0",                          "explosive-termites",                      "l")
	aadd("z-weaponry-0",                          "alien-explosive-termites",                "m")
	
	-- aai
	aadd("z-weaponry-1",                          "flamejet-ammo",                           "h") 
	
	aadd("z-weaponry-6",                          "laser-cannon-battery-focussed",           "i") 
	aadd("z-weaponry-6",                          "laser-cannon-battery-piercing",           "j") 
		
	aadd("z-weaponry-11",                         "cannon-shell-precision",                  "f")
	aadd("z-weaponry-11",                         "explosive-cannon-shell-precision",        "g")
	
	-- KPOT Titanium
	aadd("z-weaponry-2",                          "titanium-firearm-magazine",               "j")
	
	-- natural evolution enemies
	aadd("z-weaponry-2",                          "Biological-bullet-magazine",              "k")
	
end
do --[[decorative]]--
	-- landfill
	aadd("z-decorative-0",                        "water-bomb",                              "a")
	aadd("z-decorative-0",                        "water-be-gone",                           "b")
	
	-- decorio
	aadd("z-decorative-0",                        "dect-base-dirt",                          "c")
	aadd("z-decorative-0",                        "dect-base-sand",                          "d")
	aadd("z-decorative-0",                        "dect-base-sand-dark",                     "e")
	aadd("z-decorative-0",                        "dect-base-grass",                         "f")
	aadd("z-decorative-0",                        "dect-base-grass-dry",                     "g")
	aadd("z-decorative-0",                        "dect-base-red-desert",                    "h")
	aadd("z-decorative-0",                        "dect-base-red-desert-dark",               "i")
	
	aadd("z-decorative-1",                        "dect-paint-hazard",                       "k")
	aadd("z-decorative-1",                        "dect-paint-emergency",                    "l")
	aadd("z-decorative-1",                        "dect-paint-radiation",                    "m")
	aadd("z-decorative-1",                        "dect-paint-safety",                       "n")
	
	aadd("z-decorative-9",                        "dect-wood-floor",                         "db")
	
	-- text plates
	aadd("z-decorative-1",                        "small-iron-blank",                        "o")
	aadd("z-decorative-1",                        "large-iron-blank",                        "p")
	aadd("z-decorative-1",                        "small-copper-blank",                      "q")
	aadd("z-decorative-1",                        "large-copper-blank",                      "r")
	
	-- color coding
	aadd("z-decorative-1",                        "fire-hazard-concrete",                    "j")
	
	-- afraid of dark
	aadd("z-decorative-4",                        "balloon-light",                           "j")
	
	aadd("z-decorative-2",                        "concrete-red",                            "a")
	aadd("z-decorative-2",                        "concrete-orange",                         "b")
	aadd("z-decorative-2",                        "concrete-yellow",                         "c")
	aadd("z-decorative-2",                        "concrete-green",                          "d")
	aadd("z-decorative-2",                        "concrete-cyan",                           "e")
	aadd("z-decorative-2",                        "concrete-blue",                           "f")
	aadd("z-decorative-2",                        "concrete-purple",                         "g")
	aadd("z-decorative-2",                        "concrete-magenta",                        "h")
	aadd("z-decorative-2",                        "concrete-white",                          "i")
	aadd("z-decorative-2",                        "concrete-black",                          "j")
	
	aadd("z-decorative-3",                        "small-lamp-red",                          "a")
	aadd("z-decorative-3",                        "small-lamp-orange",                       "b")
	aadd("z-decorative-3",                        "small-lamp-yellow",                       "c")
	aadd("z-decorative-3",                        "small-lamp-green",                        "d")
	aadd("z-decorative-3",                        "small-lamp-cyan",                         "e")
	aadd("z-decorative-3",                        "small-lamp-blue",                         "f")
	aadd("z-decorative-3",                        "small-lamp-purple",                       "g")
	aadd("z-decorative-3",                        "small-lamp-magenta",                      "h")
	aadd("z-decorative-3",                        "small-lamp-white",                        "i")
	aadd("z-decorative-3",                        "small-lamp-black",                        "j")
	
	-- concrete lamppost
	aadd("z-decorative-8",                        "concrete-lamp",                           "i")
	aadd("z-decorative-8",                        "concrete-lamppost",                       "j")
	
	-- bright lamp
	aadd("z-decorative-8",                        "bright-lamp",                             "k")
	
	-- more floors
	aadd("z-decorative-9",                        "decal1",                                  "a")
	aadd("z-decorative-9",                        "experiment",                              "b")
	aadd("z-decorative-9",                        "checkerboard",                            "c")
	aadd("z-decorative-9",                        "wood-floor",                              "d")
	aadd("z-decorative-9",                        "herringbone",                             "e")
	aadd("z-decorative-9",                        "darkwood",                                "f")
	
	aadd("z-decorative-10",                       "lava",                                    "a")
	aadd("z-decorative-10",                       "snow",                                    "b")
	aadd("z-decorative-10",                       "tar",                                     "c")
	aadd("z-decorative-10",                       "toxic",                                   "d")
	aadd("z-decorative-10",                       "mf_dirt",                                 "e")
	aadd("z-decorative-10",                       "mf_dirt_dark",                            "f")
	aadd("z-decorative-10",                       "mf_sand_light",                           "g")
	aadd("z-decorative-10",                       "mf_sand_dark",                            "h")
	aadd("z-decorative-10",                       "mf_grass_dry",                            "i")
	aadd("z-decorative-10",                       "mf_green_grass",                          "j")
	aadd("z-decorative-10",                       "asphalt",                                 "k")
	aadd("z-decorative-10",                       "cobblestone",                             "l")
	aadd("z-decorative-10",                       "gravel",                                  "m")
	aadd("z-decorative-10",                       "redbrick",                                "n")
	aadd("z-decorative-10",                       "yellowbrick",                             "o")
	aadd("z-decorative-10",                       "reinforced-concrete",                     "p")
	aadd("z-decorative-10",                       "smooth-concrete",                         "q")
	aadd("z-decorative-10",                       "road-line",                               "r")
	aadd("z-decorative-10",                       "alien-metal",                             "s")
	aadd("z-decorative-10",                       "circuit-floor",                           "t")
	aadd("z-decorative-10",                       "diamond-plate",                           "u")
	aadd("z-decorative-10",                       "hexagonb",                                "v")
	aadd("z-decorative-10",                       "metal-scraps",                            "w")
	aadd("z-decorative-10",                       "rusty-metal",                             "x")
	
	aadd("z-decorative-11",                       "rusty-grate",                             "a")
	aadd("z-decorative-11",                       "arrow-grate",                             "b")
	aadd("z-decorative-11",                       "fast-arrow-grate",                        "c")
	aadd("z-decorative-11",                       "express-arrow-grate",                     "d")
	aadd("z-decorative-11",                       "nitinol-arrow-grate",                     "e")
	aadd("z-decorative-11",                       "titanium-arrow-grate",                    "f")
	
	aadd("z-decorative-12",                       "mf-concrete-red",                         "a")
	aadd("z-decorative-12",                       "mf-concrete-orange",                      "b")
	aadd("z-decorative-12",                       "mf-concrete-gold",                        "c")
	aadd("z-decorative-12",                       "mf-concrete-yellow",                      "d")
	aadd("z-decorative-12",                       "mf-concrete-green",                       "e")
	aadd("z-decorative-12",                       "mf-concrete-limegreen",                   "f")
	aadd("z-decorative-12",                       "mf-concrete-skyblue",                     "g")
	aadd("z-decorative-12",                       "mf-concrete-blue",                        "h")
	aadd("z-decorative-12",                       "mf-concrete-magenta",                     "i")
	aadd("z-decorative-12",                       "mf-concrete-pink",                        "j")
	aadd("z-decorative-12",                       "mf-concrete-purple",                      "k")
	aadd("z-decorative-12",                       "mf-concrete-white",                       "l")
	aadd("z-decorative-12",                       "mf-concrete-darkgrey",                    "m")
	aadd("z-decorative-12",                       "mf-concrete-black",                       "n")
	
	aadd("z-decorative-13",                       "sand_dark_blueprint",                     "a")
	aadd("z-decorative-13",                       "sand_light_blueprint",                    "b")
	aadd("z-decorative-13",                       "dirt_blueprint",                          "c")
	aadd("z-decorative-13",                       "dirt_dark_blueprint",                     "d")
	aadd("z-decorative-13",                       "mf_grass_dry_blueprint",                  "e")
	aadd("z-decorative-13",                       "mf_green_grass_blueprint",                "f")
end
do --[[alien]]--
	-- natural evolution
	aadd("z-alien-1",                             "TerraformingStation",                     "a")
	aadd("z-alien-1",                             "Artifact-collector",                      "b")
	for _                                       ,v in pairs(data.raw["item-subgroup"]) do
		if v.group == "Natural-Evolution" then v.group = "zgc-alien" end
	end
	
	if i_exist("attractor-on") then
		aadd("biters",                              "attractor-on",                            "z")
		aadd("spitters",                            "attractor-off",                           "z")
		aadd("Natural-Evolution",                   "Building_Materials",                      "0 a")
	end
	
end
do --[[atom]]--
	-- logistic reactor
	aadd("z-atom-0",                              "logistic-reactor",                        "ab")
	
	-- nuclear fuel
	aadd("z-atom-1",                              "breeder-fuel-cell",                       "d")
	aadd("z-atom-1",                              "nuclear-fuel-reprocessing",               "h")
	aadd("z-atom-1",                              "breeder-fuel-reprocessing",               "i")
	aadd("z-atom-1",                              "mox-fuel-cell",                           "j")
	
	--NPUtils-X
	aadd("z-atom-2",                              "n-power",                                 "a")
	aadd("z-atom-2",                              "n-chem-fuel-empty",                       "b")
	aadd("z-atom-2",                              "n-chem-fuel-1",                           "c")
	aadd("z-atom-2",                              "n-chem-fuel-2",                           "d")
	aadd("z-atom-2",                              "n-chem-fuel-3",                           "e")
	aadd("z-atom-2",                              "n-chem-fuel-4",                           "f")
	aadd("z-atom-2",                              "n-chem-inf-fuel-1",                       "g")
	aadd("z-atom-2",                              "n-chem-inf-fuel-2",                       "h")
	aadd("z-atom-2",                              "n-chem-inf-fuel-3",                       "i")
	aadd("z-atom-2",                              "n-chem-inf-fuel-4",                       "j")
	aadd("z-atom-3",                              "n-enr-alienol",                           "a")
	aadd("z-atom-3",                              "n-enr-heavy",                             "b")
	aadd("z-atom-3",                              "n-enr-light",                             "c")
	aadd("z-atom-3",                              "n-enr-petroleum",                         "d")
	aadd("z-atom-4",                              "n-heat-pipe",                             "a")
	aadd("z-atom-4",                              "n-adv-heat-pipe",                         "b")
	aadd("z-atom-5",                              "n-heat-gen",                              "a")
	aadd("z-atom-5",                              "n-chem-heat-gen",                         "b")
	aadd("z-atom-6",                              "n-heat-boi",                              "a")
	aadd("z-atom-6",                              "n-chem-heat-boi",                         "b")
	aadd("z-atom-7",                              "n-watts-eater",                           "a")

	-- uranium power
	if i_exist("uranium-hexafluoride") then
		
		aadd("uranium-energy-conversion",           "nuclear-fission-reactor-3-by-3",          "g")
		aadd("uranium-energy-conversion",           "nuclear-fission-reactor-5-by-5",          "h")
		
		aadd("uranium-ammo",                        "nuclear-fission-reactor-chest-9",         "g")
		aadd("uranium-ammo",                        "nuclear-fission-reactor-chest-25",        "h")

		zgc.add_main_group("atom")
		for _                                     ,v in pairs(data.raw["item-subgroup"]) do
			if v.group == "uranium" then v.group = "zgc-atom" end
		end
	end
	
	ihide("yellowcake-in-tanker")
	ihide("pressurised-water-in-tanker")
	ihide("fluorine-gas-in-tanker")
	ihide("uraninite-slurry-in-tanker")
	ihide("superheated-steam-in-tanker")
	ihide("low-pressure-steam-in-tanker")
	ihide("uranium-hexafluoride-in-tanker")
	ihide("uranium-hexafluoride-01-in-tanker")
	ihide("uranium-hexafluoride-02-in-tanker")
	ihide("uranium-hexafluoride-03-in-tanker")
	ihide("uranium-hexafluoride-04-in-tanker")
	ihide("uranium-hexafluoride-05-in-tanker")
	ihide("uranium-hexafluoride-06-in-tanker")
	ihide("uranium-hexafluoride-07-in-tanker")
	ihide("uranium-hexafluoride-08-in-tanker")
	ihide("uranium-hexafluoride-09-in-tanker")
	ihide("uranium-hexafluoride-10-in-tanker")
end
do --[[other]]--
	-- test mode
	aadd("z-other-0",                             "mjollnir",                                "a")
	aadd("z-other-0",                             "tm-solar-panel",                          "b")
	aadd("z-other-0",                             "tm-electric-pole",                        "c")
	
	-- magnet
	aadd("z-other-0",                             "magnet",                                  "d")
	
	-- spawn belt
	aadd("z-other-1",                             "spawn-belt",                              "a")
	aadd("z-other-1",                             "void-belt",                               "b")
	
	-- belt sorter
	aadd("z-other-1",                             "belt-sorter-everythingelse",              "c")
	
	if allow_changes and z_balance.other and data.raw.recipe["spawn-belt"] then
		data.raw.recipe["spawn-belt"].enabled = "false"
		data.raw.recipe["spawn-belt"].hidden = "false"
		data.raw.recipe["void-belt"].enabled = "false"
		data.raw.recipe["void-belt"].hidden = "false"
		zgc.t_add_recipe_unlock("logistics-3"     , "spawn-belt")
		zgc.t_add_recipe_unlock("logistics-3"     , "void-belt")
	end
	
	-- black market
	for _                                       ,v in pairs(data.raw["item-subgroup"]) do
		if v.group == "black-market-group" then v.group = "zgc-other" end
	end
	aadd("z-other-2",                             "ucoin",                                   "a")
	
	-- signals
	if data.raw["item-group"]["signals"] then data.raw["item-group"]["signals"].icon = "__ZGroupChange__/graphics/icons/cat/signals.png" end
	
	-- recycle 
	local m = {
		__index = function (data)
		if groups_supported and not groups_supported["zgc-alien"] then 
			groups_supported["zgc-alien"]   = "__ZGroupChange__/graphics/icons/cat/r/r_alien.png"
			groups_supported["zgc-armor"]   = "__ZGroupChange__/graphics/icons/cat/r/r_armor.png"
			groups_supported["zgc-atom"]   = "__ZGroupChange__/graphics/icons/cat/r/r_atom.png"
			groups_supported["zgc-automatization"] = "__ZGroupChange__/graphics/icons/cat/r/r_automatization.png"
			groups_supported["zgc-chemistry"]  = "__ZGroupChange__/graphics/icons/cat/r/r_chemistry.png"
			groups_supported["zgc-decorative"]  = "__ZGroupChange__/graphics/icons/cat/r/r_decorative.png"
			groups_supported["zgc-defense"]   = "__ZGroupChange__/graphics/icons/cat/r/r_defense.png"
			groups_supported["zgc-energy"]   = "__ZGroupChange__/graphics/icons/cat/r/r_energy.png"
			groups_supported["zgc-engines"]   = "__ZGroupChange__/graphics/icons/cat/r/r_engines.png"
			groups_supported["zgc-gathering"]  = "__ZGroupChange__/graphics/icons/cat/r/r_gathering.png"
			groups_supported["zgc-intermediate"] = "__ZGroupChange__/graphics/icons/cat/r/r_intermediate.png"
			groups_supported["zgc-chemistry"]   = "__ZGroupChange__/graphics/icons/cat/r/r_chemistry.png"
			groups_supported["zgc-logistic"]  = "__ZGroupChange__/graphics/icons/cat/r/r_logistic.png"
			groups_supported["zgc-module"]   = "__ZGroupChange__/graphics/icons/cat/r/r_module.png"
			groups_supported["zgc-other"]   = "__ZGroupChange__/graphics/icons/cat/r/r_other.png"
			groups_supported["zgc-parts"]   = "__ZGroupChange__/graphics/icons/cat/r/r_parts.png"
			groups_supported["zgc-plates"]   = "__ZGroupChange__/graphics/icons/cat/r/r_plates.png"
			groups_supported["zgc-production"]  = "__ZGroupChange__/graphics/icons/cat/r/r_production.png"
			groups_supported["zgc-refining"]  = "__ZGroupChange__/graphics/icons/cat/r/r_refining.png"
			groups_supported["zgc-resources"]  = "__ZGroupChange__/graphics/icons/cat/r/r_resources.png"
			groups_supported["zgc-trains-vehicles"] = "__ZGroupChange__/graphics/icons/cat/r/r_trains-vehicles.png"
			groups_supported["zgc-transport"]  = "__ZGroupChange__/graphics/icons/cat/r/r_transport.png"
			groups_supported["zgc-weaponry"]  = "__ZGroupChange__/graphics/icons/cat/r/r_weaponry.png"
			groups_supported["zgc-youki"]   = "__ZGroupChange__/graphics/icons/cat/r/r_youki.png"
		end
		return data
		end
	}
	if not dry411smods then dry411smods = {} end
	setmetatable(dry411smods                    , m)
	
	-- np utils
	if i_exist("n-cable") then
		data.raw["item-group"]["NPUtils"].icon = "__ZGroupChange__/graphics/icons/cat/NPUtils.png"
		data.raw["item-group"]["NPUtils"].icon_size = 64
	end
	if i_exist("n-small-pole") then
		data.raw["item-group"]["NPUtils-War"].icon = "__ZGroupChange__/graphics/icons/cat/NPUtils-War.png"
		data.raw["item-group"]["NPUtils-War"].icon_size = 64
	end
end
do  --[[barreling]]--
	-- automatic barrelling
	aadd("z-barreling-0",                         "auto-barrelling-machine-1",               "e")
	aadd("z-barreling-0",                         "auto-barrelling-machine-2",               "f")
end