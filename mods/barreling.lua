local barreling_groups = {"crafting-with-fluid", "air-pump", "barreling-pump", "angels-barrels"}
local ab = {}

do  --[[barreling]]--
	aadd("z-barreling-0",					"empty-barrel",																				"b")
	
	--Hide Bob's Gas Canisters
	if z_balance.hide_canisters then
		ahide("gas-canister")
		switch_tech("gas-canisters")
	end
	
	for _, recipe in pairs(data.raw["fluid"]) do
		local lname = string.lower(recipe.name)
		--zlog("Fluid Name: %s",recipe.name)
		if i_exist(recipe.name.."-barrel") or i_exist("fill-"..recipe.name.."-barrel") then
			if (not string.find(lname,"-gas-") and not (string.sub(lname, 0, 4) == "gas-") and not (string.sub(lname, -4) == "-gas")) then
				if (z_balance.barreling_sort) then
					aadd("z-barreling-1",	recipe.name.."-barrel",																						"a["..recipe.name.."]")
					aadd("z-barreling-3",					"fill-"..recipe.name.."-barrel",																						"a["..recipe.name.."]")
					aadd("z-barreling-5",					"empty-"..recipe.name.."-barrel",																						"a["..recipe.name.."]")
					else
					aadd("z-barreling-1",	recipe.name.."-barrel")
					aadd("z-barreling-3",				"fill-"..recipe.name.."-barrel")
					aadd("z-barreling-5",				"empty-"..recipe.name.."-barrel")
				end
				else
				if (z_balance.barreling_sort) then
					aadd("z-barreling-2",	recipe.name.."-barrel",																						"a["..recipe.name.."]")
					aadd("z-barreling-4",					"fill-"..recipe.name.."-barrel",																						"a["..recipe.name.."]")
					aadd("z-barreling-6",					"empty-"..recipe.name.."-barrel",																						"a["..recipe.name.."]")
					else
					aadd("z-barreling-2",	recipe.name.."-barrel")
					aadd("z-barreling-4",				"fill-"..recipe.name.."-barrel")
					aadd("z-barreling-6",				"empty-"..recipe.name.."-barrel")
				end
			end
		end
		--Move Canisters to Barreling
		if (i_exist(recipe.name.."-canister") and recipe.subgroup == "bob-gas-bottle" or recipe.subgroup == "bob-empty-gas-bottle") then
			if (z_balance.barreling_sort) then
				aadd("z-barreling-4",	recipe.name, "ay["..recipe.name.."]")
				else
				aadd("z-barreling-4",	recipe.name)
			end
			elseif (i_exist("empty-"..recipe.name.."-canister") and (recipe.subgroup == "bob-gas-bottle" or recipe.subgroup == "bob-empty-gas-bottle")) then
			if (z_balance.barreling_sort) then
				aadd("z-barreling-6",	recipe.name, "az["..recipe.name.."]")
				else
				aadd("z-barreling-6",	recipe.name)
			end
		end
		--Hide Canisters from Bob's Mods
		if z_balance.hide_canisters and (i_exist(recipe.name.."-canister") or recipe.subgroup == "bob-gas-bottle" or recipe.subgroup == "bob-empty-gas-bottle") then
			ahide(recipe.name.."-canister")
			ahide("fill-"..recipe.name.."-canister")
			ahide("filled-"..recipe.name.."-canister")
			ahide("empty-"..recipe.name.."-canister")
		end
	end
	for _,recipe in pairs(data.raw.recipe) do
		if (recipe.subgroup == "liquid-fill") then
			if (z_balance.barreling_sort) then
				aadd("z-barreling-3",	recipe.name, "a["..recipe.name.."]")
				else
				aadd("z-barreling-3",	recipe.name)
			end
			elseif (recipe.subgroup == "liquid-empty") then
			if (z_balance.barreling_sort) then
				aadd("z-barreling-5",	recipe.name, "a["..recipe.name.."]")
				else
				aadd("z-barreling-5",	recipe.name)
			end
			elseif (recipe.subgroup == "yie_fluid_handle" or group == "yuoki_liquids") and (recipe.main_product == "ye_canister") then
			if (z_balance.barreling_sort) then
				aadd("z-barreling-5",	recipe.name, "ax["..recipe.name.."]")
				else
				aadd("z-barreling-5",	recipe.name)
			end
		end
		--Hide Yuoki Canisters
		if z_balance.hide_canisters and (recipe.subgroup == "yie_fluid_handle") and (recipe.main_product == "ye_canister") then
			ahide(recipe.name)
		end
	end
end							