local allow_changes = z_balance.nputils

if i_exist("n-cable") and allow_changes then
	data.raw["item-group"]["NPUtils"].icon = "__ZGroupChange__/graphics/icons/cat/NPUtils.png"
	data.raw["item-group"]["NPUtils"].icon_size = 64
end
if i_exist("n-small-pole") and allow_changes then
	data.raw["item-group"]["NPUtils-War"].icon = "__ZGroupChange__/graphics/icons/cat/NPUtils-War.png"
	data.raw["item-group"]["NPUtils-War"].icon_size = 64
end

do	--[[gathering]]--
end
do	--[[production]]--
end
do	--[[resources]]--
end
do	--[[plates]]--
end
do	--[[liquids]]--
end
do	--[[chemistry]]--
end
do	--[[automatization]]--
end
do	--[[transport]]--
end
do	--[[logistic]]--
end
do	--[[energy]]--
end
do	--[[defense]]--
end
do	--[[armor]]--
end
do	--[[intermediate]]--
end
do	--[[module]]--
end
do	--[[weaponry]]--
end
do	--[[trains-vehicles]]--
	aadd("z-vehicles-4",					"n-survivalist-car",																	"a")
	aadd("z-vehicles-4",					"n-survivalist-c-car",																"b")
	aadd("z-vehicles-4",					"n-survivalist-g-car",																"c")
	aadd("z-vehicles-4",					"n-survivalist-r-car",																"d")
	aadd("z-vehicles-4",					"n-s-survivalist-car",																"e")
	aadd("z-vehicles-4",					"n-s-survivalist-c-car",															"f")
	aadd("z-vehicles-4",					"n-s-survivalist-g-car",															"g")
	aadd("z-vehicles-4",					"n-s-survivalist-r-car",															"h")
	aadd("z-vehicles-5",					"n-p-survivalist-car",																"i")
	aadd("z-vehicles-5",					"n-p-survivalist-c-car",															"j")
	aadd("z-vehicles-5",					"n-p-survivalist-g-car",															"k")
	aadd("z-vehicles-5",					"n-p-survivalist-r-car",															"l")
	aadd("z-vehicles-6",					"n-trash-car",																				"a")
end
do	--[[alien]]--
end
do  --[[atomic]]--
	if i_exist("n-power") then
	aadd("z-atom-2",							"n-power",																						"a")
	aadd("z-atom-2",							"n-chem-fuel-empty",																	"b")
	aadd("z-atom-2",							"n-chem-fuel-1",																			"c")
	aadd("z-atom-2",							"n-chem-fuel-2",																			"d")
	aadd("z-atom-2",							"n-chem-fuel-3",																			"e")
	aadd("z-atom-2",							"n-chem-fuel-4",																			"f")
	aadd("z-atom-2",							"n-chem-inf-fuel-1",																	"g")
	aadd("z-atom-2",							"n-chem-inf-fuel-2",																	"h")
	aadd("z-atom-2",							"n-chem-inf-fuel-3",																	"i")
	aadd("z-atom-2",							"n-chem-inf-fuel-4",																	"j")
	aadd("z-atom-3",							"n-enr-alienol",																			"a")
	aadd("z-atom-3",							"n-enr-heavy",																				"b")
	aadd("z-atom-3",							"n-enr-light",																				"c")
	aadd("z-atom-3",							"n-enr-petroleum",																		"d")
	aadd("z-atom-4",							"n-heat-pipe",																				"a")
	aadd("z-atom-4",							"n-adv-heat-pipe",																		"b")
	aadd("z-atom-5",							"n-heat-gen",																					"a")
	aadd("z-atom-5",							"n-chem-heat-gen",																		"b")
	aadd("z-atom-6",							"n-heat-boi",																					"a")
	aadd("z-atom-6",							"n-chem-heat-boi",																		"b")
	aadd("z-atom-7",							"n-watts-eater",																			"a")
	end
end
do --[[barreling]]--
end
do --[[other]]--
end