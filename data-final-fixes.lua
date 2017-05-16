z_debug = false


--# rebalancing
z_balance = z_balance or {}
require("config")
for k,v in pairs(z_balance) do z_balance[k] = not z_balance_Ignore_All and v end
if not data.raw["custom-input"] or not data.raw["custom-input"]["bob-inserter-drop-range"] then z_balance.bob_inserters = false end

_log("Balance: %s",dumpvar(z_balance))

--# generate name list
for k,v in pairs(data.raw) do
	if type(v) == "table" then
		for kk,vv in pairs(v) do
			table.insert(zgc.name_list,vv.name or kk)
		end
	end
end

--# create basic groups
zgc.generate_main_groups()
--# check which mods are enabled
zgc.enabled_mods()


require("mods.vanila")
require("mods.5dim")
require("mods.factorio-extended")
require("mods.bobs")
require("mods.angels")
require("mods.yuoki")
require("mods.yuoki_engine")
require("mods.yuoki_railway")

require("mods.other")
require("mods.barreling")
require("mods.sort")

if use_custom_order then require("mods._custom_") end


--# Change Player Inventory Size
if z_balance.inv_size then data.raw.player["player"].inventory_size = 120 end

local que = {
	"gathering", "production", "refining", "resources",
	"plates",	"barreling", "liquids", "chemistry", "youki",
	"engines", "atom", "parts", "agronomies", "armor",
	"weaponry", "module", "alien", "decorative", "other"
}

--# final tunning
zgc.resort_main_groups(que)
zgc.add_newRessource_finalize()


-- log a list of all recipes
if z_debug then
	_log("ZGroupChange Groups")
	for k,l in pairs(data.raw.recipe) do
		_log(k..": ");
		rPrint(l, 10000, "\t")
	end
end