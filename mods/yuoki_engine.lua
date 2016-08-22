local allow_changes = z_balance.youki_eng

if i_exist("ye_overheater") then
	zgc.add_main_group("engines")
	zgc.add_main_group("agronomies")

	for i=0,9 do zgc.get_group_name("z-engines-"..i,"") end
	for i=0,9 do zgc.get_group_name("z-agronomies-"..i,"") end

	for _,recipe in pairs(data.raw.recipe) do

		if recipe.subgroup == "yie-engines"			then recipe.group = "zgc-engines";    recipe.subgroup = "zgc-engines-0" end --Engines
		if recipe.subgroup == "yie_machinery"		then recipe.group = "zgc-engines";    recipe.subgroup = "zgc-engines-1" end --machinery
		if recipe.subgroup == "yie_machinery2"		then recipe.group = "zgc-engines";    recipe.subgroup = "zgc-engines-2" end --machinery2
		if recipe.subgroup == "yie-fluids"			then recipe.group = "zgc-engines";    recipe.subgroup = "zgc-engines-3" end --all fluids (MF)
		if recipe.subgroup == "yie-parts"			then recipe.group = "zgc-engines";    recipe.subgroup = "zgc-engines-4" end --building parts
		if recipe.subgroup == "yie-processed"		then recipe.group = "zgc-engines";    recipe.subgroup = "zgc-engines-5" end --products
		if recipe.subgroup == "yie-exp"				then recipe.group = "zgc-engines";    recipe.subgroup = "zgc-engines-5" end --temporary experimental stuff
		if recipe.subgroup == "yie_fluid_handle" and string.find(recipe.name,"empty")
													then recipe.group = "zgc-engines";    recipe.subgroup = "zgc-engines-7"		--fluid handling
	elseif recipe.subgroup == "yie_fluid_handle"	then recipe.group = "zgc-engines";    recipe.subgroup = "zgc-engines-6" end --fluid handling

		if recipe.subgroup == "yie_agromachinery"	then recipe.group = "zgc-agronomies"; recipe.subgroup = "zgc-agronomies-0" end --agriculture machinery
		if recipe.subgroup == "yie_agroproducts"	then recipe.group = "zgc-agronomies"; recipe.subgroup = "zgc-agronomies-1" end --agriculture products
		if recipe.subgroup == "yie_farming"			then recipe.group = "zgc-agronomies"; recipe.subgroup = "zgc-agronomies-2" end --farming stuff
		if recipe.subgroup == "yie_agro_package"	then recipe.group = "zgc-agronomies"; recipe.subgroup = "zgc-agronomies-3" end --agriculture packages
		if recipe.subgroup == "yie_trades"			then recipe.group = "zgc-agronomies"; recipe.subgroup = "zgc-agronomies-3" end --trade stuff
		if recipe.subgroup == "yie_animals"			then recipe.group = "zgc-agronomies"; recipe.subgroup = "zgc-agronomies-4" end --ranch stuff
		if recipe.subgroup == "yie_fish"			then recipe.group = "zgc-agronomies"; recipe.subgroup = "zgc-agronomies-4" end --fish-stuff
		if recipe.subgroup == "yie_dnaline"			then recipe.group = "zgc-agronomies"; recipe.subgroup = "zgc-agronomies-5" end --DNA-Line

	end

	for _,item in pairs(data.raw.item) do

		if item.subgroup == "yie-engines"		then item.group = "zgc-engines";    item.subgroup = "zgc-engines-0" end --Engines
		if item.subgroup == "yie-exp"			then item.group = "zgc-engines";    item.subgroup = "zgc-engines-1" end --temporary experimental stuff
		if item.subgroup == "yie-fluids"		then item.group = "zgc-engines";    item.subgroup = "zgc-engines-2" end --all fluids (MF)
		if item.subgroup == "yie-parts"			then item.group = "zgc-engines";    item.subgroup = "zgc-engines-3" end --building parts
		if item.subgroup == "yie-processed"		then item.group = "zgc-engines";    item.subgroup = "zgc-engines-4" end --products
		if item.subgroup == "yie_machinery"		then item.group = "zgc-engines";    item.subgroup = "zgc-engines-5" end --machinery
		if item.subgroup == "yie_machinery2"	then item.group = "zgc-engines";    item.subgroup = "zgc-engines-6" end --machinery2
		if item.subgroup == "yie_fluid_handle"	then item.group = "zgc-engines";    item.subgroup = "zgc-engines-7" end --fluid handling
		if item.subgroup == "yie_agromachinery"	then item.group = "zgc-agronomies"; item.subgroup = "zgc-agronomies-0" end --agriculture machinery
		if item.subgroup == "yie_agroproducts"	then item.group = "zgc-agronomies"; item.subgroup = "zgc-agronomies-1" end --agriculture products
		if item.subgroup == "yie_agro_package"	then item.group = "zgc-agronomies"; item.subgroup = "zgc-agronomies-2" end --agriculture packages
		if item.subgroup == "yie_animals"		then item.group = "zgc-agronomies"; item.subgroup = "zgc-agronomies-3" end --ranch stuff
		if item.subgroup == "yie_dnaline"		then item.group = "zgc-agronomies"; item.subgroup = "zgc-agronomies-4" end --DNA-Line
		if item.subgroup == "yie_farming"		then item.group = "zgc-agronomies"; item.subgroup = "zgc-agronomies-5" end --farming stuff
		if item.subgroup == "yie_fish"			then item.group = "zgc-agronomies"; item.subgroup = "zgc-agronomies-6" end --fish-stuff
		if item.subgroup == "yie_trades"		then item.group = "zgc-agronomies"; item.subgroup = "zgc-agronomies-7" end --trade stuff

	end
