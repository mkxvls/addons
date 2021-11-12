--[[
************************************************************************
Blacksmithing.lua
Blacksmithing data for all of Ackis Recipe List
************************************************************************
File date: 2010-06-19T02:39:46Z
File revision: @file-revision@
Project revision: @project-revision@
Project version: v2.01
************************************************************************
Please see http://www.wowace.com/addons/arl/ for more information.
************************************************************************
This source code is released under All Rights Reserved.
************************************************************************
]]--

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local MODNAME	= "Ackis Recipe List"
local addon	= LibStub("AceAddon-3.0"):GetAddon(MODNAME)
local L		= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

local private	= select(2, ...)

-------------------------------------------------------------------------------
-- Filter flags. Acquire types, and Reputation levels.
-------------------------------------------------------------------------------
local F		= private.filter_flags
local A		= private.acquire_types
local Q		= private.item_qualities
local REP	= private.rep_levels
local FAC	= private.faction_ids
local V		= private.game_versions

local initialized = false
local num_recipes = 0

--------------------------------------------------------------------------------------------------------------------
-- Counter and wrapper function
--------------------------------------------------------------------------------------------------------------------
local function AddRecipe(spell_id, skill_level, item_id, quality, genesis, optimal_level, medium_level, easy_level, trivial_level, specialty)
	num_recipes = num_recipes + 1
	addon:AddRecipe(spell_id, skill_level, item_id, quality, 2018, specialty, genesis, optimal_level, medium_level, easy_level, trivial_level)
end

