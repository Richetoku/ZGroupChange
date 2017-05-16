local vanila = z_balance.vanila
local barreling = z_balance.barreling
local barreling_sort = z_balance.barreling_sort
local chemistry = z_balance.chemistry
local dim = z_balance.dim
local hide_canisters = z_balance.hide_canisters
local bob = z_balance.bob
local angels = z_balance.angels
local youki = z_balance.youki
local other = z_balance.other

--# create list of ungrouped
local ungrouped = zgc.ungrouped()
local recipes = data.raw.recipe
do
	for _,name in pairs(ungrouped) do
--[[
		if recipes[name].group == nil and recipes[name].subgroup == nil then
			recipes[name].group = "zgc-other"
		end
--]]
		--[[gathering]]--
		--[[production]]--
--[[
		if recipes[name].group == "production" then
			recipes[name].group = "zgc-production"
			recipes[name].subgroup = "zgc-production-20"
		end
--]]
		--[[resources]]--
		--[[plates]]--
		--[[liquids]]--
--[[
		if recipes[name].subgroup == "fluid-recipes" then
			recipes[name].group = "zgc-liquids"
			recipes[name].subgroup = "zgc-liquids-6"
		end
--]]
		--[[chemistry]]--
		--[[automatization]]--
		--[[transport]]--
		--[[logistic]]--
--[[
		if recipes[name].group == "logistics" then
			recipes[name].group = "zgc-logistics"
			recipes[name].subgroup = "zgc-logistics-12"
		end
--]]
		--[[energy]]--
		--[[defense]]--
		--[[armor]]--
		--[[intermediate]]--
--[[
		if recipes[name].group == "intermediate-product" or recipes[name].subgroup == "intermediate-product" then
			recipes[name].group = "zgc-intermediate"
			recipes[name].subgroup = "zgc-intermediate-10"
		end
--]]
		--[[module]]--
		--[[weaponry]]--
		--[[trains-vehicles]]--
		--[[alien]]--
		--[[atomic]]--
	end
end
do --[[MOVE]]--
	--Move Liquids to Chemistry
	for _,recipe in pairs(recipes) do
		if z_balance.chemistry then
			if ((recipe.group == "zgc-liquids")) then
				recipe.group = "zgc-chemistry"
				--recipe.subgroup = "zgc-chemistry-"..string.sub(tostring(recipe.subgroup), 13)
				aadd("z-chemistry-"..string.sub(tostring(recipe.subgroup), 13),			recipe.name)
				elseif (string.sub(tostring(recipe.subgroup), 0, 11) == "zgc-liquids") then
				recipe.group = "zgc-chemistry"
				--recipe.subgroup = "zgc-chemistry-"..string.sub(tostring(recipe.subgroup), 13)
				--recipe.order = "z["..recipe.name.."]"
				aadd("z-chemistry-"..string.sub(tostring(recipe.subgroup), 13),			recipe.name,			"z["..recipe.name.."]")
			end
		end
	end
end