end

do	--[[engines]]--
	aadd("z-engines-0",		"aaa",					"z") -- 
	
	aadd("z-engines-1",		"aaa",					"z") -- 
	
	aadd("z-engines-2",		"ye_canmachine",					"z") -- 
	aadd("z-engines-2",		"aaa",					"z") -- 
	
	aadd("z-engines-3",		"aaa",					"z") -- 
	
	aadd("z-engines-4",		"aaa",					"z") -- 
	
	aadd("z-engines-5",		"ye_canister",						"z") -- 
	aadd("z-engines-5",		"ye_canister2plates_smelt",			"z") -- 
	aadd("z-engines-5",		"aaa",					"z") -- 
	
	aadd("z-engines-6",		"aaa",					"z") -- 
	
	aadd("z-engines-7",		"aaa",					"z") -- 
	
end
do	--[[agronomies]]--
	aadd("z-agronomies-0",		"aaa",					"z") -- 
	
	aadd("z-agronomies-1",		"aaa",					"z") -- 
	
	aadd("z-agronomies-2",		"y_unlimited_wood",				"z") -- 
	aadd("z-agronomies-2",		"ye_granulate_trifitan_recipe",	"z") -- 
	aadd("z-agronomies-2",		"ye_granulate_vuger_recipe",	"z") -- 
	aadd("z-agronomies-2",		"ye_granulate_corn_recipe",		"z") -- 
	aadd("z-agronomies-2",		"ye_biofuel_recipe",			"z") -- 
	aadd("z-agronomies-2",		"ye_slurry2ethanol_recipe",		"z") -- 
	aadd("z-agronomies-2",		"aaa",					"z") -- 
	
	aadd("z-agronomies-3",		"aaa",					"z") -- 
	
	aadd("z-agronomies-4",		"aaa",					"z") -- 
	
	aadd("z-agronomies-5",		"aaa",					"z") -- 
	
	aadd("z-agronomies-6",		"aaa",					"z") -- 
	
	aadd("z-agronomies-7",		"aaa",					"z") -- 
	
end

do	--[[TECH]]--
	if z_balance.youki_tech and i_exist("ye_overheater") then
		
		data:extend({
			{
				type = "technology",
				name = "yuoki_engines",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_engines.png",
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
				order = "y-1[g]"
			},
			{
				type = "technology",
				name = "yuoki_engines-2",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_engines.png",
				prerequisites = {"yuoki_engines"},
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
				order = "y-2[g]"
			},
			{
				type = "technology",
				name = "yuoki_engines-3",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_engines.png",
				prerequisites = {"yuoki_engines-2"},
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
				order = "y-3[g]"
			}
		})
		data:extend({
			{
				type = "technology",
				name = "yuoki_agronomie",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_agronomie.png",
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
				order = "y-1[h]"
			},
			{
				type = "technology",
				name = "yuoki_agronomie-2",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_agronomie.png",
				prerequisites = {"yuoki_agronomie"},
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
				order = "y-2[h]"
			},
			{
				type = "technology",
				name = "yuoki_agronomie-3",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_agronomie.png",
				prerequisites = {"yuoki_agronomie-2"},
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
				order = "y-3[h]"
			}
		})
		
		-- yuoki_engines-3
		-- yuoki_agronomie-3

		do --# engines
			zgc.add_recipe_to_tech("yuoki_engines", "aaa")
			zgc.add_recipe_to_tech("yuoki_engines", "aaa")
			zgc.add_recipe_to_tech("yuoki_engines", "aaa")
			zgc.add_recipe_to_tech("yuoki_engines", "aaa")
			zgc.add_recipe_to_tech("yuoki_engines", "aaa")
		end
		do --# agronomies
			zgc.add_recipe_to_tech("yuoki_agronomie", "aaa")
			zgc.add_recipe_to_tech("yuoki_agronomie", "aaa")
			zgc.add_recipe_to_tech("yuoki_agronomie", "aaa")
			zgc.add_recipe_to_tech("yuoki_agronomie", "aaa")
			zgc.add_recipe_to_tech("yuoki_agronomie", "aaa")
			zgc.add_recipe_to_tech("yuoki_agronomie", "aaa")
			zgc.add_recipe_to_tech("yuoki_agronomie", "aaa")
			zgc.add_recipe_to_tech("yuoki_agronomie", "aaa")
		end
	end
end