function addon:InitBlacksmithing()
	if initialized then
		return num_recipes
	end
	initialized = true

	-- Rough Sharpening Stone -- 2660
	AddRecipe(2660, 1, 2862, Q.COMMON, V.ORIG, 1, 15, 35, 55)
	self:AddRecipeFlags(2660, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(2660, A.CUSTOM, 8)

	-- Copper Chain Belt -- 2661
	AddRecipe(2661, 35, 2851, Q.COMMON, V.ORIG, 35, 75, 95, 115)
	self:AddRecipeFlags(2661, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(2661, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Copper Chain Pants -- 2662
	AddRecipe(2662, 1, 2852, Q.COMMON, V.ORIG, 1, 50, 70, 90)
	self:AddRecipeFlags(2662, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(2662, 3355, 3174, 29924, 16724, 26981, 6299, 2998, 26904, 17245, 19341, 26952, 33631, 28694, 3136, 4258, 514, 15400, 26988, 2836, 27034, 33609, 4596, 3557, 33591, 33675, 5511, 16823, 1241, 16669, 3478, 16583, 26564)

	-- Copper Bracers -- 2663
	AddRecipe(2663, 1, 2853, Q.COMMON, V.ORIG, 1, 20, 40, 60)
	self:AddRecipeFlags(2663, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.MAIL)
	self:AddRecipeAcquire(2663, A.CUSTOM, 8)

	-- Runed Copper Bracers -- 2664
	AddRecipe(2664, 90, 2854, Q.COMMON, V.ORIG, 90, 115, 127, 140)
	self:AddRecipeFlags(2664, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(2664, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Coarse Sharpening Stone -- 2665
	AddRecipe(2665, 65, 2863, Q.COMMON, V.ORIG, 65, 65, 72, 80)
	self:AddRecipeFlags(2665, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(2665, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Runed Copper Belt -- 2666
	AddRecipe(2666, 70, 2857, Q.COMMON, V.ORIG, 70, 110, 130, 150)
	self:AddRecipeFlags(2666, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(2666, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Runed Copper Breastplate -- 2667
	AddRecipe(2667, 80, 2864, Q.UNCOMMON, V.ORIG, 80, 120, 140, 160)
	self:AddRecipeFlags(2667, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(2667, "Kalimdor", "Eastern Kingdoms")

	-- Rough Bronze Leggings -- 2668
	AddRecipe(2668, 105, 2865, Q.COMMON, V.ORIG, 105, 145, 160, 175)
	self:AddRecipeFlags(2668, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(2668, 3174, 29924, 3355, 16724, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 27034, 3136, 4258, 514, 1241, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 26988, 16669, 3478, 33591, 26981)

	-- Rough Bronze Cuirass -- 2670
	AddRecipe(2670, 105, 2866, Q.COMMON, V.ORIG, 105, 145, 160, 175)
	self:AddRecipeFlags(2670, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(2670, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Patterned Bronze Bracers -- 2672
	AddRecipe(2672, 120, 2868, Q.COMMON, V.ORIG, 120, 150, 165, 180)
	self:AddRecipeFlags(2672, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(2672, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Silvered Bronze Breastplate -- 2673
	AddRecipe(2673, 130, 2869, Q.UNCOMMON, V.ORIG, 130, 160, 175, 190)
	self:AddRecipeFlags(2673, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(2673, "Kalimdor", "Eastern Kingdoms")

	-- Heavy Sharpening Stone -- 2674
	AddRecipe(2674, 125, 2871, Q.COMMON, V.ORIG, 125, 125, 132, 140)
	self:AddRecipeFlags(2674, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(2674, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Shining Silver Breastplate -- 2675
	AddRecipe(2675, 145, 2870, Q.COMMON, V.ORIG, 145, 175, 190, 205)
	self:AddRecipeFlags(2675, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(2675, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Copper Mace -- 2737
	AddRecipe(2737, 15, 2844, Q.COMMON, V.ORIG, 15, 55, 75, 95)
	self:AddRecipeFlags(2737, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(2737, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Copper Axe -- 2738
	AddRecipe(2738, 20, 2845, Q.COMMON, V.ORIG, 20, 60, 80, 100)
	self:AddRecipeFlags(2738, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(2738, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Copper Shortsword -- 2739
	AddRecipe(2739, 25, 2847, Q.COMMON, V.ORIG, 25, 65, 85, 105)
	self:AddRecipeFlags(2739, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(2739, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Bronze Mace -- 2740
	AddRecipe(2740, 110, 2848, Q.COMMON, V.ORIG, 110, 140, 155, 170)
	self:AddRecipeFlags(2740, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(2740, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Bronze Axe -- 2741
	AddRecipe(2741, 115, 2849, Q.COMMON, V.ORIG, 115, 145, 160, 175)
	self:AddRecipeFlags(2741, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(2741, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Bronze Shortsword -- 2742
	AddRecipe(2742, 120, 2850, Q.COMMON, V.ORIG, 120, 150, 165, 180)
	self:AddRecipeFlags(2742, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(2742, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Rough Weightstone -- 3115
	AddRecipe(3115, 1, 3239, Q.COMMON, V.ORIG, 1, 15, 35, 55)
	self:AddRecipeFlags(3115, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(3115, A.CUSTOM, 8)

	-- Coarse Weightstone -- 3116
	AddRecipe(3116, 65, 3240, Q.COMMON, V.ORIG, 65, 65, 72, 80)
	self:AddRecipeFlags(3116, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3116, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Heavy Weightstone -- 3117
	AddRecipe(3117, 125, 3241, Q.COMMON, V.ORIG, 125, 125, 132, 140)
	self:AddRecipeFlags(3117, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3117, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Heavy Copper Broadsword -- 3292
	AddRecipe(3292, 95, 3487, Q.COMMON, V.ORIG, 95, 135, 155, 175)
	self:AddRecipeFlags(3292, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TWO_HAND, F.SWORD)
	self:AddRecipeTrainer(3292, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Copper Battle Axe -- 3293
	AddRecipe(3293, 35, 3488, Q.COMMON, V.ORIG, 35, 75, 95, 115)
	self:AddRecipeFlags(3293, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TWO_HAND, F.AXE)
	self:AddRecipeTrainer(3293, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Thick War Axe -- 3294
	AddRecipe(3294, 70, 3489, Q.COMMON, V.ORIG, 70, 110, 130, 150)
	self:AddRecipeFlags(3294, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(3294, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Deadly Bronze Poniard -- 3295
	AddRecipe(3295, 125, 3490, Q.UNCOMMON, V.ORIG, 125, 155, 170, 195)
	self:AddRecipeFlags(3295, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.DAGGER)
	self:AddRecipeWorldDrop(3295, "Kalimdor", "Eastern Kingdoms")

	-- Heavy Bronze Mace -- 3296
	AddRecipe(3296, 130, 3491, Q.COMMON, V.ORIG, 130, 160, 175, 190)
	self:AddRecipeFlags(3296, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(3296, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Mighty Iron Hammer -- 3297
	AddRecipe(3297, 145, 3492, Q.UNCOMMON, V.ORIG, 145, 175, 190, 205)
	self:AddRecipeFlags(3297, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.MACE)
	self:AddRecipeWorldDrop(3297, "Kalimdor", "Eastern Kingdoms")

	-- Copper Chain Boots -- 3319
	AddRecipe(3319, 20, 3469, Q.COMMON, V.ORIG, 20, 60, 80, 100)
	self:AddRecipeFlags(3319, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(3319, 3355, 3174, 29924, 16724, 26981, 6299, 2998, 26904, 17245, 19341, 26952, 33631, 28694, 3136, 4258, 514, 15400, 26988, 2836, 27034, 33609, 4596, 3557, 33591, 33675, 5511, 16823, 1241, 16669, 3478, 16583, 26564)

	-- Rough Grinding Stone -- 3320
	AddRecipe(3320, 25, 3470, Q.COMMON, V.ORIG, 25, 45, 65, 85)
	self:AddRecipeFlags(3320, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3320, 3174, 29924, 3355, 16724, 6299, 2998, 26904, 17245, 26564, 26952, 33631, 1241, 3136, 4258, 514, 28694, 26988, 2836, 27034, 33609, 4596, 3557, 33591, 33675, 5511, 16823, 15400, 16669, 3478, 26981, 16583)

	-- Copper Chain Vest -- 3321
	AddRecipe(3321, 35, 3471, Q.UNCOMMON, V.ORIG, 35, 75, 95, 115)
	self:AddRecipeFlags(3321, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(3321, "Kalimdor", "Eastern Kingdoms")

	-- Runed Copper Gauntlets -- 3323
	AddRecipe(3323, 40, 3472, Q.COMMON, V.ORIG, 40, 80, 100, 120)
	self:AddRecipeFlags(3323, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(3323, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Runed Copper Pants -- 3324
	AddRecipe(3324, 45, 3473, Q.COMMON, V.ORIG, 45, 85, 105, 125)
	self:AddRecipeFlags(3324, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(3324, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Gemmed Copper Gauntlets -- 3325
	AddRecipe(3325, 60, 3474, Q.UNCOMMON, V.ORIG, 60, 100, 120, 140)
	self:AddRecipeFlags(3325, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.MAIL)
	self:AddRecipeWorldDrop(3325, "Kalimdor", "Eastern Kingdoms")

	-- Coarse Grinding Stone -- 3326
	AddRecipe(3326, 75, 3478, Q.COMMON, V.ORIG, 75, 75, 87, 100)
	self:AddRecipeFlags(3326, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3326, 3174, 29924, 3355, 1241, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 33591, 3136, 4258, 514, 16724, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 26988, 16669, 3478, 26981, 33631)

	-- Rough Bronze Shoulders -- 3328
	AddRecipe(3328, 110, 3480, Q.COMMON, V.ORIG, 110, 140, 155, 170)
	self:AddRecipeFlags(3328, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(3328, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Silvered Bronze Shoulders -- 3330
	AddRecipe(3330, 125, 3481, Q.UNCOMMON, V.ORIG, 125, 155, 170, 185)
	self:AddRecipeFlags(3330, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(3330, "Kalimdor", "Eastern Kingdoms")

	-- Silvered Bronze Boots -- 3331
	AddRecipe(3331, 130, 3482, Q.COMMON, V.ORIG, 130, 160, 175, 190)
	self:AddRecipeFlags(3331, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(3331, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Silvered Bronze Gauntlets -- 3333
	AddRecipe(3333, 135, 3483, Q.COMMON, V.ORIG, 135, 165, 180, 195)
	self:AddRecipeFlags(3333, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(3333, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Green Iron Boots -- 3334
	AddRecipe(3334, 145, 3484, Q.UNCOMMON, V.ORIG, 145, 175, 190, 205)
	self:AddRecipeFlags(3334, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(3334, "Kalimdor", "Eastern Kingdoms")

	-- Green Iron Gauntlets -- 3336
	AddRecipe(3336, 150, 3485, Q.UNCOMMON, V.ORIG, 150, 180, 195, 210)
	self:AddRecipeFlags(3336, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(3336, "Kalimdor", "Eastern Kingdoms")

	-- Heavy Grinding Stone -- 3337
	AddRecipe(3337, 125, 3486, Q.COMMON, V.ORIG, 125, 125, 137, 150)
	self:AddRecipeFlags(3337, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3337, 3174, 29924, 3355, 16724, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 27034, 3136, 4258, 514, 1241, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 26988, 16669, 3478, 33591, 26981)

	-- Big Bronze Knife -- 3491
	AddRecipe(3491, 105, 3848, Q.COMMON, V.ORIG, 105, 135, 150, 165)
	self:AddRecipeFlags(3491, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND, F.DAGGER)
	self:AddRecipeTrainer(3491, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Hardened Iron Shortsword -- 3492
	AddRecipe(3492, 160, 3849, Q.COMMON, V.ORIG, 160, 185, 197, 210)
	self:AddRecipeFlags(3492, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeVendor(3492, 2843, 5512)

	-- Jade Serpentblade -- 3493
	AddRecipe(3493, 175, 3850, Q.UNCOMMON, V.ORIG, 175, 200, 212, 225)
	self:AddRecipeFlags(3493, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeWorldDrop(3493, "Kalimdor", "Eastern Kingdoms")

	-- Solid Iron Maul -- 3494
	AddRecipe(3494, 155, 3851, Q.COMMON, V.ORIG, 155, 180, 192, 205)
	self:AddRecipeFlags(3494, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.TWO_HAND, F.MACE)
	self:AddRecipeVendor(3494, 9179, 8878, 1471)

	-- Golden Iron Destroyer -- 3495
	AddRecipe(3495, 170, 3852, Q.UNCOMMON, V.ORIG, 170, 195, 207, 220)
	self:AddRecipeFlags(3495, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeWorldDrop(3495, "Kalimdor", "Eastern Kingdoms")

	-- Moonsteel Broadsword -- 3496
	AddRecipe(3496, 180, 3853, Q.COMMON, V.ORIG, 180, 205, 217, 230)
	self:AddRecipeFlags(3496, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.TWO_HAND, F.SWORD)
	self:AddRecipeVendor(3496, 2482)

	-- Frost Tiger Blade -- 3497
	AddRecipe(3497, 200, 3854, Q.UNCOMMON, V.ORIG, 200, 210, 215, 220)
	self:AddRecipeFlags(3497, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.TWO_HAND, F.SWORD)
	self:AddRecipeWorldDrop(3497, "Kalimdor", "Eastern Kingdoms")

	-- Massive Iron Axe -- 3498
	AddRecipe(3498, 185, 3855, Q.COMMON, V.ORIG, 185, 210, 222, 235)
	self:AddRecipeFlags(3498, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeVendor(3498, 2483, 1146)

	-- Shadow Crescent Axe -- 3500
	AddRecipe(3500, 200, 3856, Q.UNCOMMON, V.ORIG, 200, 225, 237, 250)
	self:AddRecipeFlags(3500, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeWorldDrop(3500, "Kalimdor", "Eastern Kingdoms")

	-- Green Iron Bracers -- 3501
	AddRecipe(3501, 165, 3835, Q.COMMON, V.ORIG, 165, 190, 202, 215)
	self:AddRecipeFlags(3501, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(3501, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 27034, 3136, 4258, 514, 1241, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 26988, 16669, 3478, 33591, 26981)

	-- Green Iron Helm -- 3502
	AddRecipe(3502, 170, 3836, Q.COMMON, V.ORIG, 170, 195, 207, 220)
	self:AddRecipeFlags(3502, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(3502, 16724, 3174, 33591, 3355, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Golden Scale Coif -- 3503
	AddRecipe(3503, 190, 3837, Q.COMMON, V.ORIG, 190, 215, 227, 240)
	self:AddRecipeFlags(3503, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeVendor(3503, 5411)

	-- Green Iron Shoulders -- 3504
	AddRecipe(3504, 160, 3840, Q.UNCOMMON, V.ORIG, 160, 185, 197, 210)
	self:AddRecipeFlags(3504, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(3504, "Kalimdor", "Eastern Kingdoms")

	-- Golden Scale Shoulders -- 3505
	AddRecipe(3505, 175, 3841, Q.RARE, V.ORIG, 175, 200, 212, 225)
	self:AddRecipeFlags(3505, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(3505, "Kalimdor", "Eastern Kingdoms")

	-- Green Iron Leggings -- 3506
	AddRecipe(3506, 155, 3842, Q.COMMON, V.ORIG, 155, 180, 192, 205)
	self:AddRecipeFlags(3506, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(3506, 16724, 3174, 33591, 3355, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Golden Scale Leggings -- 3507
	AddRecipe(3507, 170, 3843, Q.UNCOMMON, V.ORIG, 170, 195, 207, 220)
	self:AddRecipeFlags(3507, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(3507, "Kalimdor", "Eastern Kingdoms")

	-- Green Iron Hauberk -- 3508
	AddRecipe(3508, 180, 3844, Q.COMMON, V.ORIG, 180, 205, 217, 230)
	self:AddRecipeFlags(3508, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(3508, 16724, 3174, 33591, 3355, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Golden Scale Cuirass -- 3511
	AddRecipe(3511, 195, 3845, Q.UNCOMMON, V.ORIG, 195, 220, 232, 245)
	self:AddRecipeFlags(3511, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(3511, "Kalimdor", "Eastern Kingdoms")

	-- Polished Steel Boots -- 3513
	AddRecipe(3513, 185, 3846, Q.UNCOMMON, V.ORIG, 185, 210, 222, 235)
	self:AddRecipeFlags(3513, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.MAIL)
	self:AddRecipeWorldDrop(3513, "Kalimdor", "Eastern Kingdoms")

	-- Golden Scale Boots -- 3515
	AddRecipe(3515, 200, 3847, Q.RARE, V.ORIG, 200, 210, 215, 220)
	self:AddRecipeFlags(3515, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(3515, "Kalimdor", "Eastern Kingdoms")

	-- Pearl-handled Dagger -- 6517
	AddRecipe(6517, 110, 5540, Q.COMMON, V.ORIG, 110, 140, 155, 170)
	self:AddRecipeFlags(6517, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.DAGGER)
	self:AddRecipeTrainer(6517, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Iridescent Hammer -- 6518
	AddRecipe(6518, 140, 5541, Q.UNCOMMON, V.ORIG, 140, 170, 185, 200)
	self:AddRecipeFlags(6518, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.MACE)
	self:AddRecipeWorldDrop(6518, "Kalimdor", "Eastern Kingdoms")

	-- Iron Shield Spike -- 7221
	AddRecipe(7221, 150, 6042, Q.UNCOMMON, V.ORIG, 150, 180, 195, 210)
	self:AddRecipeFlags(7221, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.TANK, F.SHIELD)
	self:AddRecipeWorldDrop(7221, "Kalimdor", "Eastern Kingdoms")

	-- Iron Counterweight -- 7222
	AddRecipe(7222, 165, 6043, Q.UNCOMMON, V.ORIG, 165, 190, 202, 215)
	self:AddRecipeFlags(7222, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.AXE)
	self:AddRecipeWorldDrop(7222, "Kalimdor", "Eastern Kingdoms")

	-- Golden Scale Bracers -- 7223
	AddRecipe(7223, 185, 6040, Q.COMMON, V.ORIG, 185, 210, 222, 235)
	self:AddRecipeFlags(7223, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK, F.MAIL)
	self:AddRecipeTrainer(7223, 16724, 3174, 33591, 3355, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Steel Weapon Chain -- 7224
	AddRecipe(7224, 190, 6041, Q.UNCOMMON, V.ORIG, 190, 215, 227, 240)
	self:AddRecipeFlags(7224, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(7224, "Kalimdor", "Eastern Kingdoms")

	-- Heavy Copper Maul -- 7408
	AddRecipe(7408, 65, 6214, Q.COMMON, V.ORIG, 65, 105, 125, 145)
	self:AddRecipeFlags(7408, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeTrainer(7408, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Rough Bronze Boots -- 7817
	AddRecipe(7817, 95, 6350, Q.COMMON, V.ORIG, 95, 125, 140, 155)
	self:AddRecipeFlags(7817, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(7817, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Silver Rod -- 7818
	AddRecipe(7818, 100, 6338, Q.COMMON, V.ORIG, 100, 105, 107, 110)
	self:AddRecipeFlags(7818, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(7818, 3174, 29924, 3355, 16724, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 27034, 3136, 4258, 514, 1241, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 26988, 16669, 3478, 33591, 26981)

	-- Ironforge Breastplate -- 8367
	AddRecipe(8367, 100, 6731, Q.UNCOMMON, V.ORIG, 100, 140, 160, 180)
	self:AddRecipeFlags(8367, F.ALLIANCE, F.QUEST, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeQuest(8367, 1618)

	-- Iron Buckle -- 8768
	AddRecipe(8768, 150, 7071, Q.COMMON, V.ORIG, 150, 150, 152, 155)
	self:AddRecipeFlags(8768, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(8768, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Copper Dagger -- 8880
	AddRecipe(8880, 30, 7166, Q.COMMON, V.ORIG, 30, 70, 90, 110)
	self:AddRecipeFlags(8880, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND, F.DAGGER)
	self:AddRecipeTrainer(8880, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Barbaric Iron Shoulders -- 9811
	AddRecipe(9811, 160, 7913, Q.UNCOMMON, V.ORIG, 160, 185, 197, 210)
	self:AddRecipeFlags(9811, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeQuest(9811, 2752)

	-- Barbaric Iron Breastplate -- 9813
	AddRecipe(9813, 160, 7914, Q.UNCOMMON, V.ORIG, 160, 185, 197, 210)
	self:AddRecipeFlags(9813, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeQuest(9813, 2751)

	-- Barbaric Iron Helm -- 9814
	AddRecipe(9814, 175, 7915, Q.UNCOMMON, V.ORIG, 175, 200, 212, 225)
	self:AddRecipeFlags(9814, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeQuest(9814, 2754)

	-- Barbaric Iron Boots -- 9818
	AddRecipe(9818, 180, 7916, Q.UNCOMMON, V.ORIG, 180, 205, 217, 230)
	self:AddRecipeFlags(9818, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeQuest(9818, 2753)

	-- Barbaric Iron Gloves -- 9820
	AddRecipe(9820, 185, 7917, Q.UNCOMMON, V.ORIG, 185, 210, 222, 235)
	self:AddRecipeFlags(9820, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeQuest(9820, 2755)

	-- Steel Breastplate -- 9916
	AddRecipe(9916, 200, 7963, Q.COMMON, V.ORIG, 200, 225, 237, 250)
	self:AddRecipeFlags(9916, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(9916, 16724, 3174, 33591, 3355, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Solid Sharpening Stone -- 9918
	AddRecipe(9918, 200, 7964, Q.COMMON, V.ORIG, 200, 200, 205, 210)
	self:AddRecipeFlags(9918, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(9918, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 17245, 3136, 4258, 514, 1241, 28694, 2836, 27034, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 26988, 16669, 3478, 26981, 26564)

	-- Solid Grinding Stone -- 9920
	AddRecipe(9920, 200, 7966, Q.COMMON, V.ORIG, 200, 200, 205, 210)
	self:AddRecipeFlags(9920, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(9920, 3174, 29924, 16724, 6299, 2998, 26904, 3355, 26564, 26952, 16583, 17245, 3136, 4258, 514, 26988, 1241, 2836, 27034, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 28694, 16669, 3478, 33591, 26981)

	-- Solid Weightstone -- 9921
	AddRecipe(9921, 200, 7965, Q.COMMON, V.ORIG, 200, 200, 205, 210)
	self:AddRecipeFlags(9921, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(9921, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 17245, 3136, 4258, 514, 1241, 28694, 2836, 27034, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 26988, 16669, 3478, 26981, 26564)

	-- Heavy Mithril Shoulder -- 9926
	AddRecipe(9926, 205, 7918, Q.COMMON, V.ORIG, 205, 225, 235, 245)
	self:AddRecipeFlags(9926, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeTrainer(9926, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 17245, 3136, 4258, 514, 1241, 28694, 2836, 27034, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 26988, 16669, 3478, 26981, 26564)

	-- Heavy Mithril Gauntlet -- 9928
	AddRecipe(9928, 205, 7919, Q.COMMON, V.ORIG, 205, 225, 235, 245)
	self:AddRecipeFlags(9928, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeTrainer(9928, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 17245, 3136, 4258, 514, 1241, 28694, 2836, 27034, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 26988, 16669, 3478, 26981, 26564)

	-- Mithril Scale Pants -- 9931
	AddRecipe(9931, 210, 7920, Q.COMMON, V.ORIG, 210, 230, 240, 250)
	self:AddRecipeFlags(9931, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(9931, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 17245, 3136, 4258, 514, 1241, 28694, 2836, 27034, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 26988, 16669, 3478, 26981, 26564)

	-- Heavy Mithril Pants -- 9933
	AddRecipe(9933, 210, 7921, Q.UNCOMMON, V.ORIG, 210, 230, 240, 250)
	self:AddRecipeFlags(9933, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.PLATE)
	self:AddRecipeWorldDrop(9933, "Kalimdor", "Eastern Kingdoms")

	-- Steel Plate Helm -- 9935
	AddRecipe(9935, 215, 7922, Q.COMMON, V.ORIG, 215, 235, 245, 255)
	self:AddRecipeFlags(9935, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(9935, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 17245, 3136, 4258, 514, 1241, 28694, 2836, 27034, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 26988, 16669, 3478, 26981, 26564)

	-- Mithril Scale Bracers -- 9937
	AddRecipe(9937, 215, 7924, Q.COMMON, V.ORIG, 215, 235, 245, 255)
	self:AddRecipeFlags(9937, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeVendor(9937, 8161, 8176)

	-- Mithril Shield Spike -- 9939
	AddRecipe(9939, 215, 7967, Q.RARE, V.ORIG, 215, 235, 245, 255)
	self:AddRecipeFlags(9939, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.TANK, F.SHIELD)
	self:AddRecipeWorldDrop(9939, "Kalimdor", "Eastern Kingdoms")

	-- Ornate Mithril Pants -- 9945
	AddRecipe(9945, 220, 7926, Q.UNCOMMON, V.ORIG, 220, 240, 250, 260)
	self:AddRecipeFlags(9945, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeQuest(9945, 2761)

	-- Ornate Mithril Gloves -- 9950
	AddRecipe(9950, 220, 7927, Q.UNCOMMON, V.ORIG, 220, 240, 250, 260)
	self:AddRecipeFlags(9950, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeQuest(9950, 2762)

	-- Ornate Mithril Shoulder -- 9952
	AddRecipe(9952, 225, 7928, Q.UNCOMMON, V.ORIG, 225, 245, 255, 265)
	self:AddRecipeFlags(9952, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeQuest(9952, 2763)

	-- Truesilver Gauntlets -- 9954
	AddRecipe(9954, 225, 7938, Q.COMMON, V.ORIG, 225, 245, 255, 265)
	self:AddRecipeFlags(9954, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(9954, 11177, 29506, 20125, 7230, 5164)

	-- Orcish War Leggings -- 9957
	AddRecipe(9957, 250, 7929, Q.COMMON, V.ORIG, 250, 250, 260, 270)
	self:AddRecipeFlags(9957, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeQuest(9957, 2756)

	-- Heavy Mithril Breastplate -- 9959
	AddRecipe(9959, 230, 7930, Q.COMMON, V.ORIG, 230, 250, 260, 270)
	self:AddRecipeFlags(9959, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeTrainer(9959, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 1241, 3136, 4258, 514, 33609, 28694, 2836, 27034, 26988, 4596, 3557, 15400, 33675, 5511, 16823, 33631, 17245, 3478, 26981, 26564)

	-- Mithril Coif -- 9961
	AddRecipe(9961, 230, 7931, Q.COMMON, V.ORIG, 230, 250, 260, 270)
	self:AddRecipeFlags(9961, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(9961, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 1241, 3136, 4258, 514, 33609, 28694, 2836, 27034, 26988, 4596, 3557, 15400, 33675, 5511, 16823, 33631, 17245, 3478, 26981, 26564)

	-- Mithril Spurs -- 9964
	AddRecipe(9964, 235, 7969, Q.UNCOMMON, V.ORIG, 235, 255, 265, 275)
	self:AddRecipeFlags(9964, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(9964, "Kalimdor", "Eastern Kingdoms")

	-- Mithril Scale Shoulders -- 9966
	AddRecipe(9966, 235, 7932, Q.RARE, V.ORIG, 235, 255, 265, 275)
	self:AddRecipeFlags(9966, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(9966, "Kalimdor", "Eastern Kingdoms")

	-- Heavy Mithril Boots -- 9968
	AddRecipe(9968, 235, 7933, Q.COMMON, V.ORIG, 235, 255, 265, 275)
	self:AddRecipeFlags(9968, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(9968, 3174, 29924, 3355, 16724, 6299, 2998, 26904, 26564, 19341, 26952, 16583, 1241, 3136, 4258, 514, 28694, 26988, 2836, 27034, 33609, 4596, 3557, 33591, 33675, 5511, 16823, 15400, 17245, 3478, 26981, 33631)

	-- Heavy Mithril Helm -- 9970
	AddRecipe(9970, 245, 7934, Q.UNCOMMON, V.ORIG, 245, 255, 265, 275)
	self:AddRecipeFlags(9970, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeWorldDrop(9970, "Kalimdor", "Eastern Kingdoms")

	-- Ornate Mithril Breastplate -- 9972
	AddRecipe(9972, 260, 7935, Q.UNCOMMON, V.ORIG, 260, 260, 270, 280)
	self:AddRecipeFlags(9972, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeQuest(9972, 2773)

	-- Truesilver Breastplate -- 9974
	AddRecipe(9974, 245, 7939, Q.COMMON, V.ORIG, 245, 265, 275, 285)
	self:AddRecipeFlags(9974, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeTrainer(9974, 11177, 29506, 20125, 7230, 5164)

	-- Ornate Mithril Boots -- 9979
	AddRecipe(9979, 265, 7936, Q.UNCOMMON, V.ORIG, 265, 265, 275, 285)
	self:AddRecipeFlags(9979, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeQuest(9979, 2772)

	-- Ornate Mithril Helm -- 9980
	AddRecipe(9980, 265, 7937, Q.UNCOMMON, V.ORIG, 265, 265, 275, 285)
	self:AddRecipeFlags(9980, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeQuest(9980, 2771)

	-- Copper Claymore -- 9983
	AddRecipe(9983, 30, 7955, Q.COMMON, V.ORIG, 30, 70, 90, 110)
	self:AddRecipeFlags(9983, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TWO_HAND, F.SWORD)
	self:AddRecipeTrainer(9983, 3355, 3174, 29924, 1241, 26981, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 16724, 3136, 4258, 514, 26988, 3557, 2836, 15400, 33609, 4596, 28694, 27034, 33675, 5511, 16823, 33591, 16669, 3478, 33631, 19341)

	-- Bronze Warhammer -- 9985
	AddRecipe(9985, 125, 7956, Q.COMMON, V.ORIG, 125, 155, 170, 185)
	self:AddRecipeFlags(9985, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeTrainer(9985, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Bronze Greatsword -- 9986
	AddRecipe(9986, 130, 7957, Q.COMMON, V.ORIG, 130, 160, 175, 190)
	self:AddRecipeFlags(9986, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TWO_HAND, F.SWORD)
	self:AddRecipeTrainer(9986, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Bronze Battle Axe -- 9987
	AddRecipe(9987, 135, 7958, Q.COMMON, V.ORIG, 135, 165, 180, 195)
	self:AddRecipeFlags(9987, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeTrainer(9987, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Heavy Mithril Axe -- 9993
	AddRecipe(9993, 210, 7941, Q.COMMON, V.ORIG, 210, 235, 247, 260)
	self:AddRecipeFlags(9993, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(9993, 16724, 3174, 33591, 3355, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Blue Glittering Axe -- 9995
	AddRecipe(9995, 220, 7942, Q.UNCOMMON, V.ORIG, 220, 245, 257, 270)
	self:AddRecipeFlags(9995, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.AXE)
	self:AddRecipeWorldDrop(9995, "Kalimdor", "Eastern Kingdoms")

	-- Wicked Mithril Blade -- 9997
	AddRecipe(9997, 225, 7943, Q.UNCOMMON, V.ORIG, 225, 250, 262, 275)
	self:AddRecipeFlags(9997, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeWorldDrop(9997, "Kalimdor", "Eastern Kingdoms")

	-- Big Black Mace -- 10001
	AddRecipe(10001, 230, 7945, Q.COMMON, V.ORIG, 230, 255, 267, 280)
	self:AddRecipeFlags(10001, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(10001, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 1241, 3136, 4258, 514, 33609, 28694, 2836, 27034, 26988, 4596, 3557, 15400, 33675, 5511, 16823, 33631, 17245, 3478, 26981, 26564)

	-- The Shatterer -- 10003
	AddRecipe(10003, 235, 7954, Q.COMMON, V.ORIG, 235, 260, 272, 285)
	self:AddRecipeFlags(10003, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(10003, 7232, 29505, 11146, 11178, 20124)

	-- Dazzling Mithril Rapier -- 10005
	AddRecipe(10005, 240, 7944, Q.UNCOMMON, V.ORIG, 240, 265, 277, 290)
	self:AddRecipeFlags(10005, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeWorldDrop(10005, "Kalimdor", "Eastern Kingdoms")

	-- Phantom Blade -- 10007
	AddRecipe(10007, 245, 7961, Q.COMMON, V.ORIG, 245, 270, 282, 295)
	self:AddRecipeFlags(10007, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(10007, 7232, 29505, 11146, 11178, 20124)

	-- Runed Mithril Hammer -- 10009
	AddRecipe(10009, 245, 7946, Q.RARE, V.ORIG, 245, 270, 282, 295)
	self:AddRecipeFlags(10009, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.MACE)
	self:AddRecipeWorldDrop(10009, "Kalimdor", "Eastern Kingdoms")

	-- Blight -- 10011
	AddRecipe(10011, 250, 7959, Q.COMMON, V.ORIG, 250, 275, 287, 300)
	self:AddRecipeFlags(10011, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TWO_HAND, F.POLEARM)
	self:AddRecipeTrainer(10011, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Ebon Shiv -- 10013
	AddRecipe(10013, 255, 7947, Q.COMMON, V.ORIG, 255, 280, 292, 305)
	self:AddRecipeFlags(10013, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.DAGGER)
	self:AddRecipeVendor(10013, 11278)

	-- Truesilver Champion -- 10015
	AddRecipe(10015, 260, 7960, Q.COMMON, V.ORIG, 260, 285, 297, 310)
	self:AddRecipeFlags(10015, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TWO_HAND, F.SWORD)
	self:AddRecipeTrainer(10015, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Inlaid Mithril Cylinder -- 11454
	AddRecipe(11454, 200, 9060, Q.COMMON, V.ORIG, 200, 225, 237, 250)
	self:AddRecipeFlags(11454, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOE)
	self:AddRecipeAcquire(11454, A.CUSTOM, 9)

	-- Golden Scale Gauntlets -- 11643
	AddRecipe(11643, 205, 9366, Q.UNCOMMON, V.ORIG, 205, 225, 235, 245)
	self:AddRecipeFlags(11643, F.ALLIANCE, F.QUEST, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeQuest(11643, 2758)

	-- Silvered Bronze Leggings -- 12259
	AddRecipe(12259, 155, 10423, Q.UNCOMMON, V.ORIG, 155, 180, 192, 205)
	self:AddRecipeFlags(12259, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(12259, "Kalimdor", "Eastern Kingdoms")

	-- Rough Copper Vest -- 12260
	AddRecipe(12260, 1, 10421, Q.COMMON, V.ORIG, 1, 15, 35, 55)
	self:AddRecipeFlags(12260, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.MAIL)
	self:AddRecipeAcquire(12260, A.CUSTOM, 8)

	-- Golden Rod -- 14379
	AddRecipe(14379, 150, 11128, Q.COMMON, V.ORIG, 150, 155, 157, 160)
	self:AddRecipeFlags(14379, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(14379, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Truesilver Rod -- 14380
	AddRecipe(14380, 200, 11144, Q.COMMON, V.ORIG, 200, 205, 207, 210)
	self:AddRecipeFlags(14380, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(14380, 16724, 3174, 33591, 3355, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Dark Iron Pulverizer -- 15292
	AddRecipe(15292, 265, 11608, Q.RARE, V.ORIG, 265, 285, 295, 305)
	self:AddRecipeFlags(15292, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.TWO_HAND, F.MACE)
	self:AddRecipeMobDrop(15292, 9028)

	-- Dark Iron Mail -- 15293
	AddRecipe(15293, 270, 11606, Q.UNCOMMON, V.ORIG, 270, 290, 300, 310)
	self:AddRecipeFlags(15293, F.ALLIANCE, F.HORDE, F.INSTANCE, F.IBOE, F.RBOP, F.MAIL)
	self:AddRecipeAcquire(15293, A.CUSTOM, 25)

	-- Dark Iron Sunderer -- 15294
	AddRecipe(15294, 275, 11607, Q.RARE, V.ORIG, 275, 295, 305, 315)
	self:AddRecipeFlags(15294, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.TWO_HAND, F.AXE)
	self:AddRecipeMobDrop(15294, 9554, 10043)

	-- Dark Iron Shoulders -- 15295
	AddRecipe(15295, 280, 11605, Q.UNCOMMON, V.ORIG, 280, 300, 310, 320)
	self:AddRecipeFlags(15295, F.ALLIANCE, F.HORDE, F.INSTANCE, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeAcquire(15295, A.CUSTOM, 25)

	-- Dark Iron Plate -- 15296
	AddRecipe(15296, 285, 11604, Q.RARE, V.ORIG, 285, 305, 315, 325)
	self:AddRecipeFlags(15296, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOP, F.RBOE, F.PLATE)
	self:AddRecipeMobDrop(15296, 9543)

	-- Glinting Steel Dagger -- 15972
	AddRecipe(15972, 180, 12259, Q.COMMON, V.ORIG, 180, 205, 217, 230)
	self:AddRecipeFlags(15972, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.DAGGER)
	self:AddRecipeTrainer(15972, 16724, 3174, 33591, 3355, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Searing Golden Blade -- 15973
	AddRecipe(15973, 190, 12260, Q.UNCOMMON, V.ORIG, 190, 215, 227, 240)
	self:AddRecipeFlags(15973, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.ONE_HAND, F.DAGGER)
	self:AddRecipeWorldDrop(15973, "Kalimdor", "Eastern Kingdoms")

	-- Dense Grinding Stone -- 16639
	AddRecipe(16639, 250, 12644, Q.COMMON, V.ORIG, 250, 255, 257, 260)
	self:AddRecipeFlags(16639, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(16639, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 1241, 3136, 4258, 514, 33609, 28694, 2836, 27034, 26988, 4596, 3557, 15400, 33675, 5511, 16823, 33631, 17245, 3478, 26981, 26564)

	-- Dense Weightstone -- 16640
	AddRecipe(16640, 250, 12643, Q.COMMON, V.ORIG, 250, 255, 257, 260)
	self:AddRecipeFlags(16640, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(16640, 3174, 29924, 16724, 6299, 2998, 26904, 3355, 19341, 26952, 16583, 33591, 3136, 4258, 514, 1241, 33609, 2836, 27034, 26988, 4596, 3557, 15400, 33675, 5511, 16823, 28694, 17245, 3478, 33631, 26981)

	-- Dense Sharpening Stone -- 16641
	AddRecipe(16641, 250, 12404, Q.COMMON, V.ORIG, 250, 255, 257, 260)
	self:AddRecipeFlags(16641, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(16641, 3174, 29924, 16724, 6299, 2998, 26904, 3355, 19341, 26952, 16583, 33591, 3136, 4258, 514, 1241, 33609, 2836, 27034, 26988, 4596, 3557, 15400, 33675, 5511, 16823, 28694, 17245, 3478, 33631, 26981)

	-- Thorium Armor -- 16642
	AddRecipe(16642, 250, 12405, Q.COMMON, V.ORIG, 250, 270, 280, 290)
	self:AddRecipeFlags(16642, F.ALLIANCE, F.HORDE, F.TRAINER, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeTrainer(16642, 3174, 17245, 6299, 2998, 33631, 3136, 4258, 514, 2836, 15400, 33609, 4596, 3557, 33675, 5511, 16823, 3355, 3478, 16724, 1241)
	self:AddRecipeWorldDrop(16642, "Kalimdor", "Eastern Kingdoms")

	-- Thorium Belt -- 16643
	AddRecipe(16643, 250, 12406, Q.COMMON, V.ORIG, 250, 270, 280, 290)
	self:AddRecipeFlags(16643, F.ALLIANCE, F.HORDE, F.TRAINER, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeTrainer(16643, 3174, 17245, 6299, 2998, 33631, 3136, 4258, 514, 2836, 15400, 33609, 4596, 3557, 33675, 5511, 16823, 3355, 3478, 16724, 1241)
	self:AddRecipeWorldDrop(16643, "Kalimdor", "Eastern Kingdoms")

	-- Thorium Bracers -- 16644
	AddRecipe(16644, 255, 12408, Q.COMMON, V.ORIG, 255, 275, 285, 295)
	self:AddRecipeFlags(16644, F.ALLIANCE, F.HORDE, F.TRAINER, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeTrainer(16644, 3174, 17245, 6299, 2998, 33631, 3136, 4258, 514, 2836, 15400, 33609, 4596, 3557, 33675, 5511, 16823, 3355, 3478, 16724, 1241)
	self:AddRecipeWorldDrop(16644, "Kalimdor", "Eastern Kingdoms")

	-- Radiant Belt -- 16645
	AddRecipe(16645, 260, 12416, Q.UNCOMMON, V.ORIG, 260, 280, 290, 300)
	self:AddRecipeFlags(16645, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.MAIL)
	self:AddRecipeWorldDrop(16645, "Kalimdor", "Eastern Kingdoms")

	-- Imperial Plate Shoulders -- 16646
	AddRecipe(16646, 265, 12428, Q.UNCOMMON, V.ORIG, 265, 285, 295, 305)
	self:AddRecipeFlags(16646, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeQuest(16646, 7659)

	-- Imperial Plate Belt -- 16647
	AddRecipe(16647, 265, 12424, Q.UNCOMMON, V.ORIG, 265, 285, 295, 305)
	self:AddRecipeFlags(16647, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeQuest(16647, 7653)

	-- Radiant Breastplate -- 16648
	AddRecipe(16648, 270, 12415, Q.UNCOMMON, V.ORIG, 270, 290, 300, 310)
	self:AddRecipeFlags(16648, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.MAIL)
	self:AddRecipeWorldDrop(16648, "Kalimdor", "Eastern Kingdoms")

	-- Imperial Plate Bracers -- 16649
	AddRecipe(16649, 270, 12425, Q.UNCOMMON, V.ORIG, 270, 290, 300, 310)
	self:AddRecipeFlags(16649, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeQuest(16649, 7655)

	-- Wildthorn Mail -- 16650
	AddRecipe(16650, 270, 12624, Q.UNCOMMON, V.ORIG, 270, 290, 300, 310)
	self:AddRecipeFlags(16650, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.MAIL)
	self:AddRecipeWorldDrop(16650, "Kalimdor", "Eastern Kingdoms")

	-- Thorium Shield Spike -- 16651
	AddRecipe(16651, 275, 12645, Q.UNCOMMON, V.ORIG, 275, 295, 305, 315)
	self:AddRecipeFlags(16651, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.TANK)
	self:AddRecipeWorldDrop(16651, "Kalimdor", "Eastern Kingdoms")

	-- Thorium Boots -- 16652
	AddRecipe(16652, 280, 12409, Q.COMMON, V.ORIG, 280, 300, 310, 320)
	self:AddRecipeFlags(16652, F.ALLIANCE, F.HORDE, F.TRAINER, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeTrainer(16652, 3174, 17245, 6299, 2998, 33631, 3136, 4258, 514, 2836, 15400, 33609, 4596, 3557, 33675, 5511, 16823, 3355, 3478, 16724, 1241)
	self:AddRecipeWorldDrop(16652, "Kalimdor", "Eastern Kingdoms")

	-- Thorium Helm -- 16653
	AddRecipe(16653, 280, 12410, Q.COMMON, V.ORIG, 280, 300, 310, 320)
	self:AddRecipeFlags(16653, F.ALLIANCE, F.HORDE, F.TRAINER, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeTrainer(16653, 3174, 17245, 6299, 2998, 33631, 3136, 4258, 514, 2836, 15400, 33609, 4596, 3557, 33675, 5511, 16823, 3355, 3478, 16724, 1241)
	self:AddRecipeWorldDrop(16653, "Kalimdor", "Eastern Kingdoms")

	-- Radiant Gloves -- 16654
	AddRecipe(16654, 285, 12418, Q.UNCOMMON, V.ORIG, 285, 305, 315, 325)
	self:AddRecipeFlags(16654, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(16654, "Kalimdor", "Eastern Kingdoms")

	-- Fiery Plate Gauntlets -- 16655
	AddRecipe(16655, 290, 12631, Q.RARE, V.ORIG, 290, 310, 320, 330)
	self:AddRecipeFlags(16655, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeQuest(16655, 5124)

	-- Radiant Boots -- 16656
	AddRecipe(16656, 290, 12419, Q.UNCOMMON, V.ORIG, 290, 310, 320, 330)
	self:AddRecipeFlags(16656, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(16656, "Kalimdor", "Eastern Kingdoms")

	-- Imperial Plate Boots -- 16657
	AddRecipe(16657, 295, 12426, Q.UNCOMMON, V.ORIG, 295, 315, 325, 335)
	self:AddRecipeFlags(16657, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeQuest(16657, 7654)

	-- Imperial Plate Helm -- 16658
	AddRecipe(16658, 295, 12427, Q.UNCOMMON, V.ORIG, 295, 315, 325, 335)
	self:AddRecipeFlags(16658, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeQuest(16658, 7657)

	-- Radiant Circlet -- 16659
	AddRecipe(16659, 295, 12417, Q.UNCOMMON, V.ORIG, 295, 315, 325, 335)
	self:AddRecipeFlags(16659, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(16659, "Kalimdor", "Eastern Kingdoms")

	-- Dawnbringer Shoulders -- 16660
	AddRecipe(16660, 290, 12625, Q.RARE, V.ORIG, 290, 310, 320, 330)
	self:AddRecipeFlags(16660, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeWorldDrop(16660, "Kalimdor", "Eastern Kingdoms")

	-- Storm Gauntlets -- 16661
	AddRecipe(16661, 295, 12632, Q.RARE, V.ORIG, 295, 315, 325, 335)
	self:AddRecipeFlags(16661, F.ALLIANCE, F.HORDE, F.VENDOR, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.MAIL)
	self:AddRecipeVendor(16661, 11278)
	self:AddRecipeWorldDrop(16661, "Kalimdor", "Eastern Kingdoms")

	-- Thorium Leggings -- 16662
	AddRecipe(16662, 300, 12414, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16662, F.ALLIANCE, F.HORDE, F.TRAINER, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeTrainer(16662, 3174, 17245, 6299, 2998, 33631, 3136, 4258, 514, 2836, 15400, 33609, 4596, 3557, 33675, 5511, 16823, 3355, 3478, 16724, 1241)
	self:AddRecipeWorldDrop(16662, "Kalimdor", "Eastern Kingdoms")

	-- Imperial Plate Chest -- 16663
	AddRecipe(16663, 300, 12422, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16663, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeQuest(16663, 7656)

	-- Runic Plate Shoulders -- 16664
	AddRecipe(16664, 300, 12610, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16664, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeMobDrop(16664, 4366)

	-- Runic Plate Boots -- 16665
	AddRecipe(16665, 300, 12611, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16665, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeMobDrop(16665, 1836)

	-- Demon Forged Breastplate -- 16667
	AddRecipe(16667, 285, 12628, Q.RARE, V.ORIG, 285, 305, 315, 325)
	self:AddRecipeFlags(16667, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeQuest(16667, 5127)

	-- Whitesoul Helm -- 16724
	AddRecipe(16724, 300, 12633, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16724, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeWorldDrop(16724, "Kalimdor", "Eastern Kingdoms")

	-- Radiant Leggings -- 16725
	AddRecipe(16725, 300, 12420, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16725, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(16725, "Kalimdor", "Eastern Kingdoms")

	-- Runic Plate Helm -- 16726
	AddRecipe(16726, 300, 12612, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16726, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeMobDrop(16726, 4364)

	-- Helm of the Great Chief -- 16728
	AddRecipe(16728, 300, 12636, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16728, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.MAIL)
	self:AddRecipeWorldDrop(16728, "Kalimdor", "Eastern Kingdoms")

	-- Lionheart Helm -- 16729
	AddRecipe(16729, 300, 12640, Q.EPIC, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16729, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeWorldDrop(16729, "Kalimdor", "Eastern Kingdoms")

	-- Imperial Plate Leggings -- 16730
	AddRecipe(16730, 300, 12429, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16730, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeQuest(16730, 7658)

	-- Runic Breastplate -- 16731
	AddRecipe(16731, 300, 12613, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16731, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeMobDrop(16731, 4368, 16072)

	-- Runic Plate Leggings -- 16732
	AddRecipe(16732, 300, 12614, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16732, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeMobDrop(16732, 1885)

	-- Stronghold Gauntlets -- 16741
	AddRecipe(16741, 300, 12639, Q.EPIC, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16741, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.TANK, F.PLATE)
	self:AddRecipeWorldDrop(16741, "Kalimdor", "Eastern Kingdoms")

	-- Enchanted Thorium Helm -- 16742
	AddRecipe(16742, 300, 12620, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16742, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeQuest(16742, 7651)

	-- Enchanted Thorium Leggings -- 16744
	AddRecipe(16744, 300, 12619, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16744, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeQuest(16744, 7650)

	-- Enchanted Thorium Breastplate -- 16745
	AddRecipe(16745, 300, 12618, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16745, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeQuest(16745, 7649)

	-- Invulnerable Mail -- 16746
	AddRecipe(16746, 300, 12641, Q.EPIC, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16746, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.TANK, F.MAIL)
	self:AddRecipeWorldDrop(16746, "Kalimdor", "Eastern Kingdoms")

	-- Ornate Thorium Handaxe -- 16969
	AddRecipe(16969, 275, 12773, Q.COMMON, V.ORIG, 275, 300, 312, 325)
	self:AddRecipeFlags(16969, F.ALLIANCE, F.HORDE, F.TRAINER, F.VENDOR, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(16969, 3174, 17245, 6299, 2998, 33631, 3136, 4258, 514, 2836, 15400, 33609, 4596, 3557, 33675, 5511, 16823, 3355, 3478, 16724, 1241)
	self:AddRecipeVendor(16969, 11278)

	-- Dawn's Edge -- 16970
	AddRecipe(16970, 275, 12774, Q.RARE, V.ORIG, 275, 300, 312, 325)
	self:AddRecipeFlags(16970, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.ONE_HAND, F.AXE)
	self:AddRecipeQuest(16970, 5306)

	-- Huge Thorium Battleaxe -- 16971
	AddRecipe(16971, 280, 12775, Q.COMMON, V.ORIG, 280, 305, 317, 330)
	self:AddRecipeFlags(16971, F.ALLIANCE, F.HORDE, F.TRAINER, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeTrainer(16971, 3174, 17245, 6299, 2998, 33631, 3136, 4258, 514, 2836, 15400, 33609, 4596, 3557, 33675, 5511, 16823, 3355, 3478, 16724, 1241)
	self:AddRecipeVendor(16971, 11278)

	-- Enchanted Battlehammer -- 16973
	AddRecipe(16973, 280, 12776, Q.UNCOMMON, V.ORIG, 280, 305, 317, 330)
	self:AddRecipeFlags(16973, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.TANK, F.TWO_HAND, F.MACE)
	self:AddRecipeQuest(16973, 5305)

	-- Blazing Rapier -- 16978
	AddRecipe(16978, 280, 12777, Q.UNCOMMON, V.ORIG, 280, 305, 317, 330)
	self:AddRecipeFlags(16978, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.ONE_HAND, F.SWORD)
	self:AddRecipeQuest(16978, 5307)

	-- Serenity -- 16983
	AddRecipe(16983, 285, 12781, Q.UNCOMMON, V.ORIG, 285, 310, 322, 335)
	self:AddRecipeFlags(16983, F.ALLIANCE, F.HORDE, F.INSTANCE, F.IBOE, F.RBOE, F.ONE_HAND, F.MACE)
	self:AddRecipeAcquire(16983, A.CUSTOM, 31)

	-- Volcanic Hammer -- 16984
	AddRecipe(16984, 290, 12792, Q.UNCOMMON, V.ORIG, 290, 315, 327, 340)
	self:AddRecipeFlags(16984, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOE, F.ONE_HAND, F.MACE)
	self:AddRecipeMobDrop(16984, 10119)

	-- Corruption -- 16985
	AddRecipe(16985, 290, 12782, Q.COMMON, V.ORIG, 290, 315, 327, 340)
	self:AddRecipeFlags(16985, F.ALLIANCE, F.HORDE, F.INSTANCE, F.IBOP, F.RBOE, F.DPS, F.HEALER, F.CASTER, F.TWO_HAND, F.SWORD)
	self:AddRecipeAcquire(16985, A.CUSTOM, 31)

	-- Hammer of the Titans -- 16988
	AddRecipe(16988, 300, 12796, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16988, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeMobDrop(16988, 10438)

	-- Arcanite Champion -- 16990
	AddRecipe(16990, 300, 12790, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16990, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.SWORD)
	self:AddRecipeMobDrop(16990, 10899)

	-- Annihilator -- 16991
	AddRecipe(16991, 300, 12798, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16991, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.ONE_HAND, F.AXE)
	self:AddRecipeMobDrop(16991, 9736)

	-- Frostguard -- 16992
	AddRecipe(16992, 300, 12797, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16992, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOE, F.ONE_HAND, F.SWORD)
	self:AddRecipeMobDrop(16992, 1844)

	-- Masterwork Stormhammer -- 16993
	AddRecipe(16993, 300, 12794, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16993, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.ONE_HAND, F.MACE)
	self:AddRecipeMobDrop(16993, 10899)

	-- Arcanite Reaper -- 16994
	AddRecipe(16994, 300, 12784, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16994, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeMobDrop(16994, 9596)

	-- Heartseeker -- 16995
	AddRecipe(16995, 300, 12783, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(16995, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.DAGGER)
	self:AddRecipeMobDrop(16995, 10997)

	-- Silver Skeleton Key -- 19666
	AddRecipe(19666, 100, 15869, Q.COMMON, V.ORIG, 100, 100, 110, 120)
	self:AddRecipeFlags(19666, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(19666, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Golden Skeleton Key -- 19667
	AddRecipe(19667, 150, 15870, Q.COMMON, V.ORIG, 150, 150, 160, 170)
	self:AddRecipeFlags(19667, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(19667, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Truesilver Skeleton Key -- 19668
	AddRecipe(19668, 200, 15871, Q.COMMON, V.ORIG, 200, 200, 210, 220)
	self:AddRecipeFlags(19668, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(19668, 16724, 3174, 33591, 3355, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Arcanite Skeleton Key -- 19669
	AddRecipe(19669, 275, 15872, Q.COMMON, V.ORIG, 275, 275, 280, 285)
	self:AddRecipeFlags(19669, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(19669, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 1241, 3136, 4258, 514, 33609, 28694, 2836, 27034, 26988, 4596, 3557, 15400, 33675, 5511, 16823, 33631, 17245, 3478, 26981, 26564)

	-- Arcanite Rod -- 20201
	AddRecipe(20201, 275, 16206, Q.COMMON, V.ORIG, 275, 275, 280, 285)
	self:AddRecipeFlags(20201, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(20201, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 1241, 3136, 4258, 514, 33609, 28694, 2836, 27034, 26988, 4596, 3557, 15400, 33675, 5511, 16823, 33631, 17245, 3478, 26981, 26564)

	-- Fiery Chain Girdle -- 20872
	AddRecipe(20872, 295, 16989, Q.RARE, V.ORIG, 295, 315, 325, 335)
	self:AddRecipeFlags(20872, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.MAIL, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(20872, FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Fiery Chain Shoulders -- 20873
	AddRecipe(20873, 300, 16988, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(20873, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.MAIL, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(20873, FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Dark Iron Bracers -- 20874
	AddRecipe(20874, 295, 17014, Q.RARE, V.ORIG, 295, 315, 325, 335)
	self:AddRecipeFlags(20874, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.PLATE, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(20874, FAC.THORIUM_BROTHERHOOD, REP.FRIENDLY, 12944)

	-- Dark Iron Leggings -- 20876
	AddRecipe(20876, 300, 17013, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(20876, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.PLATE, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(20876, FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Dark Iron Reaver -- 20890
	AddRecipe(20890, 300, 17015, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(20890, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.ONE_HAND, F.SWORD, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(20890, FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Dark Iron Destroyer -- 20897
	AddRecipe(20897, 300, 17016, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(20897, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.AXE, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(20897, FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Sulfuron Hammer -- 21161
	AddRecipe(21161, 300, 17193, Q.EPIC, V.ORIG, 300, 325, 337, 350)
	self:AddRecipeFlags(21161, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.TWO_HAND, F.MACE)
	self:AddRecipeQuest(21161, 7604)

	-- Edge of Winter -- 21913
	AddRecipe(21913, 190, 17704, Q.UNCOMMON, V.ORIG, 190, 215, 227, 240)
	self:AddRecipeFlags(21913, F.ALLIANCE, F.HORDE, F.SEASONAL, F.IBOE, F.RBOE, F.ONE_HAND, F.AXE)
	self:AddRecipeAcquire(21913, A.SEASONAL, 1)

	-- Elemental Sharpening Stone -- 22757
	AddRecipe(22757, 300, 18262, Q.RARE, V.ORIG, 300, 300, 310, 320)
	self:AddRecipeFlags(22757, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(22757, A.CUSTOM, 26)

	-- Heavy Timbermaw Belt -- 23628
	AddRecipe(23628, 290, 19043, Q.COMMON, V.ORIG, 290, 310, 320, 330)
	self:AddRecipeFlags(23628, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.MAIL, F.TIMBERMAW_HOLD)
	self:AddRecipeRepVendor(23628, FAC.TIMBERMAW_HOLD, REP.HONORED, 11557)

	-- Heavy Timbermaw Boots -- 23629
	AddRecipe(23629, 300, 19048, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(23629, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.MAIL, F.TIMBERMAW_HOLD)
	self:AddRecipeRepVendor(23629, FAC.TIMBERMAW_HOLD, REP.REVERED, 11557)

	-- Girdle of the Dawn -- 23632
	AddRecipe(23632, 290, 19051, Q.COMMON, V.ORIG, 290, 310, 320, 330)
	self:AddRecipeFlags(23632, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.PLATE, F.ARGENTDAWN)
	self:AddRecipeRepVendor(23632, FAC.ARGENTDAWN, REP.HONORED, 10856, 11536, 10857)

	-- Gloves of the Dawn -- 23633
	AddRecipe(23633, 300, 19057, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(23633, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.PLATE, F.ARGENTDAWN)
	self:AddRecipeRepVendor(23633, FAC.ARGENTDAWN, REP.REVERED, 10856, 11536, 10857)

	-- Dark Iron Helm -- 23636
	AddRecipe(23636, 300, 19148, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(23636, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.PLATE, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(23636, FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Dark Iron Gauntlets -- 23637
	AddRecipe(23637, 300, 19164, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(23637, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.PLATE, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(23637, FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Black Amnesty -- 23638
	AddRecipe(23638, 300, 19166, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(23638, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.ONE_HAND, F.DAGGER, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(23638, FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Blackfury -- 23639
	AddRecipe(23639, 300, 19167, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(23639, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.TWO_HAND, F.POLEARM, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(23639, FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Ebon Hand -- 23650
	AddRecipe(23650, 300, 19170, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(23650, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.ONE_HAND, F.MACE, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(23650, FAC.THORIUM_BROTHERHOOD, REP.EXALTED, 12944)

	-- Blackguard -- 23652
	AddRecipe(23652, 300, 19168, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(23652, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.ONE_HAND, F.SWORD, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(23652, FAC.THORIUM_BROTHERHOOD, REP.EXALTED, 12944)

	-- Nightfall -- 23653
	AddRecipe(23653, 300, 19169, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(23653, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TWO_HAND, F.AXE, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(23653, FAC.THORIUM_BROTHERHOOD, REP.EXALTED, 12944)

	-- Bloodsoul Breastplate -- 24136
	AddRecipe(24136, 300, 19690, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24136, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.HEALER, F.CASTER, F.MAIL, F.ZANDALAR)
	self:AddRecipeRepVendor(24136, FAC.ZANDALAR, REP.REVERED, 14921)

	-- Bloodsoul Shoulders -- 24137
	AddRecipe(24137, 300, 19691, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24137, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.HEALER, F.CASTER, F.MAIL, F.ZANDALAR)
	self:AddRecipeRepVendor(24137, FAC.ZANDALAR, REP.HONORED, 14921)

	-- Bloodsoul Gauntlets -- 24138
	AddRecipe(24138, 300, 19692, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24138, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.HEALER, F.CASTER, F.MAIL, F.ZANDALAR)
	self:AddRecipeRepVendor(24138, FAC.ZANDALAR, REP.FRIENDLY, 14921)

	-- Darksoul Breastplate -- 24139
	AddRecipe(24139, 300, 19693, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24139, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ZANDALAR)
	self:AddRecipeRepVendor(24139, FAC.ZANDALAR, REP.REVERED, 14921)

	-- Darksoul Leggings -- 24140
	AddRecipe(24140, 300, 19694, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24140, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ZANDALAR)
	self:AddRecipeRepVendor(24140, FAC.ZANDALAR, REP.HONORED, 14921)

	-- Darksoul Shoulders -- 24141
	AddRecipe(24141, 300, 19695, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24141, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ZANDALAR)
	self:AddRecipeRepVendor(24141, FAC.ZANDALAR, REP.FRIENDLY, 14921)

	-- Dark Iron Boots -- 24399
	AddRecipe(24399, 300, 20039, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24399, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.PLATE, F.THORIUM_BROTHERHOOD)
	self:AddRecipeRepVendor(24399, FAC.THORIUM_BROTHERHOOD, REP.EXALTED, 12944)

	-- Darkrune Gauntlets -- 24912
	AddRecipe(24912, 300, 20549, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24912, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.TANK, F.PLATE)
	self:AddRecipeQuest(24912, 8323)

	-- Darkrune Helm -- 24913
	AddRecipe(24913, 300, 20551, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24913, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.PLATE)
	self:AddRecipeQuest(24913, 8323)

	-- Darkrune Breastplate -- 24914
	AddRecipe(24914, 300, 20550, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24914, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOE, F.TANK, F.PLATE)
	self:AddRecipeQuest(24914, 8323)

	-- Heavy Obsidian Belt -- 27585
	AddRecipe(27585, 300, 22197, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(27585, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.PLATE, F.CENARION_CIRCLE)
	self:AddRecipeRepVendor(27585, FAC.CENARION_CIRCLE, REP.FRIENDLY, 15176)

	-- Jagged Obsidian Shield -- 27586
	AddRecipe(27586, 300, 22198, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(27586, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.SHIELD, F.ONE_HAND, F.CENARION_CIRCLE)
	self:AddRecipeRepVendor(27586, FAC.CENARION_CIRCLE, REP.REVERED, 15471)

	-- Thick Obsidian Breastplate -- 27587
	AddRecipe(27587, 300, 22196, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(27587, F.ALLIANCE, F.HORDE, F.RAID, F.MOB_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeMobDrop(27587, 15263)

	-- Light Obsidian Belt -- 27588
	AddRecipe(27588, 300, 22195, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(27588, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.MAIL, F.CENARION_CIRCLE)
	self:AddRecipeRepVendor(27588, FAC.CENARION_CIRCLE, REP.HONORED, 15176)

	-- Black Grasp of the Destroyer -- 27589
	AddRecipe(27589, 300, 22194, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(27589, F.ALLIANCE, F.HORDE, F.RAID, F.MOB_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeMobDrop(27589, 15340)

	-- Obsidian Mail Tunic -- 27590
	AddRecipe(27590, 300, 22191, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(27590, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.MAIL, F.CENARION_CIRCLE)
	self:AddRecipeRepVendor(27590, FAC.CENARION_CIRCLE, REP.EXALTED, 15471)

	-- Titanic Leggings -- 27829
	AddRecipe(27829, 300, 22385, Q.EPIC, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(27829, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeWorldDrop(27829, "Kalimdor", "Eastern Kingdoms")

	-- Persuader -- 27830
	AddRecipe(27830, 300, 22384, Q.EPIC, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(27830, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.ONE_HAND, F.MACE)
	self:AddRecipeWorldDrop(27830, "Kalimdor", "Eastern Kingdoms")

	-- Sageblade -- 27832
	AddRecipe(27832, 300, 22383, Q.EPIC, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(27832, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.CASTER, F.HEALER, F.ONE_HAND, F.SWORD)
	self:AddRecipeWorldDrop(27832, "Kalimdor", "Eastern Kingdoms")

	-- Icebane Breastplate -- 28242
	AddRecipe(28242, 300, 22669, Q.EPIC, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(28242, F.ALLIANCE, F.HORDE, F.RETIRED, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ARGENTDAWN)
	self:AddRecipeRepVendor(28242, FAC.ARGENTDAWN, REP.EXALTED, 16365)
	self:AddRecipeAcquire(28242, A.CUSTOM, 41)

	-- Icebane Gauntlets -- 28243
	AddRecipe(28243, 300, 22670, Q.EPIC, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(28243, F.ALLIANCE, F.HORDE, F.RETIRED, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ARGENTDAWN)
	self:AddRecipeRepVendor(28243, FAC.ARGENTDAWN, REP.REVERED, 16365)
	self:AddRecipeAcquire(28243, A.CUSTOM, 41)

	-- Icebane Bracers -- 28244
	AddRecipe(28244, 300, 22671, Q.EPIC, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(28244, F.ALLIANCE, F.HORDE, F.RETIRED, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ARGENTDAWN)
	self:AddRecipeRepVendor(28244, FAC.ARGENTDAWN, REP.REVERED, 16365)
	self:AddRecipeAcquire(28244, A.CUSTOM, 41)

	-- Ironvine Breastplate -- 28461
	AddRecipe(28461, 300, 22762, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(28461, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.CENARION_CIRCLE)
	self:AddRecipeRepVendor(28461, FAC.CENARION_CIRCLE, REP.REVERED, 15176)

	-- Ironvine Gloves -- 28462
	AddRecipe(28462, 300, 22763, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(28462, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.CENARION_CIRCLE)
	self:AddRecipeRepVendor(28462, FAC.CENARION_CIRCLE, REP.HONORED, 15176)

	-- Ironvine Belt -- 28463
	AddRecipe(28463, 300, 22764, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(28463, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.CENARION_CIRCLE)
	self:AddRecipeRepVendor(28463, FAC.CENARION_CIRCLE, REP.FRIENDLY, 15176)

	-- Fel Iron Plate Gloves -- 29545
	AddRecipe(29545, 300, 23482, Q.COMMON, V.TBC, 300, 310, 320, 330)
	self:AddRecipeFlags(29545, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(29545, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Plate Belt -- 29547
	AddRecipe(29547, 305, 23484, Q.COMMON, V.TBC, 305, 315, 325, 335)
	self:AddRecipeFlags(29547, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(29547, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Plate Boots -- 29548
	AddRecipe(29548, 315, 23487, Q.COMMON, V.TBC, 315, 325, 335, 345)
	self:AddRecipeFlags(29548, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(29548, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Plate Pants -- 29549
	AddRecipe(29549, 315, 23488, Q.COMMON, V.TBC, 315, 325, 335, 345)
	self:AddRecipeFlags(29549, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(29549, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Breastplate -- 29550
	AddRecipe(29550, 325, 23489, Q.COMMON, V.TBC, 325, 335, 345, 355)
	self:AddRecipeFlags(29550, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(29550, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Chain Coif -- 29551
	AddRecipe(29551, 300, 23493, Q.COMMON, V.TBC, 300, 320, 330, 340)
	self:AddRecipeFlags(29551, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(29551, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Chain Gloves -- 29552
	AddRecipe(29552, 310, 23491, Q.COMMON, V.TBC, 310, 320, 330, 340)
	self:AddRecipeFlags(29552, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(29552, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Chain Bracers -- 29553
	AddRecipe(29553, 315, 23494, Q.COMMON, V.TBC, 315, 325, 335, 345)
	self:AddRecipeFlags(29553, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(29553, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Chain Tunic -- 29556
	AddRecipe(29556, 320, 23490, Q.COMMON, V.TBC, 320, 330, 340, 350)
	self:AddRecipeFlags(29556, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(29556, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Hatchet -- 29557
	AddRecipe(29557, 310, 23497, Q.COMMON, V.TBC, 310, 320, 330, 340)
	self:AddRecipeFlags(29557, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(29557, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Hammer -- 29558
	AddRecipe(29558, 315, 23498, Q.COMMON, V.TBC, 315, 325, 335, 345)
	self:AddRecipeFlags(29558, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(29558, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Fel Iron Greatsword -- 29565
	AddRecipe(29565, 320, 23499, Q.COMMON, V.TBC, 320, 330, 340, 350)
	self:AddRecipeFlags(29565, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TWO_HAND, F.SWORD)
	self:AddRecipeTrainer(29565, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Adamantite Maul -- 29566
	AddRecipe(29566, 325, 23502, Q.COMMON, V.TBC, 325, 335, 345, 355)
	self:AddRecipeFlags(29566, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeVendor(29566, 16670, 16713, 19662)

	-- Adamantite Cleaver -- 29568
	AddRecipe(29568, 330, 23503, Q.COMMON, V.TBC, 330, 340, 350, 360)
	self:AddRecipeFlags(29568, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeVendor(29568, 16670, 16713, 19662)

	-- Adamantite Dagger -- 29569
	AddRecipe(29569, 330, 23504, Q.COMMON, V.TBC, 330, 340, 350, 360)
	self:AddRecipeFlags(29569, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.ONE_HAND, F.DAGGER)
	self:AddRecipeVendor(29569, 16670, 16713, 19662)

	-- Adamantite Rapier -- 29571
	AddRecipe(29571, 335, 23505, Q.COMMON, V.TBC, 335, 345, 355, 365)
	self:AddRecipeFlags(29571, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.TANK, F.ONE_HAND, F.SWORD)
	self:AddRecipeVendor(29571, 16670, 16713, 19662)

	-- Adamantite Plate Bracers -- 29603
	AddRecipe(29603, 335, 23506, Q.COMMON, V.TBC, 335, 345, 355, 365)
	self:AddRecipeFlags(29603, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeVendor(29603, 19342, 19694)

	-- Adamantite Plate Gloves -- 29605
	AddRecipe(29605, 335, 23508, Q.COMMON, V.TBC, 335, 345, 355, 365)
	self:AddRecipeFlags(29605, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeVendor(29605, 19342, 19694)

	-- Adamantite Breastplate -- 29606
	AddRecipe(29606, 340, 23507, Q.COMMON, V.TBC, 340, 350, 360, 370)
	self:AddRecipeFlags(29606, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeVendor(29606, 19342, 19694)

	-- Enchanted Adamantite Belt -- 29608
	AddRecipe(29608, 355, 23510, Q.COMMON, V.TBC, 355, 365, 375, 385)
	self:AddRecipeFlags(29608, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.SCRYER)
	self:AddRecipeRepVendor(29608, FAC.SCRYER, REP.FRIENDLY, 19331)

	-- Enchanted Adamantite Breastplate -- 29610
	AddRecipe(29610, 360, 23509, Q.COMMON, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(29610, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.SCRYER)
	self:AddRecipeRepVendor(29610, FAC.SCRYER, REP.REVERED, 19331)

	-- Enchanted Adamantite Boots -- 29611
	AddRecipe(29611, 355, 23511, Q.COMMON, V.TBC, 355, 365, 375, 385)
	self:AddRecipeFlags(29611, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.SCRYER)
	self:AddRecipeRepVendor(29611, FAC.SCRYER, REP.HONORED, 19331)

	-- Enchanted Adamantite Leggings -- 29613
	AddRecipe(29613, 365, 23512, Q.COMMON, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29613, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.SCRYER)
	self:AddRecipeRepVendor(29613, FAC.SCRYER, REP.EXALTED, 19331)

	-- Flamebane Bracers -- 29614
	AddRecipe(29614, 350, 23515, Q.COMMON, V.TBC, 350, 360, 370, 380)
	self:AddRecipeFlags(29614, F.ALLIANCE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ALDOR)
	self:AddRecipeRepVendor(29614, FAC.ALDOR, REP.FRIENDLY, 19321)

	-- Flamebane Helm -- 29615
	AddRecipe(29615, 355, 23516, Q.COMMON, V.TBC, 355, 365, 375, 385)
	self:AddRecipeFlags(29615, F.ALLIANCE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ALDOR)
	self:AddRecipeRepVendor(29615, FAC.ALDOR, REP.EXALTED, 19321)

	-- Flamebane Gloves -- 29616
	AddRecipe(29616, 360, 23514, Q.COMMON, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(29616, F.ALLIANCE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ALDOR)
	self:AddRecipeRepVendor(29616, FAC.ALDOR, REP.HONORED, 19321)

	-- Flamebane Breastplate -- 29617
	AddRecipe(29617, 365, 23513, Q.COMMON, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29617, F.ALLIANCE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ALDOR)
	self:AddRecipeRepVendor(29617, FAC.ALDOR, REP.REVERED, 19321)

	-- Felsteel Gloves -- 29619
	AddRecipe(29619, 360, 23517, Q.RARE, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(29619, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeMobDrop(29619, 18497)

	-- Felsteel Leggings -- 29620
	AddRecipe(29620, 360, 23518, Q.RARE, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(29620, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeMobDrop(29620, 20900)

	-- Felsteel Helm -- 29621
	AddRecipe(29621, 365, 23519, Q.RARE, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29621, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeMobDrop(29621, 18830)

	-- Gauntlets of the Iron Tower -- 29622
	AddRecipe(29622, 365, 23532, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29622, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.TANK, F.PLATE)
	self:AddRecipeWorldDrop(29622, "Outland")

	-- Khorium Belt -- 29628
	AddRecipe(29628, 360, 23524, Q.RARE, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(29628, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeMobDrop(29628, 18203)

	-- Khorium Pants -- 29629
	AddRecipe(29629, 360, 23523, Q.RARE, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(29629, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeMobDrop(29629, 20878)

	-- Khorium Boots -- 29630
	AddRecipe(29630, 365, 23525, Q.RARE, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29630, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeMobDrop(29630, 18873)

	-- Ragesteel Gloves -- 29642
	AddRecipe(29642, 365, 23520, Q.RARE, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29642, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeMobDrop(29642, 17136)

	-- Ragesteel Helm -- 29643
	AddRecipe(29643, 365, 23521, Q.RARE, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29643, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeMobDrop(29643, 16952)

	-- Ragesteel Breastplate -- 29645
	AddRecipe(29645, 370, 23522, Q.RARE, V.TBC, 370, 380, 390, 400)
	self:AddRecipeFlags(29645, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeMobDrop(29645, 23305, 23324, 21454)

	-- Swiftsteel Gloves -- 29648
	AddRecipe(29648, 370, 23526, Q.RARE, V.TBC, 370, 380, 390, 400)
	self:AddRecipeFlags(29648, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.HEALER, F.CASTER, F.MAIL)
	self:AddRecipeMobDrop(29648, 18314)

	-- Earthpeace Breastplate -- 29649
	AddRecipe(29649, 370, 23527, Q.RARE, V.TBC, 370, 380, 390, 400)
	self:AddRecipeFlags(29649, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.MAIL)
	self:AddRecipeMobDrop(29649, 17975)

	-- Fel Sharpening Stone -- 29654
	AddRecipe(29654, 300, 23528, Q.COMMON, V.TBC, 300, 300, 305, 310)
	self:AddRecipeFlags(29654, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(29654, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Adamantite Sharpening Stone -- 29656
	AddRecipe(29656, 350, 23529, Q.COMMON, V.TBC, 350, 350, 355, 360)
	self:AddRecipeFlags(29656, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.CENARION_EXPEDITION)
	self:AddRecipeRepVendor(29656, FAC.CENARION_EXPEDITION, REP.HONORED, 17904)

	-- Felsteel Shield Spike -- 29657
	AddRecipe(29657, 360, 23530, Q.COMMON, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(29657, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.HELLFIRE)
	self:AddRecipeRepVendor(29657, FAC.HONOR_HOLD, REP.EXALTED, 17657)
	self:AddRecipeRepVendor(29657, FAC.THRALLMAR, REP.EXALTED, 17585)

	-- Felfury Gauntlets -- 29658
	AddRecipe(29658, 365, 23531, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29658, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.MAIL)
	self:AddRecipeWorldDrop(29658, "Outland")

	-- Steelgrip Gauntlets -- 29662
	AddRecipe(29662, 365, 23533, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29662, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeWorldDrop(29662, "Outland")

	-- Storm Helm -- 29663
	AddRecipe(29663, 365, 23534, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29663, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.HEALER, F.CASTER, F.MAIL)
	self:AddRecipeWorldDrop(29663, "Outland")

	-- Helm of the Stalwart Defender -- 29664
	AddRecipe(29664, 365, 23535, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29664, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.TANK, F.PLATE)
	self:AddRecipeWorldDrop(29664, "Outland")

	-- Oathkeeper's Helm -- 29668
	AddRecipe(29668, 365, 23536, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29668, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.TANK, F.PLATE)
	self:AddRecipeWorldDrop(29668, "Outland")

	-- Black Felsteel Bracers -- 29669
	AddRecipe(29669, 365, 23537, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29669, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeWorldDrop(29669, "Outland")

	-- Bracers of the Green Fortress -- 29671
	AddRecipe(29671, 365, 23538, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29671, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.TANK, F.PLATE)
	self:AddRecipeWorldDrop(29671, "Outland")

	-- Blessed Bracers -- 29672
	AddRecipe(29672, 365, 23539, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29672, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeWorldDrop(29672, "Outland")

	-- Felsteel Longblade -- 29692
	AddRecipe(29692, 365, 23540, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29692, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeWorldDrop(29692, "Outland")

	-- Khorium Champion -- 29693
	AddRecipe(29693, 365, 23541, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29693, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.SWORD)
	self:AddRecipeWorldDrop(29693, "Outland")

	-- Fel Edged Battleaxe -- 29694
	AddRecipe(29694, 365, 23542, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29694, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.ONE_HAND, F.AXE)
	self:AddRecipeWorldDrop(29694, "Outland")

	-- Felsteel Reaper -- 29695
	AddRecipe(29695, 365, 23543, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29695, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeWorldDrop(29695, "Outland")

	-- Runic Hammer -- 29696
	AddRecipe(29696, 365, 23544, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29696, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.MACE)
	self:AddRecipeWorldDrop(29696, "Outland")

	-- Fel Hardened Maul -- 29697
	AddRecipe(29697, 365, 23546, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29697, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeWorldDrop(29697, "Outland")

	-- Eternium Runed Blade -- 29698
	AddRecipe(29698, 365, 23554, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29698, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.ONE_HAND, F.DAGGER)
	self:AddRecipeWorldDrop(29698, "Outland")

	-- Dirge -- 29699
	AddRecipe(29699, 365, 23555, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29699, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.DAGGER)
	self:AddRecipeWorldDrop(29699, "Outland")

	-- Hand of Eternity -- 29700
	AddRecipe(29700, 365, 23556, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(29700, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.ONE_HAND, F.MACE)
	self:AddRecipeWorldDrop(29700, "Outland")

	-- Lesser Ward of Shielding -- 29728
	AddRecipe(29728, 340, 23575, Q.COMMON, V.TBC, 340, 340, 345, 350)
	self:AddRecipeFlags(29728, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(29728, 16583, 19373)

	-- Greater Ward of Shielding -- 29729
	AddRecipe(29729, 375, 23576, Q.RARE, V.TBC, 375, 375, 375, 375)
	self:AddRecipeFlags(29729, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP)
	self:AddRecipeMobDrop(29729, 18853)

	-- Lesser Rune of Warding -- 32284
	AddRecipe(32284, 325, 23559, Q.COMMON, V.TBC, 325, 325, 330, 335)
	self:AddRecipeFlags(32284, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(32284, 28694, 26988, 26981, 16823, 33631, 33609, 26952, 29924, 16583, 26904, 33591, 26564, 19341, 27034)

	-- Greater Rune of Warding -- 32285
	AddRecipe(32285, 350, 25521, Q.COMMON, V.TBC, 350, 350, 355, 360)
	self:AddRecipeFlags(32285, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.CENARION_EXPEDITION)
	self:AddRecipeRepVendor(32285, FAC.CENARION_EXPEDITION, REP.HONORED, 17904)

	-- Fel Iron Rod -- 32655
	AddRecipe(32655, 300, 25843, Q.COMMON, V.TBC, 300, 300, 305, 310)
	self:AddRecipeFlags(32655, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(32655, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Adamantite Rod -- 32656
	AddRecipe(32656, 350, 25844, Q.COMMON, V.TBC, 350, 350, 355, 360)
	self:AddRecipeFlags(32656, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(32656, 19662)

	-- Eternium Rod -- 32657
	AddRecipe(32657, 360, 25845, Q.COMMON, V.TBC, 360, 365, 370, 375)
	self:AddRecipeFlags(32657, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(32657, 16583, 19373)

	-- Nether Chain Shirt -- 34529
	AddRecipe(34529, 350, 23563, Q.COMMON, V.TBC, 350, 360, 370, 380, 9788)
	self:AddRecipeFlags(34529, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.HEALER, F.CASTER, F.MAIL)
	self:AddRecipeTrainer(34529, 11177, 29506, 20125, 7230, 5164)

	-- Twisting Nether Chain Shirt -- 34530
	AddRecipe(34530, 375, 23564, Q.COMMON, V.TBC, 375, 385, 395, 405, 9788)
	self:AddRecipeFlags(34530, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(34530, 11177, 29506, 20125, 7230, 5164)

	-- Breastplate of Kings -- 34533
	AddRecipe(34533, 350, 28483, Q.COMMON, V.TBC, 350, 360, 370, 380, 9788)
	self:AddRecipeFlags(34533, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(34533, 11177, 29506, 20125, 7230, 5164)

	-- Bulwark of Kings -- 34534
	AddRecipe(34534, 375, 28484, Q.COMMON, V.TBC, 375, 385, 395, 405, 9788)
	self:AddRecipeFlags(34534, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(34534, 11177, 29506, 20125, 7230, 5164)

	-- Fireguard -- 34535
	AddRecipe(34535, 350, 28425, Q.COMMON, V.TBC, 350, 360, 370, 380, 17039)
	self:AddRecipeFlags(34535, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(34535, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Blazeguard -- 34537
	AddRecipe(34537, 375, 28426, Q.COMMON, V.TBC, 375, 385, 395, 405, 17039)
	self:AddRecipeFlags(34537, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(34537, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Lionheart Blade -- 34538
	AddRecipe(34538, 350, 28428, Q.COMMON, V.TBC, 350, 360, 370, 380, 17039)
	self:AddRecipeFlags(34538, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.SWORD)
	self:AddRecipeTrainer(34538, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Lionheart Champion -- 34540
	AddRecipe(34540, 375, 28429, Q.COMMON, V.TBC, 375, 385, 395, 405, 17039)
	self:AddRecipeFlags(34540, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.SWORD)
	self:AddRecipeTrainer(34540, 7232, 29505, 11146, 7231, 11178, 20124)

	-- The Planar Edge -- 34541
	AddRecipe(34541, 350, 28431, Q.COMMON, V.TBC, 350, 360, 370, 380, 17041)
	self:AddRecipeFlags(34541, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(34541, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Black Planar Edge -- 34542
	AddRecipe(34542, 375, 28432, Q.COMMON, V.TBC, 375, 385, 395, 405, 17041)
	self:AddRecipeFlags(34542, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(34542, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Lunar Crescent -- 34543
	AddRecipe(34543, 350, 28434, Q.COMMON, V.TBC, 350, 360, 370, 380, 17041)
	self:AddRecipeFlags(34543, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeTrainer(34543, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Mooncleaver -- 34544
	AddRecipe(34544, 375, 28435, Q.COMMON, V.TBC, 375, 385, 395, 405, 17041)
	self:AddRecipeFlags(34544, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeTrainer(34544, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Drakefist Hammer -- 34545
	AddRecipe(34545, 350, 28437, Q.COMMON, V.TBC, 350, 360, 370, 380, 17040)
	self:AddRecipeFlags(34545, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(34545, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Dragonmaw -- 34546
	AddRecipe(34546, 375, 28438, Q.COMMON, V.TBC, 375, 385, 395, 405, 17040)
	self:AddRecipeFlags(34546, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(34546, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Thunder -- 34547
	AddRecipe(34547, 350, 28440, Q.COMMON, V.TBC, 350, 360, 370, 380, 17040)
	self:AddRecipeFlags(34547, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeTrainer(34547, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Deep Thunder -- 34548
	AddRecipe(34548, 375, 28441, Q.COMMON, V.TBC, 375, 385, 395, 405, 17040)
	self:AddRecipeFlags(34548, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeTrainer(34548, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Fel Weightstone -- 34607
	AddRecipe(34607, 300, 28420, Q.COMMON, V.TBC, 300, 300, 305, 310)
	self:AddRecipeFlags(34607, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(34607, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Adamantite Weightstone -- 34608
	AddRecipe(34608, 350, 28421, Q.COMMON, V.TBC, 350, 350, 355, 360)
	self:AddRecipeFlags(34608, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.CENARION_EXPEDITION)
	self:AddRecipeRepVendor(34608, FAC.CENARION_EXPEDITION, REP.HONORED, 17904)

	-- Thick Bronze Darts -- 34979
	AddRecipe(34979, 100, 29201, Q.COMMON, V.TBC, 100, 130, 145, 160)
	self:AddRecipeFlags(34979, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.THROWN)
	self:AddRecipeTrainer(34979, 3355, 3174, 33591, 16724, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Whirling Steel Axes -- 34981
	AddRecipe(34981, 200, 29202, Q.COMMON, V.TBC, 200, 220, 230, 240)
	self:AddRecipeFlags(34981, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.THROWN)
	self:AddRecipeTrainer(34981, 16724, 3174, 33591, 3355, 29924, 6299, 2998, 26904, 17245, 26564, 26952, 16583, 1241, 3136, 4258, 514, 26988, 28694, 2836, 15400, 33609, 4596, 3557, 33631, 33675, 5511, 16823, 27034, 16669, 3478, 26981, 19341)

	-- Enchanted Thorium Blades -- 34982
	AddRecipe(34982, 300, 29203, Q.COMMON, V.TBC, 300, 320, 330, 340)
	self:AddRecipeFlags(34982, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.THROWN)
	self:AddRecipeTrainer(34982, 3174, 29924, 16724, 3355, 6299, 2998, 26904, 33591, 19341, 26952, 16583, 1241, 3136, 4258, 514, 33609, 28694, 2836, 27034, 26988, 4596, 3557, 15400, 33675, 5511, 16823, 33631, 17245, 3478, 26981, 26564)

	-- Felsteel Whisper Knives -- 34983
	AddRecipe(34983, 350, 29204, Q.COMMON, V.TBC, 350, 360, 370, 380)
	self:AddRecipeFlags(34983, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.THROWN)
	self:AddRecipeTrainer(34983, 28694, 26988, 16823, 33675, 29924, 33631, 33609, 26952, 16583, 33591, 26904, 26981, 26564, 19341, 27034)

	-- Earthforged Leggings -- 36122
	AddRecipe(36122, 260, 30069, Q.COMMON, V.TBC, 260, 280, 290, 300, 9788)
	self:AddRecipeFlags(36122, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(36122, 11177, 29506, 20125, 7230, 5164)

	-- Windforged Leggings -- 36124
	AddRecipe(36124, 260, 30070, Q.COMMON, V.TBC, 260, 280, 290, 300, 9788)
	self:AddRecipeFlags(36124, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(36124, 11177, 29506, 20125, 7230, 5164)

	-- Light Earthforged Blade -- 36125
	AddRecipe(36125, 260, 30071, Q.COMMON, V.TBC, 260, 280, 290, 300, 9787)
	self:AddRecipeFlags(36125, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(36125, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Light Skyforged Axe -- 36126
	AddRecipe(36126, 260, 30072, Q.COMMON, V.TBC, 260, 280, 290, 300, 9787)
	self:AddRecipeFlags(36126, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(36126, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Light Emberforged Hammer -- 36128
	AddRecipe(36128, 260, 30073, Q.COMMON, V.TBC, 260, 280, 290, 300, 9787)
	self:AddRecipeFlags(36128, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(36128, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Heavy Earthforged Breastplate -- 36129
	AddRecipe(36129, 330, 30074, Q.COMMON, V.TBC, 330, 340, 350, 360, 9788)
	self:AddRecipeFlags(36129, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(36129, 11177, 29506, 20125, 7230, 5164)

	-- Stormforged Hauberk -- 36130
	AddRecipe(36130, 330, 30076, Q.COMMON, V.TBC, 330, 340, 350, 360, 9788)
	self:AddRecipeFlags(36130, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(36130, 11177, 29506, 20125, 7230, 5164)

	-- Windforged Rapier -- 36131
	AddRecipe(36131, 330, 30077, Q.COMMON, V.TBC, 330, 340, 350, 360, 17039)
	self:AddRecipeFlags(36131, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(36131, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Stoneforged Claymore -- 36133
	AddRecipe(36133, 330, 30086, Q.COMMON, V.TBC, 330, 340, 350, 360, 17039)
	self:AddRecipeFlags(36133, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.SWORD)
	self:AddRecipeTrainer(36133, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Stormforged Axe -- 36134
	AddRecipe(36134, 330, 30087, Q.COMMON, V.TBC, 330, 340, 350, 360, 17041)
	self:AddRecipeFlags(36134, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(36134, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Skyforged Great Axe -- 36135
	AddRecipe(36135, 330, 30088, Q.COMMON, V.TBC, 330, 340, 350, 360, 17041)
	self:AddRecipeFlags(36135, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeTrainer(36135, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Lavaforged Warhammer -- 36136
	AddRecipe(36136, 330, 30089, Q.COMMON, V.TBC, 330, 340, 350, 360, 17040)
	self:AddRecipeFlags(36136, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(36136, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Great Earthforged Hammer -- 36137
	AddRecipe(36137, 330, 30093, Q.COMMON, V.TBC, 330, 340, 350, 360, 17040)
	self:AddRecipeFlags(36137, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeTrainer(36137, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Embrace of the Twisting Nether -- 36256
	AddRecipe(36256, 375, 23565, Q.COMMON, V.TBC, 375, 385, 395, 405, 9788)
	self:AddRecipeFlags(36256, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(36256, 11177, 29506, 20125, 7230, 5164)

	-- Bulwark of the Ancient Kings -- 36257
	AddRecipe(36257, 375, 28485, Q.COMMON, V.TBC, 375, 385, 395, 405, 9788)
	self:AddRecipeFlags(36257, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(36257, 11177, 29506, 20125, 7230, 5164)

	-- Blazefury -- 36258
	AddRecipe(36258, 375, 28427, Q.COMMON, V.TBC, 375, 385, 395, 405, 17039)
	self:AddRecipeFlags(36258, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(36258, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Lionheart Executioner -- 36259
	AddRecipe(36259, 375, 28430, Q.COMMON, V.TBC, 375, 385, 395, 405, 17039)
	self:AddRecipeFlags(36259, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.SWORD)
	self:AddRecipeTrainer(36259, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Wicked Edge of the Planes -- 36260
	AddRecipe(36260, 375, 28433, Q.COMMON, V.TBC, 375, 385, 395, 405, 17041)
	self:AddRecipeFlags(36260, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(36260, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Bloodmoon -- 36261
	AddRecipe(36261, 375, 28436, Q.COMMON, V.TBC, 375, 385, 395, 405, 17041)
	self:AddRecipeFlags(36261, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeTrainer(36261, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Dragonstrike -- 36262
	AddRecipe(36262, 375, 28439, Q.COMMON, V.TBC, 375, 385, 395, 405, 17040)
	self:AddRecipeFlags(36262, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(36262, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Stormherald -- 36263
	AddRecipe(36263, 375, 28442, Q.COMMON, V.TBC, 375, 385, 395, 405, 17040)
	self:AddRecipeFlags(36263, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeTrainer(36263, 7232, 29505, 11146, 7231, 11178, 20124)

	-- Belt of the Guardian -- 36389
	AddRecipe(36389, 375, 30034, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(36389, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeAcquire(36389, A.CUSTOM, 37, A.CUSTOM, 43)

	-- Red Belt of Battle -- 36390
	AddRecipe(36390, 375, 30032, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(36390, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeAcquire(36390, A.CUSTOM, 37, A.CUSTOM, 43)

	-- Boots of the Protector -- 36391
	AddRecipe(36391, 375, 30033, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(36391, F.ALLIANCE, F.HORDE, F.RAID, F.IBOP, F.RBOE, F.TANK, F.PLATE)
	self:AddRecipeAcquire(36391, A.CUSTOM, 37, A.CUSTOM, 43)

	-- Red Havoc Boots -- 36392
	AddRecipe(36392, 375, 30031, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(36392, F.ALLIANCE, F.HORDE, F.RAID, F.IBOP, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeAcquire(36392, A.CUSTOM, 37, A.CUSTOM, 43)

	-- Wildguard Breastplate -- 38473
	AddRecipe(38473, 375, 31364, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(38473, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.CENARION_EXPEDITION)
	self:AddRecipeRepVendor(38473, FAC.CENARION_EXPEDITION, REP.EXALTED, 17904)

	-- Wildguard Leggings -- 38475
	AddRecipe(38475, 375, 31367, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(38475, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.PLATE, F.CENARION_EXPEDITION)
	self:AddRecipeRepVendor(38475, FAC.CENARION_EXPEDITION, REP.REVERED, 17904)

	-- Wildguard Helm -- 38476
	AddRecipe(38476, 375, 31368, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(38476, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.CENARION_EXPEDITION)
	self:AddRecipeRepVendor(38476, FAC.CENARION_EXPEDITION, REP.REVERED, 17904)

	-- Iceguard Breastplate -- 38477
	AddRecipe(38477, 375, 31369, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(38477, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.VIOLETEYE)
	self:AddRecipeRepVendor(38477, FAC.VIOLETEYE, REP.HONORED, 16388)

	-- Iceguard Leggings -- 38478
	AddRecipe(38478, 375, 31370, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(38478, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.PLATE, F.VIOLETEYE)
	self:AddRecipeRepVendor(38478, FAC.VIOLETEYE, REP.REVERED, 16388)

	-- Iceguard Helm -- 38479
	AddRecipe(38479, 375, 31371, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(38479, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.VIOLETEYE)
	self:AddRecipeRepVendor(38479, FAC.VIOLETEYE, REP.HONORED, 16388)

	-- Shadesteel Sabots -- 40033
	AddRecipe(40033, 375, 32402, Q.COMMON, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(40033, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.PLATE, F.ASHTONGUE)
	self:AddRecipeRepVendor(40033, FAC.ASHTONGUE, REP.HONORED, 23159)

	-- Shadesteel Bracers -- 40034
	AddRecipe(40034, 375, 32403, Q.COMMON, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(40034, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.PLATE, F.ASHTONGUE)
	self:AddRecipeRepVendor(40034, FAC.ASHTONGUE, REP.FRIENDLY, 23159)

	-- Shadesteel Greaves -- 40035
	AddRecipe(40035, 375, 32404, Q.COMMON, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(40035, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.PLATE, F.ASHTONGUE)
	self:AddRecipeRepVendor(40035, FAC.ASHTONGUE, REP.HONORED, 23159)

	-- Shadesteel Girdle -- 40036
	AddRecipe(40036, 375, 32401, Q.COMMON, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(40036, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.PLATE, F.ASHTONGUE)
	self:AddRecipeRepVendor(40036, FAC.ASHTONGUE, REP.FRIENDLY, 23159)

	-- Swiftsteel Bracers -- 41132
	AddRecipe(41132, 375, 32568, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(41132, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeAcquire(41132, A.CUSTOM, 27, A.CUSTOM, 34)

	-- Swiftsteel Shoulders -- 41133
	AddRecipe(41133, 375, 32570, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(41133, F.ALLIANCE, F.HORDE, F.RAID, F.IBOP, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeAcquire(41133, A.CUSTOM, 34)

	-- Dawnsteel Bracers -- 41134
	AddRecipe(41134, 375, 32571, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(41134, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeAcquire(41134, A.CUSTOM, 34)

	-- Dawnsteel Shoulders -- 41135
	AddRecipe(41135, 375, 32573, Q.EPIC, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(41135, F.ALLIANCE, F.HORDE, F.RAID, F.IBOP, F.RBOE, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeAcquire(41135, A.CUSTOM, 27, A.CUSTOM, 34)

	-- Ragesteel Shoulders -- 42662
	AddRecipe(42662, 365, 33173, Q.RARE, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(42662, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeMobDrop(42662, 21061, 21059, 21060, 21050)

	-- Adamantite Weapon Chain -- 42688
	AddRecipe(42688, 335, 33185, Q.UNCOMMON, V.TBC, 335, 345, 350, 355)
	self:AddRecipeFlags(42688, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.TANK)
	self:AddRecipeMobDrop(42688, 24664)

	-- Heavy Copper Longsword -- 43549
	AddRecipe(43549, 35, 33791, Q.UNCOMMON, V.TBC, 35, 75, 95, 115)
	self:AddRecipeFlags(43549, F.ALLIANCE, F.QUEST, F.IBOE, F.RBOE, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeQuest(43549, 1578)

	-- Hammer of Righteous Might -- 43846
	AddRecipe(43846, 365, 32854, Q.EPIC, V.TBC, 365, 375, 385, 395)
	self:AddRecipeFlags(43846, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.TWO_HAND, F.MACE)
	self:AddRecipeWorldDrop(43846, "Outland")

	-- Sunblessed Gauntlets -- 46140
	AddRecipe(46140, 365, 34380, Q.EPIC, V.TBC, 365, 375, 392, 410)
	self:AddRecipeFlags(46140, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeAcquire(46140, A.CUSTOM, 24)

	-- Hard Khorium Battlefists -- 46141
	AddRecipe(46141, 365, 34378, Q.EPIC, V.TBC, 365, 375, 392, 410)
	self:AddRecipeFlags(46141, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeAcquire(46141, A.CUSTOM, 24)

	-- Sunblessed Breastplate -- 46142
	AddRecipe(46142, 365, 34379, Q.EPIC, V.TBC, 365, 375, 392, 410)
	self:AddRecipeFlags(46142, F.ALLIANCE, F.HORDE, F.RAID, F.IBOP, F.RBOE, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeAcquire(46142, A.CUSTOM, 24)

	-- Hard Khorium Battleplate -- 46144
	AddRecipe(46144, 365, 34377, Q.EPIC, V.TBC, 365, 375, 392, 410)
	self:AddRecipeFlags(46144, F.ALLIANCE, F.HORDE, F.RAID, F.IBOP, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeAcquire(46144, A.CUSTOM, 24)

	-- Cobalt Legplates -- 52567
	AddRecipe(52567, 370, 39086, Q.COMMON, V.WOTLK, 370, 375, 380, 385)
	self:AddRecipeFlags(52567, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(52567, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cobalt Belt -- 52568
	AddRecipe(52568, 350, 39087, Q.COMMON, V.WOTLK, 350, 360, 370, 380)
	self:AddRecipeFlags(52568, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(52568, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cobalt Boots -- 52569
	AddRecipe(52569, 350, 39088, Q.COMMON, V.WOTLK, 350, 360, 370, 380)
	self:AddRecipeFlags(52569, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(52569, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cobalt Chestpiece -- 52570
	AddRecipe(52570, 375, 39085, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(52570, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(52570, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cobalt Helm -- 52571
	AddRecipe(52571, 370, 39084, Q.COMMON, V.WOTLK, 370, 375, 380, 385)
	self:AddRecipeFlags(52571, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(52571, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cobalt Shoulders -- 52572
	AddRecipe(52572, 360, 39083, Q.COMMON, V.WOTLK, 360, 370, 375, 380)
	self:AddRecipeFlags(52572, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(52572, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cobalt Triangle Shield -- 54550
	AddRecipe(54550, 360, 40668, Q.COMMON, V.WOTLK, 360, 370, 375, 380)
	self:AddRecipeFlags(54550, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.SHIELD, F.ONE_HAND)
	self:AddRecipeTrainer(54550, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Tempered Saronite Belt -- 54551
	AddRecipe(54551, 395, 40669, Q.COMMON, V.WOTLK, 395, 400, 405, 410)
	self:AddRecipeFlags(54551, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(54551, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Tempered Saronite Boots -- 54552
	AddRecipe(54552, 400, 40671, Q.COMMON, V.WOTLK, 400, 405, 410, 415)
	self:AddRecipeFlags(54552, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(54552, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Tempered Saronite Breastplate -- 54553
	AddRecipe(54553, 400, 40672, Q.COMMON, V.WOTLK, 400, 405, 410, 415)
	self:AddRecipeFlags(54553, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(54553, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Tempered Saronite Legplates -- 54554
	AddRecipe(54554, 395, 40674, Q.COMMON, V.WOTLK, 395, 400, 405, 410)
	self:AddRecipeFlags(54554, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(54554, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Tempered Saronite Helm -- 54555
	AddRecipe(54555, 405, 40673, Q.COMMON, V.WOTLK, 405, 410, 415, 420)
	self:AddRecipeFlags(54555, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(54555, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Tempered Saronite Shoulders -- 54556
	AddRecipe(54556, 405, 40675, Q.COMMON, V.WOTLK, 405, 410, 415, 420)
	self:AddRecipeFlags(54556, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(54556, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Saronite Defender -- 54557
	AddRecipe(54557, 390, 40670, Q.COMMON, V.WOTLK, 390, 395, 400, 405)
	self:AddRecipeFlags(54557, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.SHIELD, F.ONE_HAND)
	self:AddRecipeTrainer(54557, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Spiked Cobalt Helm -- 54917
	AddRecipe(54917, 375, 40942, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(54917, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(54917, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Spiked Cobalt Boots -- 54918
	AddRecipe(54918, 380, 40949, Q.COMMON, V.WOTLK, 380, 385, 390, 395)
	self:AddRecipeFlags(54918, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(54918, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Spiked Cobalt Shoulders -- 54941
	AddRecipe(54941, 385, 40950, Q.COMMON, V.WOTLK, 385, 390, 395, 400)
	self:AddRecipeFlags(54941, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(54941, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Spiked Cobalt Chestpiece -- 54944
	AddRecipe(54944, 385, 40951, Q.COMMON, V.WOTLK, 385, 390, 395, 400)
	self:AddRecipeFlags(54944, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(54944, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Spiked Cobalt Gauntlets -- 54945
	AddRecipe(54945, 390, 40952, Q.COMMON, V.WOTLK, 390, 395, 400, 405)
	self:AddRecipeFlags(54945, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(54945, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Spiked Cobalt Belt -- 54946
	AddRecipe(54946, 395, 40953, Q.COMMON, V.WOTLK, 395, 400, 405, 410)
	self:AddRecipeFlags(54946, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(54946, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Spiked Cobalt Legplates -- 54947
	AddRecipe(54947, 395, 40943, Q.COMMON, V.WOTLK, 395, 400, 405, 410)
	self:AddRecipeFlags(54947, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(54947, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Spiked Cobalt Bracers -- 54948
	AddRecipe(54948, 400, 40954, Q.COMMON, V.WOTLK, 400, 405, 410, 415)
	self:AddRecipeFlags(54948, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(54948, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Horned Cobalt Helm -- 54949
	AddRecipe(54949, 400, 40955, Q.COMMON, V.WOTLK, 400, 405, 410, 415)
	self:AddRecipeFlags(54949, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(54949, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Reinforced Cobalt Shoulders -- 54978
	AddRecipe(54978, 375, 40956, Q.UNCOMMON, V.WOTLK, 375, 395, 400, 405)
	self:AddRecipeFlags(54978, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeMobDrop(54978, 27333)

	-- Reinforced Cobalt Helm -- 54979
	AddRecipe(54979, 375, 40957, Q.UNCOMMON, V.WOTLK, 375, 405, 410, 415)
	self:AddRecipeFlags(54979, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeMobDrop(54979, 26270)

	-- Reinforced Cobalt Legplates -- 54980
	AddRecipe(54980, 375, 40958, Q.UNCOMMON, V.WOTLK, 375, 410, 415, 420)
	self:AddRecipeFlags(54980, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeMobDrop(54980, 29235)

	-- Reinforced Cobalt Chestpiece -- 54981
	AddRecipe(54981, 375, 40959, Q.UNCOMMON, V.WOTLK, 375, 415, 420, 425)
	self:AddRecipeFlags(54981, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeMobDrop(54981, 28123)

	-- Saronite Protector -- 55013
	AddRecipe(55013, 390, 41117, Q.COMMON, V.WOTLK, 390, 395, 400, 405)
	self:AddRecipeFlags(55013, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.SHIELD, F.ONE_HAND)
	self:AddRecipeTrainer(55013, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Saronite Bulwark -- 55014
	AddRecipe(55014, 410, 41113, Q.COMMON, V.WOTLK, 410, 415, 420, 425)
	self:AddRecipeFlags(55014, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.SHIELD, F.ONE_HAND)
	self:AddRecipeTrainer(55014, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Tempered Saronite Gauntlets -- 55015
	AddRecipe(55015, 415, 41114, Q.COMMON, V.WOTLK, 415, 420, 425, 430)
	self:AddRecipeFlags(55015, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(55015, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Tempered Saronite Bracers -- 55017
	AddRecipe(55017, 410, 41116, Q.COMMON, V.WOTLK, 410, 415, 420, 425)
	self:AddRecipeFlags(55017, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(55017, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Brilliant Saronite Legplates -- 55055
	AddRecipe(55055, 395, 41126, Q.COMMON, V.WOTLK, 395, 400, 405, 410)
	self:AddRecipeFlags(55055, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(55055, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Brilliant Saronite Gauntlets -- 55056
	AddRecipe(55056, 400, 41127, Q.COMMON, V.WOTLK, 400, 405, 410, 415)
	self:AddRecipeFlags(55056, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(55056, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Brilliant Saronite Boots -- 55057
	AddRecipe(55057, 405, 41128, Q.COMMON, V.WOTLK, 405, 410, 415, 420)
	self:AddRecipeFlags(55057, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(55057, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Brilliant Saronite Breastplate -- 55058
	AddRecipe(55058, 415, 41129, Q.COMMON, V.WOTLK, 415, 420, 425, 430)
	self:AddRecipeFlags(55058, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(55058, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Honed Cobalt Cleaver -- 55174
	AddRecipe(55174, 390, 41181, Q.COMMON, V.WOTLK, 390, 395, 400, 405)
	self:AddRecipeFlags(55174, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TWO_HAND, F.AXE)
	self:AddRecipeTrainer(55174, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Savage Cobalt Slicer -- 55177
	AddRecipe(55177, 395, 41182, Q.COMMON, V.WOTLK, 395, 400, 405, 410)
	self:AddRecipeFlags(55177, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(55177, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Saronite Ambusher -- 55179
	AddRecipe(55179, 400, 41183, Q.COMMON, V.WOTLK, 400, 405, 410, 415)
	self:AddRecipeFlags(55179, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.DAGGER)
	self:AddRecipeTrainer(55179, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Saronite Shiv -- 55181
	AddRecipe(55181, 405, 41184, Q.COMMON, V.WOTLK, 405, 410, 415, 420)
	self:AddRecipeFlags(55181, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK, F.ONE_HAND, F.DAGGER)
	self:AddRecipeTrainer(55181, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Furious Saronite Beatstick -- 55182
	AddRecipe(55182, 410, 41185, Q.COMMON, V.WOTLK, 410, 415, 420, 425)
	self:AddRecipeFlags(55182, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(55182, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Corroded Saronite Edge -- 55183
	AddRecipe(55183, 415, 41186, Q.COMMON, V.WOTLK, 415, 420, 425, 430, 9787)
	self:AddRecipeFlags(55183, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(55183, 11146, 29505, 11178)

	-- Corroded Saronite Woundbringer -- 55184
	AddRecipe(55184, 415, 41187, Q.COMMON, V.WOTLK, 415, 420, 425, 430, 9787)
	self:AddRecipeFlags(55184, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(55184, 11146, 29505, 11178)

	-- Saronite Mindcrusher -- 55185
	AddRecipe(55185, 415, 41188, Q.COMMON, V.WOTLK, 415, 420, 425, 430, 9787)
	self:AddRecipeFlags(55185, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeTrainer(55185, 11146, 29505, 11178)

	-- Chestplate of Conquest -- 55186
	AddRecipe(55186, 415, 41189, Q.COMMON, V.WOTLK, 415, 420, 425, 430, 9788)
	self:AddRecipeFlags(55186, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55186, 29506, 5164, 11177)

	-- Legplates of Conquest -- 55187
	AddRecipe(55187, 415, 41190, Q.COMMON, V.WOTLK, 415, 420, 425, 430, 9788)
	self:AddRecipeFlags(55187, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55187, 29506, 5164, 11177)

	-- Sturdy Cobalt Quickblade -- 55200
	AddRecipe(55200, 380, 41239, Q.COMMON, V.WOTLK, 380, 385, 390, 395)
	self:AddRecipeFlags(55200, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(55200, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cobalt Tenderizer -- 55201
	AddRecipe(55201, 380, 41240, Q.COMMON, V.WOTLK, 380, 385, 390, 395)
	self:AddRecipeFlags(55201, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(55201, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Sure-fire Shuriken -- 55202
	AddRecipe(55202, 385, 41241, Q.COMMON, V.WOTLK, 385, 390, 395, 400)
	self:AddRecipeFlags(55202, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.THROWN)
	self:AddRecipeTrainer(55202, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Forged Cobalt Claymore -- 55203
	AddRecipe(55203, 385, 41242, Q.COMMON, V.WOTLK, 385, 390, 395, 400)
	self:AddRecipeFlags(55203, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TWO_HAND, F.SWORD)
	self:AddRecipeTrainer(55203, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Notched Cobalt War Axe -- 55204
	AddRecipe(55204, 390, 41243, Q.COMMON, V.WOTLK, 390, 395, 400, 405)
	self:AddRecipeFlags(55204, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.AXE)
	self:AddRecipeTrainer(55204, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Deadly Saronite Dirk -- 55206
	AddRecipe(55206, 405, 41245, Q.COMMON, V.WOTLK, 405, 415, 420, 425)
	self:AddRecipeFlags(55206, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK, F.THROWN)
	self:AddRecipeTrainer(55206, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Vengeance Bindings -- 55298
	AddRecipe(55298, 420, 41355, Q.COMMON, V.WOTLK, 420, 425, 430, 435)
	self:AddRecipeFlags(55298, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55298, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Righteous Gauntlets -- 55300
	AddRecipe(55300, 420, 41356, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(55300, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(55300, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Daunting Handguards -- 55301
	AddRecipe(55301, 420, 41357, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(55301, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(55301, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Helm of Command -- 55302
	AddRecipe(55302, 425, 41344, Q.COMMON, V.WOTLK, 425, 435, 445, 455)
	self:AddRecipeFlags(55302, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55302, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Daunting Legplates -- 55303
	AddRecipe(55303, 425, 41345, Q.COMMON, V.WOTLK, 425, 435, 445, 455)
	self:AddRecipeFlags(55303, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(55303, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Righteous Greaves -- 55304
	AddRecipe(55304, 425, 41346, Q.COMMON, V.WOTLK, 425, 435, 445, 455)
	self:AddRecipeFlags(55304, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(55304, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Savage Saronite Bracers -- 55305
	AddRecipe(55305, 420, 41354, Q.COMMON, V.WOTLK, 420, 425, 430, 435)
	self:AddRecipeFlags(55305, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55305, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Savage Saronite Pauldrons -- 55306
	AddRecipe(55306, 420, 41351, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(55306, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55306, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Savage Saronite Waistguard -- 55307
	AddRecipe(55307, 420, 41352, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(55307, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55307, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Savage Saronite Walkers -- 55308
	AddRecipe(55308, 420, 41348, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(55308, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55308, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Savage Saronite Gauntlets -- 55309
	AddRecipe(55309, 420, 41349, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(55309, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55309, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Savage Saronite Legplates -- 55310
	AddRecipe(55310, 425, 41347, Q.COMMON, V.WOTLK, 425, 435, 445, 455)
	self:AddRecipeFlags(55310, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55310, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Savage Saronite Hauberk -- 55311
	AddRecipe(55311, 425, 41353, Q.COMMON, V.WOTLK, 425, 435, 445, 455)
	self:AddRecipeFlags(55311, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55311, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Savage Saronite Skullshield -- 55312
	AddRecipe(55312, 425, 41350, Q.COMMON, V.WOTLK, 425, 435, 445, 455)
	self:AddRecipeFlags(55312, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55312, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Titansteel Destroyer -- 55369
	AddRecipe(55369, 440, 41257, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(55369, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TWO_HAND, F.MACE)
	self:AddRecipeTrainer(55369, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Titansteel Bonecrusher -- 55370
	AddRecipe(55370, 440, 41383, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(55370, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(55370, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Titansteel Guardian -- 55371
	AddRecipe(55371, 440, 41384, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(55371, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(55371, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Spiked Titansteel Helm -- 55372
	AddRecipe(55372, 440, 41386, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(55372, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55372, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Tempered Titansteel Helm -- 55373
	AddRecipe(55373, 440, 41387, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(55373, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(55373, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Brilliant Titansteel Helm -- 55374
	AddRecipe(55374, 440, 41388, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(55374, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(55374, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Spiked Titansteel Treads -- 55375
	AddRecipe(55375, 440, 41391, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(55375, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(55375, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Tempered Titansteel Treads -- 55376
	AddRecipe(55376, 440, 41392, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(55376, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(55376, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Brilliant Titansteel Treads -- 55377
	AddRecipe(55377, 440, 41394, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(55377, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(55377, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Socket Bracer -- 55628
	AddRecipe(55628, 400, nil, Q.COMMON, V.WOTLK, 400, 400, 400, 400)
	self:AddRecipeFlags(55628, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(55628, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Socket Gloves -- 55641
	AddRecipe(55641, 400, nil, Q.COMMON, V.WOTLK, 400, 400, 400, 400)
	self:AddRecipeFlags(55641, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(55641, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Eternal Belt Buckle -- 55656
	AddRecipe(55656, 415, 41611, Q.COMMON, V.WOTLK, 415, 420, 425, 430)
	self:AddRecipeFlags(55656, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(55656, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Titanium Rod -- 55732
	AddRecipe(55732, 420, 41745, Q.COMMON, V.WOTLK, 420, 425, 430, 435)
	self:AddRecipeFlags(55732, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(55732, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cobalt Bracers -- 55834
	AddRecipe(55834, 360, 41974, Q.COMMON, V.WOTLK, 360, 370, 375, 380)
	self:AddRecipeFlags(55834, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(55834, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cobalt Gauntlets -- 55835
	AddRecipe(55835, 370, 41975, Q.COMMON, V.WOTLK, 370, 380, 385, 390)
	self:AddRecipeFlags(55835, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(55835, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Titanium Weapon Chain -- 55839
	AddRecipe(55839, 420, 41976, Q.COMMON, V.WOTLK, 420, 425, 430, 435)
	self:AddRecipeFlags(55839, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(55839, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Titansteel Shanker -- 56234
	AddRecipe(56234, 440, 42435, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(56234, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.ONE_HAND, F.DAGGER)
	self:AddRecipeTrainer(56234, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cudgel of Saronite Justice -- 56280
	AddRecipe(56280, 410, 42443, Q.COMMON, V.WOTLK, 410, 415, 420, 425)
	self:AddRecipeFlags(56280, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.ONE_HAND, F.MACE)
	self:AddRecipeTrainer(56280, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Titanium Shield Spike -- 56357
	AddRecipe(56357, 420, 42500, Q.COMMON, V.WOTLK, 420, 425, 430, 435)
	self:AddRecipeFlags(56357, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.SHIELD)
	self:AddRecipeTrainer(56357, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Titansteel Shield Wall -- 56400
	AddRecipe(56400, 440, 42508, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(56400, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.SHIELD, F.ONE_HAND)
	self:AddRecipeTrainer(56400, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Ornate Saronite Bracers -- 56549
	AddRecipe(56549, 420, 42723, Q.COMMON, V.WOTLK, 420, 425, 430, 435)
	self:AddRecipeFlags(56549, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(56549, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Ornate Saronite Pauldrons -- 56550
	AddRecipe(56550, 420, 42727, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(56550, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(56550, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Ornate Saronite Waistguard -- 56551
	AddRecipe(56551, 420, 42729, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(56551, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(56551, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Ornate Saronite Walkers -- 56552
	AddRecipe(56552, 420, 42730, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(56552, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(56552, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Ornate Saronite Gauntlets -- 56553
	AddRecipe(56553, 420, 42724, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(56553, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(56553, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Ornate Saronite Legplates -- 56554
	AddRecipe(56554, 425, 42726, Q.COMMON, V.WOTLK, 425, 435, 445, 455)
	self:AddRecipeFlags(56554, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(56554, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Ornate Saronite Hauberk -- 56555
	AddRecipe(56555, 425, 42725, Q.COMMON, V.WOTLK, 425, 435, 445, 455)
	self:AddRecipeFlags(56555, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(56555, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Ornate Saronite Skullshield -- 56556
	AddRecipe(56556, 425, 42728, Q.COMMON, V.WOTLK, 425, 435, 445, 455)
	self:AddRecipeFlags(56556, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(56556, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Cobalt Skeleton Key -- 59405
	AddRecipe(59405, 350, 43854, Q.COMMON, V.WOTLK, 350, 360, 365, 370)
	self:AddRecipeFlags(59405, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59405, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Titanium Skeleton Key -- 59406
	AddRecipe(59406, 430, 43853, Q.COMMON, V.WOTLK, 430, 435, 440, 445)
	self:AddRecipeFlags(59406, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59406, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Brilliant Saronite Belt -- 59436
	AddRecipe(59436, 395, 43860, Q.COMMON, V.WOTLK, 395, 400, 405, 410)
	self:AddRecipeFlags(59436, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(59436, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Brilliant Saronite Bracers -- 59438
	AddRecipe(59438, 400, 43864, Q.COMMON, V.WOTLK, 400, 405, 410, 415)
	self:AddRecipeFlags(59438, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(59438, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Brilliant Saronite Pauldrons -- 59440
	AddRecipe(59440, 405, 43865, Q.COMMON, V.WOTLK, 405, 410, 415, 420)
	self:AddRecipeFlags(59440, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(59440, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Brilliant Saronite Helm -- 59441
	AddRecipe(59441, 415, 43870, Q.COMMON, V.WOTLK, 415, 420, 425, 430)
	self:AddRecipeFlags(59441, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeTrainer(59441, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Saronite Spellblade -- 59442
	AddRecipe(59442, 410, 43871, Q.COMMON, V.WOTLK, 410, 415, 420, 425)
	self:AddRecipeFlags(59442, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.ONE_HAND, F.SWORD)
	self:AddRecipeTrainer(59442, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Icebane Chestguard -- 61008
	AddRecipe(61008, 425, 43586, Q.COMMON, V.WOTLK, 425, 435, 445, 455)
	self:AddRecipeFlags(61008, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeTrainer(61008, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Icebane Girdle -- 61009
	AddRecipe(61009, 420, 43587, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(61009, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeTrainer(61009, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Icebane Treads -- 61010
	AddRecipe(61010, 420, 43588, Q.COMMON, V.WOTLK, 420, 430, 440, 450)
	self:AddRecipeFlags(61010, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeTrainer(61010, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Titanium Plating -- 62202
	AddRecipe(62202, 450, 44936, Q.RARE, V.WOTLK, 450, 455, 460, 465)
	self:AddRecipeFlags(62202, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.SHIELD, F.WRATHCOMMON1)
	self:AddRecipeRepVendor(62202, FAC.HORDE_EXPEDITION, REP.EXALTED, 32565, 32774)
	self:AddRecipeRepVendor(62202, FAC.ALLIANCE_VANGUARD, REP.EXALTED, 32564, 32773)

	-- Titansteel Spellblade -- 63182
	AddRecipe(63182, 440, 45085, Q.COMMON, V.WOTLK, 440, 450, 460, 470)
	self:AddRecipeFlags(63182, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.ONE_HAND, F.DAGGER)
	self:AddRecipeTrainer(63182, 33591, 26988, 26981, 27034, 26952, 26904, 28694, 29924, 26564)

	-- Belt of the Titans -- 63187
	AddRecipe(63187, 450, 45088, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
	self:AddRecipeFlags(63187, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeAcquire(63187, A.CUSTOM, 39)

	-- Battlelord's Plate Boots -- 63188
	AddRecipe(63188, 450, 45089, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
	self:AddRecipeFlags(63188, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.DPS, F.PLATE)
	self:AddRecipeAcquire(63188, A.CUSTOM, 39)

	-- Plate Girdle of Righteousness -- 63189
	AddRecipe(63189, 450, 45090, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
	self:AddRecipeFlags(63189, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeAcquire(63189, A.CUSTOM, 39)

	-- Treads of Destiny -- 63190
	AddRecipe(63190, 450, 45091, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
	self:AddRecipeFlags(63190, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.PLATE)
	self:AddRecipeAcquire(63190, A.CUSTOM, 39)

	-- Indestructible Plate Girdle -- 63191
	AddRecipe(63191, 450, 45092, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
	self:AddRecipeFlags(63191, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.TANK, F.PLATE)
	self:AddRecipeAcquire(63191, A.CUSTOM, 39)

	-- Spiked Deathdealers -- 63192
	AddRecipe(63192, 450, 45093, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
	self:AddRecipeFlags(63192, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.TANK, F.PLATE)
	self:AddRecipeAcquire(63192, A.CUSTOM, 39)

	-- Puresteel Legplates -- 70562
	AddRecipe(70562, 450, 49902, Q.EPIC, V.WOTLK, 450, 475, 487, 500)
	self:AddRecipeFlags(70562, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE, F.ASHEN_VERDICT)
	self:AddRecipeRepVendor(70562, FAC.ASHEN_VERDICT, REP.REVERED, 37687)

	-- Protectors of Life -- 70563
	AddRecipe(70563, 450, 49905, Q.EPIC, V.WOTLK, 450, 475, 487, 500)
	self:AddRecipeFlags(70563, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.PLATE, F.ASHEN_VERDICT)
	self:AddRecipeRepVendor(70563, FAC.ASHEN_VERDICT, REP.HONORED, 37687)

	-- Legplates of Painful Death -- 70565
	AddRecipe(70565, 450, 49903, Q.EPIC, V.WOTLK, 450, 475, 487, 500)
	self:AddRecipeFlags(70565, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.PLATE, F.ASHEN_VERDICT)
	self:AddRecipeRepVendor(70565, FAC.ASHEN_VERDICT, REP.REVERED, 37687)

	-- Hellfrozen Bonegrinders -- 70566
	AddRecipe(70566, 450, 49906, Q.EPIC, V.WOTLK, 450, 475, 487, 500)
	self:AddRecipeFlags(70566, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.DPS, F.PLATE, F.ASHEN_VERDICT)
	self:AddRecipeRepVendor(70566, FAC.ASHEN_VERDICT, REP.HONORED, 37687)

	-- Pillars of Might -- 70567
	AddRecipe(70567, 450, 49904, Q.EPIC, V.WOTLK, 450, 475, 487, 500)
	self:AddRecipeFlags(70567, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ASHEN_VERDICT)
	self:AddRecipeRepVendor(70567, FAC.ASHEN_VERDICT, REP.REVERED, 37687)

	-- Boots of Kingly Upheaval -- 70568
	AddRecipe(70568, 450, 49907, Q.EPIC, V.WOTLK, 450, 475, 487, 500)
	self:AddRecipeFlags(70568, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.TANK, F.PLATE, F.ASHEN_VERDICT)
	self:AddRecipeRepVendor(70568, FAC.ASHEN_VERDICT, REP.HONORED, 37687)

	-- Some recipes are only availible to specific factions.
	-- We only add the faction specific recipes if the user is part of that faction
	local BFAC = LibStub("LibBabble-Faction-3.0"):GetLookupTable()
	local _,faction = UnitFactionGroup("player")

	if faction == BFAC["Alliance"] then

		-- Breastplate of the White Knight (Ally) -- 67091
		AddRecipe(67091, 450, 47591, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
		self:AddRecipeFlags(67091, F.ALLIANCE, F.RAID, F.IBOE, F.RBOE, F.TANK, F.PLATE)
		self:AddRecipeAcquire(67091, A.CUSTOM, 42)

		-- Saronite Swordbreakers (Ally) -- 67092
		AddRecipe(67092, 450, 47570, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
		self:AddRecipeFlags(67092, F.ALLIANCE, F.RAID, F.IBOE, F.RBOE, F.TANK, F.PLATE)
		self:AddRecipeAcquire(67092, A.CUSTOM, 42)

		-- Titanium Razorplate (Ally) -- 67093
		AddRecipe(67093, 450, 47589, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
		self:AddRecipeFlags(67093, F.ALLIANCE, F.RAID, F.IBOE, F.RBOE, F.DPS, F.PLATE)
		self:AddRecipeAcquire(67093, A.CUSTOM, 42)

		-- Titanium Spikeguards (Ally) -- 67094
		AddRecipe(67094, 450, 47572, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
		self:AddRecipeFlags(67094, F.ALLIANCE, F.RAID, F.IBOE, F.RBOE, F.DPS, F.PLATE)
		self:AddRecipeAcquire(67094, A.CUSTOM, 42)

		-- Sunforged Breastplate (Ally) -- 67095
		AddRecipe(67095, 450, 47593, Q.EPIC, V.WOTLK, 450, 460, 467, 475)
		self:AddRecipeFlags(67095, F.ALLIANCE, F.RAID, F.IBOE, F.RBOE, F.HEALER, F.PLATE)
		self:AddRecipeAcquire(67095, A.CUSTOM, 42)

		-- Sunforged Bracers (Ally) -- 67096
		AddRecipe(67096, 450, 47574, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
		self:AddRecipeFlags(67096, F.ALLIANCE, F.RAID, F.IBOE, F.RBOE, F.HEALER, F.PLATE)
		self:AddRecipeAcquire(67096, A.CUSTOM, 42)

	elseif faction == BFAC["Horde"] then

		-- Breastplate of the White Knight -- 67130
		AddRecipe(67130, 450, 47592, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
		self:AddRecipeFlags(67130, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.TANK, F.PLATE)
		self:AddRecipeAcquire(67130, A.CUSTOM, 42)

		-- Saronite Swordbreakers -- 67131
		AddRecipe(67131, 450, 47571, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
		self:AddRecipeFlags(67131, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.TANK, F.PLATE)
		self:AddRecipeAcquire(67131, A.CUSTOM, 42)

		-- Titanium Razorplate -- 67132
		AddRecipe(67132, 450, 47590, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
		self:AddRecipeFlags(67132, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.DPS, F.PLATE)
		self:AddRecipeAcquire(67132, A.CUSTOM, 42)

		-- Titanium Spikeguards -- 67133
		AddRecipe(67133, 450, 47573, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
		self:AddRecipeFlags(67133, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.DPS, F.PLATE)
		self:AddRecipeAcquire(67133, A.CUSTOM, 42)

		-- Sunforged Breastplate -- 67134
		AddRecipe(67134, 450, 47594, Q.EPIC, V.WOTLK, 450, 460, 467, 475)
		self:AddRecipeFlags(67134, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.PLATE)
		self:AddRecipeAcquire(67134, A.CUSTOM, 42)

		-- Sunforged Bracers -- 67135
		AddRecipe(67135, 450, 47575, Q.EPIC, V.WOTLK, 450, 455, 465, 475)
		self:AddRecipeFlags(67135, F.HORDE, F.RAID, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.PLATE)
		self:AddRecipeAcquire(67135, A.CUSTOM, 42)
	end
	return num_recipes
end
