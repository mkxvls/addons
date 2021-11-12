--[[
************************************************************************
Inscription.lua
Inscription data for all of Ackis Recipe List
************************************************************************
File date: 2010-07-23T08:23:04Z
File revision: @file-revision@
Project revision: @project-revision@
Project version: v2.01
************************************************************************
Format:

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
local function AddRecipe(spell_id, skill_level, item_id, quality, genesis, optimal_level, medium_level, easy_level, trivial_level)
	num_recipes = num_recipes + 1
	addon:AddRecipe(spell_id, skill_level, item_id, quality, 45357, nil, genesis, optimal_level, medium_level, easy_level, trivial_level)
end

function addon:InitInscription()
	if initialized then
		return num_recipes
	end
	initialized = true

	-- Scroll of Stamina -- 45382
	AddRecipe(45382, 1, 1180, Q.COMMON, V.WOTLK, 1, 35, 40, 45)
	self:AddRecipeFlags(45382, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(45382, A.CUSTOM, 8)

	-- Scroll of Intellect -- 48114
	AddRecipe(48114, 1, 955, Q.COMMON, V.WOTLK, 1, 35, 40, 45)
	self:AddRecipeFlags(48114, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(48114, A.CUSTOM, 8)

	-- Scroll of Spirit -- 48116
	AddRecipe(48116, 1, 1181, Q.COMMON, V.WOTLK, 1, 35, 40, 45)
	self:AddRecipeFlags(48116, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(48116, A.CUSTOM, 8)

	-- Glyph of Entangling Roots -- 48121
	AddRecipe(48121, 100, 40924, Q.COMMON, V.WOTLK, 100, 105, 110, 115)
	self:AddRecipeFlags(48121, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(48121, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Mysterious Tarot -- 48247
	AddRecipe(48247, 110, 37168, Q.COMMON, V.WOTLK, 110, 125, 137, 150)
	self:AddRecipeFlags(48247, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(48247, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Recall -- 48248
	AddRecipe(48248, 35, 37118, Q.COMMON, V.WOTLK, 35, 60, 67, 75)
	self:AddRecipeFlags(48248, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(48248, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Intellect II -- 50598
	AddRecipe(50598, 75, 2290, Q.COMMON, V.WOTLK, 75, 75, 80, 85)
	self:AddRecipeFlags(50598, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50598, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Intellect III -- 50599
	AddRecipe(50599, 165, 4419, Q.COMMON, V.WOTLK, 165, 170, 175, 180)
	self:AddRecipeFlags(50599, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50599, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Intellect IV -- 50600
	AddRecipe(50600, 215, 10308, Q.COMMON, V.WOTLK, 215, 220, 225, 230)
	self:AddRecipeFlags(50600, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50600, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Intellect V -- 50601
	AddRecipe(50601, 260, 27499, Q.COMMON, V.WOTLK, 260, 265, 270, 275)
	self:AddRecipeFlags(50601, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50601, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Intellect VI -- 50602
	AddRecipe(50602, 310, 33458, Q.COMMON, V.WOTLK, 310, 310, 315, 320)
	self:AddRecipeFlags(50602, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50602, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Intellect VII -- 50603
	AddRecipe(50603, 360, 37091, Q.COMMON, V.WOTLK, 360, 365, 370, 375)
	self:AddRecipeFlags(50603, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50603, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Scroll of Intellect VIII -- 50604
	AddRecipe(50604, 410, 37092, Q.COMMON, V.WOTLK, 410, 415, 420, 425)
	self:AddRecipeFlags(50604, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50604, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Scroll of Spirit II -- 50605
	AddRecipe(50605, 75, 1712, Q.COMMON, V.WOTLK, 75, 75, 80, 85)
	self:AddRecipeFlags(50605, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(50605, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Spirit III -- 50606
	AddRecipe(50606, 160, 4424, Q.COMMON, V.WOTLK, 160, 165, 170, 175)
	self:AddRecipeFlags(50606, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(50606, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Spirit IV -- 50607
	AddRecipe(50607, 210, 10306, Q.COMMON, V.WOTLK, 210, 215, 220, 225)
	self:AddRecipeFlags(50607, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(50607, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Spirit V -- 50608
	AddRecipe(50608, 255, 27501, Q.COMMON, V.WOTLK, 255, 260, 265, 270)
	self:AddRecipeFlags(50608, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(50608, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Spirit VI -- 50609
	AddRecipe(50609, 295, 33460, Q.COMMON, V.WOTLK, 295, 305, 310, 315)
	self:AddRecipeFlags(50609, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(50609, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Spirit VII -- 50610
	AddRecipe(50610, 355, 37097, Q.COMMON, V.WOTLK, 355, 360, 365, 370)
	self:AddRecipeFlags(50610, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(50610, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Scroll of Spirit VIII -- 50611
	AddRecipe(50611, 405, 37098, Q.COMMON, V.WOTLK, 405, 410, 415, 420)
	self:AddRecipeFlags(50611, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(50611, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Scroll of Stamina II -- 50612
	AddRecipe(50612, 75, 1711, Q.COMMON, V.WOTLK, 75, 75, 80, 85)
	self:AddRecipeFlags(50612, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50612, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Stamina III -- 50614
	AddRecipe(50614, 155, 4422, Q.COMMON, V.WOTLK, 155, 160, 165, 170)
	self:AddRecipeFlags(50614, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50614, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Stamina IV -- 50616
	AddRecipe(50616, 205, 10307, Q.COMMON, V.WOTLK, 205, 210, 215, 220)
	self:AddRecipeFlags(50616, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50616, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Stamina V -- 50617
	AddRecipe(50617, 250, 27502, Q.COMMON, V.WOTLK, 250, 255, 260, 265)
	self:AddRecipeFlags(50617, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50617, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Stamina VI -- 50618
	AddRecipe(50618, 290, 33461, Q.COMMON, V.WOTLK, 290, 300, 305, 310)
	self:AddRecipeFlags(50618, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50618, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Stamina VII -- 50619
	AddRecipe(50619, 350, 37093, Q.COMMON, V.WOTLK, 350, 355, 360, 365)
	self:AddRecipeFlags(50619, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50619, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Scroll of Stamina VIII -- 50620
	AddRecipe(50620, 400, 37094, Q.COMMON, V.WOTLK, 400, 405, 410, 415)
	self:AddRecipeFlags(50620, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(50620, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Ivory Ink -- 52738
	AddRecipe(52738, 1, 37101, Q.COMMON, V.WOTLK, 1, 15, 22, 30)
	self:AddRecipeFlags(52738, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(52738, A.CUSTOM, 8)

	-- Armor Vellum -- 52739
	AddRecipe(52739, 35, 38682, Q.COMMON, V.WOTLK, 35, 75, 87, 100)
	self:AddRecipeFlags(52739, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(52739, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Weapon Vellum -- 52840
	AddRecipe(52840, 75, 39349, Q.COMMON, V.WOTLK, 75, 100, 112, 125)
	self:AddRecipeFlags(52840, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(52840, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Moonglow Ink -- 52843
	AddRecipe(52843, 35, 39469, Q.COMMON, V.WOTLK, 35, 45, 60, 75)
	self:AddRecipeFlags(52843, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(52843, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Midnight Ink -- 53462
	AddRecipe(53462, 75, 39774, Q.COMMON, V.WOTLK, 75, 75, 77, 80)
	self:AddRecipeFlags(53462, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(53462, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Frenzied Regeneration -- 56943
	AddRecipe(56943, 350, 40896, Q.COMMON, V.WOTLK, 350, 355, 360, 365)
	self:AddRecipeFlags(56943, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56943, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Growl -- 56944
	AddRecipe(56944, 385, 40899, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56944, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(56944, A.CUSTOM, 15)

	-- Glyph of Healing Touch -- 56945
	AddRecipe(56945, 115, 40914, Q.COMMON, V.WOTLK, 115, 120, 125, 130)
	self:AddRecipeFlags(56945, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeTrainer(56945, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Hurricane -- 56946
	AddRecipe(56946, 385, 40920, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56946, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(56946, A.CUSTOM, 15)

	-- Glyph of Innervate -- 56947
	AddRecipe(56947, 385, 40908, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56947, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(56947, A.CUSTOM, 15)

	-- Glyph of Insect Swarm -- 56948
	AddRecipe(56948, 150, 40919, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(56948, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56948, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Lifebloom -- 56949
	AddRecipe(56949, 385, 40915, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56949, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeAcquire(56949, A.CUSTOM, 15)

	-- Glyph of Mangle -- 56950
	AddRecipe(56950, 385, 40900, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56950, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(56950, A.CUSTOM, 15)

	-- Glyph of Moonfire -- 56951
	AddRecipe(56951, 130, 40923, Q.COMMON, V.WOTLK, 130, 135, 140, 145)
	self:AddRecipeFlags(56951, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56951, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Rake -- 56952
	AddRecipe(56952, 310, 40903, Q.COMMON, V.WOTLK, 310, 315, 320, 325)
	self:AddRecipeFlags(56952, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56952, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Rebirth -- 56953
	AddRecipe(56953, 170, 40909, Q.COMMON, V.WOTLK, 170, 175, 180, 185)
	self:AddRecipeFlags(56953, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56953, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Regrowth -- 56954
	AddRecipe(56954, 385, 40912, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56954, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeAcquire(56954, A.CUSTOM, 15)

	-- Glyph of Rejuvenation -- 56955
	AddRecipe(56955, 80, 40913, Q.COMMON, V.WOTLK, 80, 90, 100, 110)
	self:AddRecipeFlags(56955, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeTrainer(56955, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Rip -- 56956
	AddRecipe(56956, 200, 40902, Q.COMMON, V.WOTLK, 200, 205, 210, 215)
	self:AddRecipeFlags(56956, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56956, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Shred -- 56957
	AddRecipe(56957, 260, 40901, Q.COMMON, V.WOTLK, 260, 265, 270, 275)
	self:AddRecipeFlags(56957, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56957, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Starfall -- 56958
	AddRecipe(56958, 385, 40921, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56958, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(56958, A.CUSTOM, 15)

	-- Glyph of Starfire -- 56959
	AddRecipe(56959, 220, 40916, Q.COMMON, V.WOTLK, 220, 225, 230, 235)
	self:AddRecipeFlags(56959, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56959, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Swiftmend -- 56960
	AddRecipe(56960, 385, 40906, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56960, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeAcquire(56960, A.CUSTOM, 15)

	-- Glyph of Maul -- 56961
	AddRecipe(56961, 90, 40897, Q.COMMON, V.WOTLK, 90, 100, 110, 120)
	self:AddRecipeFlags(56961, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56961, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Wrath -- 56963
	AddRecipe(56963, 85, 40922, Q.COMMON, V.WOTLK, 85, 95, 105, 115)
	self:AddRecipeFlags(56963, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56963, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Typhoon -- 56965
	AddRecipe(56965, 310, 44955, Q.COMMON, V.WOTLK, 310, 320, 325, 330)
	self:AddRecipeFlags(56965, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(56965, A.CUSTOM, 14)

	-- Glyph of Arcane Explosion -- 56968
	AddRecipe(56968, 100, 42734, Q.COMMON, V.WOTLK, 100, 105, 110, 115)
	self:AddRecipeFlags(56968, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56968, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Arcane Missiles -- 56971
	AddRecipe(56971, 115, 42735, Q.COMMON, V.WOTLK, 115, 120, 125, 130)
	self:AddRecipeFlags(56971, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56971, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Arcane Power -- 56972
	AddRecipe(56972, 335, 42736, Q.COMMON, V.WOTLK, 335, 340, 345, 350)
	self:AddRecipeFlags(56972, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56972, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Blink -- 56973
	AddRecipe(56973, 130, 42737, Q.COMMON, V.WOTLK, 130, 135, 140, 145)
	self:AddRecipeFlags(56973, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56973, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Evocation -- 56974
	AddRecipe(56974, 155, 42738, Q.COMMON, V.WOTLK, 155, 160, 165, 170)
	self:AddRecipeFlags(56974, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56974, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Fireball -- 56975
	AddRecipe(56975, 385, 42739, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56975, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(56975, A.CUSTOM, 15)

	-- Glyph of Frost Nova -- 56976
	AddRecipe(56976, 80, 42741, Q.COMMON, V.WOTLK, 80, 90, 100, 110)
	self:AddRecipeFlags(56976, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56976, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Frostbolt -- 56977
	AddRecipe(56977, 385, 42742, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56977, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(56977, A.CUSTOM, 15)

	-- Glyph of Ice Armor -- 56978
	AddRecipe(56978, 90, 42743, Q.COMMON, V.WOTLK, 90, 100, 110, 120)
	self:AddRecipeFlags(56978, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56978, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Ice Block -- 56979
	AddRecipe(56979, 225, 42744, Q.COMMON, V.WOTLK, 225, 230, 235, 240)
	self:AddRecipeFlags(56979, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56979, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 28702, 26959, 30710, 30711, 30715, 33679, 26977, 30713, 33615)

	-- Glyph of Ice Lance -- 56980
	AddRecipe(56980, 375, 42745, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(56980, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56980, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Glyph of Icy Veins -- 56981
	AddRecipe(56981, 175, 42746, Q.COMMON, V.WOTLK, 175, 180, 185, 190)
	self:AddRecipeFlags(56981, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56981, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Scorch -- 56982
	AddRecipe(56982, 205, 42747, Q.COMMON, V.WOTLK, 205, 210, 215, 220)
	self:AddRecipeFlags(56982, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56982, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Invisibility -- 56983
	AddRecipe(56983, 385, 42748, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56983, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(56983, A.CUSTOM, 15)

	-- Glyph of Mage Armor -- 56984
	AddRecipe(56984, 325, 42749, Q.COMMON, V.WOTLK, 325, 330, 335, 340)
	self:AddRecipeFlags(56984, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56984, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Mana Gem -- 56985
	AddRecipe(56985, 280, 42750, Q.COMMON, V.WOTLK, 280, 285, 290, 295)
	self:AddRecipeFlags(56985, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56985, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Molten Armor -- 56986
	AddRecipe(56986, 385, 42751, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56986, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(56986, A.CUSTOM, 15)

	-- Glyph of Polymorph -- 56987
	AddRecipe(56987, 400, 42752, Q.COMMON, V.WOTLK, 400, 400, 400, 405)
	self:AddRecipeFlags(56987, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(56987, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Glyph of Remove Curse -- 56988
	AddRecipe(56988, 385, 42753, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56988, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(56988, A.CUSTOM, 15)

	-- Glyph of Water Elemental -- 56989
	AddRecipe(56989, 385, 42754, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56989, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(56989, A.CUSTOM, 15)

	-- Glyph of Blast Wave -- 56990
	AddRecipe(56990, 310, 44920, Q.COMMON, V.WOTLK, 310, 355, 360, 365)
	self:AddRecipeFlags(56990, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(56990, A.CUSTOM, 14)

	-- Glyph of Arcane Blast -- 56991
	AddRecipe(56991, 315, 44955, Q.COMMON, V.WOTLK, 315, 320, 325, 330)
	self:AddRecipeFlags(56991, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56991, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Aimed Shot -- 56994
	AddRecipe(56994, 175, 42897, Q.COMMON, V.WOTLK, 175, 180, 185, 190)
	self:AddRecipeFlags(56994, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(56994, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Arcane Shot -- 56995
	AddRecipe(56995, 100, 42898, Q.COMMON, V.WOTLK, 100, 105, 110, 115)
	self:AddRecipeFlags(56995, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(56995, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of the Beast -- 56996
	AddRecipe(56996, 385, 42899, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56996, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(56996, A.CUSTOM, 15)

	-- Glyph of Mending -- 56997
	AddRecipe(56997, 115, 42900, Q.COMMON, V.WOTLK, 115, 120, 125, 130)
	self:AddRecipeFlags(56997, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(56997, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Aspect of the Viper -- 56998
	AddRecipe(56998, 385, 42901, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56998, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(56998, A.CUSTOM, 15)

	-- Glyph of Bestial Wrath -- 56999
	AddRecipe(56999, 385, 42902, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(56999, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(56999, A.CUSTOM, 15)

	-- Glyph of Deterrence -- 57000
	AddRecipe(57000, 200, 42903, Q.COMMON, V.WOTLK, 200, 205, 210, 215)
	self:AddRecipeFlags(57000, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57000, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Disengage -- 57001
	AddRecipe(57001, 225, 42904, Q.COMMON, V.WOTLK, 225, 230, 235, 240)
	self:AddRecipeFlags(57001, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57001, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Freezing Trap -- 57002
	AddRecipe(57002, 260, 42905, Q.COMMON, V.WOTLK, 260, 265, 270, 275)
	self:AddRecipeFlags(57002, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57002, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Frost Trap -- 57003
	AddRecipe(57003, 350, 42906, Q.COMMON, V.WOTLK, 350, 355, 360, 365)
	self:AddRecipeFlags(57003, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57003, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Hunter's Mark -- 57004
	AddRecipe(57004, 80, 42907, Q.COMMON, V.WOTLK, 80, 90, 100, 110)
	self:AddRecipeFlags(57004, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57004, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Immolation Trap -- 57005
	AddRecipe(57005, 130, 42908, Q.COMMON, V.WOTLK, 130, 135, 140, 145)
	self:AddRecipeFlags(57005, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57005, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of the Hawk -- 57006
	AddRecipe(57006, 375, 42909, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(57006, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57006, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Glyph of Multi-Shot -- 57007
	AddRecipe(57007, 150, 42910, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(57007, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57007, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 28702, 26959, 30710, 30711, 30715, 33679, 26977, 30713, 33615)

	-- Glyph of Rapid Fire -- 57008
	AddRecipe(57008, 315, 42911, Q.COMMON, V.WOTLK, 315, 320, 325, 330)
	self:AddRecipeFlags(57008, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57008, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Serpent Sting -- 57009
	AddRecipe(57009, 90, 42912, Q.COMMON, V.WOTLK, 90, 100, 110, 120)
	self:AddRecipeFlags(57009, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57009, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Snake Trap -- 57010
	AddRecipe(57010, 385, 42913, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57010, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57010, A.CUSTOM, 15)

	-- Glyph of Steady Shot -- 57011
	AddRecipe(57011, 385, 42914, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57011, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57011, A.CUSTOM, 15)

	-- Glyph of Trueshot Aura -- 57012
	AddRecipe(57012, 385, 42915, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57012, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57012, A.CUSTOM, 15)

	-- Glyph of Volley -- 57013
	AddRecipe(57013, 385, 42916, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57013, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57013, A.CUSTOM, 15)

	-- Glyph of Wyvern Sting -- 57014
	AddRecipe(57014, 385, 42917, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57014, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57014, A.CUSTOM, 15)

	-- Glyph of Avenger's Shield -- 57019
	AddRecipe(57019, 385, 41101, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57019, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57019, A.CUSTOM, 15)

	-- Glyph of Cleansing -- 57020
	AddRecipe(57020, 180, 41104, Q.COMMON, V.WOTLK, 180, 185, 190, 195)
	self:AddRecipeFlags(57020, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57020, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Avenging Wrath -- 57021
	AddRecipe(57021, 385, 41107, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57021, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57021, A.CUSTOM, 15)

	-- Glyph of Spiritual Attunement -- 57022
	AddRecipe(57022, 80, 41096, Q.COMMON, V.WOTLK, 80, 90, 100, 110)
	self:AddRecipeFlags(57022, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(57022, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Consecration -- 57023
	AddRecipe(57023, 205, 41099, Q.COMMON, V.WOTLK, 205, 210, 215, 220)
	self:AddRecipeFlags(57023, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57023, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Crusader Strike -- 57024
	AddRecipe(57024, 230, 41098, Q.COMMON, V.WOTLK, 230, 235, 240, 245)
	self:AddRecipeFlags(57024, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57024, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Exorcism -- 57025
	AddRecipe(57025, 265, 41103, Q.COMMON, V.WOTLK, 265, 270, 275, 280)
	self:AddRecipeFlags(57025, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57025, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Flash of Light -- 57026
	AddRecipe(57026, 300, 41105, Q.COMMON, V.WOTLK, 300, 305, 310, 315)
	self:AddRecipeFlags(57026, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeTrainer(57026, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Hammer of Justice -- 57027
	AddRecipe(57027, 90, 41095, Q.COMMON, V.WOTLK, 90, 100, 110, 120)
	self:AddRecipeFlags(57027, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57027, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Hammer of Wrath -- 57028
	AddRecipe(57028, 385, 41097, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57028, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57028, A.CUSTOM, 15)

	-- Glyph of Holy Light -- 57029
	AddRecipe(57029, 105, 41106, Q.COMMON, V.WOTLK, 105, 110, 115, 120)
	self:AddRecipeFlags(57029, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeTrainer(57029, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Judgement -- 57030
	AddRecipe(57030, 120, 41092, Q.COMMON, V.WOTLK, 120, 125, 130, 135)
	self:AddRecipeFlags(57030, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57030, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Divinity -- 57031
	AddRecipe(57031, 135, 41108, Q.COMMON, V.WOTLK, 135, 140, 145, 150)
	self:AddRecipeFlags(57031, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57031, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Righteous Defense -- 57032
	AddRecipe(57032, 155, 41100, Q.COMMON, V.WOTLK, 155, 160, 165, 170)
	self:AddRecipeFlags(57032, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP, F.TANK)
	self:AddRecipeTrainer(57032, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Seal of Command -- 57033
	AddRecipe(57033, 335, 41094, Q.COMMON, V.WOTLK, 335, 340, 345, 350)
	self:AddRecipeFlags(57033, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57033, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Seal of Light -- 57034
	AddRecipe(57034, 385, 41110, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57034, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57034, A.CUSTOM, 15)

	-- Glyph of Seal of Wisdom -- 57035
	AddRecipe(57035, 385, 41109, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57035, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57035, A.CUSTOM, 15)

	-- Glyph of Turn Evil -- 57036
	AddRecipe(57036, 375, 41102, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(57036, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57036, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Glyph of Adrenaline Rush -- 57112
	AddRecipe(57112, 385, 42954, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57112, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57112, A.CUSTOM, 15)

	-- Glyph of Ambush -- 57113
	AddRecipe(57113, 340, 42955, Q.COMMON, V.WOTLK, 340, 345, 350, 355)
	self:AddRecipeFlags(57113, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57113, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Backstab -- 57114
	AddRecipe(57114, 80, 42956, Q.COMMON, V.WOTLK, 80, 90, 100, 110)
	self:AddRecipeFlags(57114, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57114, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Blade Flurry -- 57115
	AddRecipe(57115, 385, 42957, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57115, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57115, A.CUSTOM, 15)

	-- Glyph of Crippling Poison -- 57116
	AddRecipe(57116, 385, 42958, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57116, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57116, A.CUSTOM, 15)

	-- Glyph of Deadly Throw -- 57117
	AddRecipe(57117, 385, 42959, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57117, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57117, A.CUSTOM, 15)

	-- Glyph of Evasion -- 57119
	AddRecipe(57119, 95, 42960, Q.COMMON, V.WOTLK, 95, 105, 115, 125)
	self:AddRecipeFlags(57119, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57119, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Eviscerate -- 57120
	AddRecipe(57120, 105, 42961, Q.COMMON, V.WOTLK, 105, 110, 115, 120)
	self:AddRecipeFlags(57120, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57120, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Expose Armor -- 57121
	AddRecipe(57121, 120, 42962, Q.COMMON, V.WOTLK, 120, 125, 130, 135)
	self:AddRecipeFlags(57121, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57121, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Feint -- 57122
	AddRecipe(57122, 305, 42963, Q.COMMON, V.WOTLK, 305, 310, 315, 320)
	self:AddRecipeFlags(57122, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57122, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Garrote -- 57123
	AddRecipe(57123, 135, 42964, Q.COMMON, V.WOTLK, 135, 140, 145, 150)
	self:AddRecipeFlags(57123, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57123, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Ghostly Strike -- 57124
	AddRecipe(57124, 385, 42965, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57124, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57124, A.CUSTOM, 15)

	-- Glyph of Gouge -- 57125
	AddRecipe(57125, 160, 42966, Q.COMMON, V.WOTLK, 160, 165, 170, 175)
	self:AddRecipeFlags(57125, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57125, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Hemorrhage -- 57126
	AddRecipe(57126, 385, 42967, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57126, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57126, A.CUSTOM, 15)

	-- Glyph of Preparation -- 57127
	AddRecipe(57127, 385, 42968, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57127, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57127, A.CUSTOM, 15)

	-- Glyph of Rupture -- 57128
	AddRecipe(57128, 385, 42969, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57128, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57128, A.CUSTOM, 15)

	-- Glyph of Sap -- 57129
	AddRecipe(57129, 185, 42970, Q.COMMON, V.WOTLK, 185, 190, 195, 200)
	self:AddRecipeFlags(57129, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57129, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Vigor -- 57130
	AddRecipe(57130, 385, 42971, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57130, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(57130, A.CUSTOM, 15)

	-- Glyph of Sinister Strike -- 57131
	AddRecipe(57131, 210, 42972, Q.COMMON, V.WOTLK, 210, 215, 220, 225)
	self:AddRecipeFlags(57131, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57131, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Slice and Dice -- 57132
	AddRecipe(57132, 235, 42973, Q.COMMON, V.WOTLK, 235, 240, 245, 250)
	self:AddRecipeFlags(57132, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57132, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Sprint -- 57133
	AddRecipe(57133, 285, 42974, Q.COMMON, V.WOTLK, 285, 290, 295, 300)
	self:AddRecipeFlags(57133, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57133, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Barbaric Insults -- 57151
	AddRecipe(57151, 220, 43420, Q.COMMON, V.WOTLK, 220, 225, 230, 235)
	self:AddRecipeFlags(57151, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57151, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Blocking -- 57152
	AddRecipe(57152, 385, 43425, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57152, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP, F.TANK)
	self:AddRecipeAcquire(57152, A.CUSTOM, 15)

	-- Glyph of Bloodthirst -- 57153
	AddRecipe(57153, 385, 43412, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57153, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57153, A.CUSTOM, 15)

	-- Glyph of Cleaving -- 57154
	AddRecipe(57154, 240, 43414, Q.COMMON, V.WOTLK, 240, 245, 250, 255)
	self:AddRecipeFlags(57154, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57154, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Devastate -- 57155
	AddRecipe(57155, 385, 43415, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57155, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57155, A.CUSTOM, 15)

	-- Glyph of Execution -- 57156
	AddRecipe(57156, 285, 43416, Q.COMMON, V.WOTLK, 285, 290, 295, 300)
	self:AddRecipeFlags(57156, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57156, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Hamstring -- 57157
	AddRecipe(57157, 125, 43417, Q.COMMON, V.WOTLK, 125, 130, 135, 140)
	self:AddRecipeFlags(57157, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57157, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Heroic Strike -- 57158
	AddRecipe(57158, 95, 43418, Q.COMMON, V.WOTLK, 95, 105, 115, 125)
	self:AddRecipeFlags(57158, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57158, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Intervene -- 57159
	AddRecipe(57159, 385, 43419, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57159, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57159, A.CUSTOM, 15)

	-- Glyph of Mortal Strike -- 57160
	AddRecipe(57160, 385, 43421, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57160, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57160, A.CUSTOM, 15)

	-- Glyph of Overpower -- 57161
	AddRecipe(57161, 170, 43422, Q.COMMON, V.WOTLK, 170, 175, 180, 185)
	self:AddRecipeFlags(57161, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57161, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Rapid Charge -- 57162
	AddRecipe(57162, 85, 43413, Q.COMMON, V.WOTLK, 85, 95, 105, 115)
	self:AddRecipeFlags(57162, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57162, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Rending -- 57163
	AddRecipe(57163, 110, 43423, Q.COMMON, V.WOTLK, 110, 115, 120, 125)
	self:AddRecipeFlags(57163, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57163, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Resonating Power -- 57164
	AddRecipe(57164, 385, 43430, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57164, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57164, A.CUSTOM, 15)

	-- Glyph of Revenge -- 57165
	AddRecipe(57165, 190, 43424, Q.COMMON, V.WOTLK, 190, 195, 200, 205)
	self:AddRecipeFlags(57165, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57165, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Last Stand -- 57166
	AddRecipe(57166, 385, 43426, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57166, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57166, A.CUSTOM, 15)

	-- Glyph of Sunder Armor -- 57167
	AddRecipe(57167, 140, 43427, Q.COMMON, V.WOTLK, 140, 145, 150, 155)
	self:AddRecipeFlags(57167, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP, F.TANK)
	self:AddRecipeTrainer(57167, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Sweeping Strikes -- 57168
	AddRecipe(57168, 320, 43428, Q.COMMON, V.WOTLK, 320, 325, 330, 335)
	self:AddRecipeFlags(57168, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57168, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Taunt -- 57169
	AddRecipe(57169, 385, 43429, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57169, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP, F.TANK)
	self:AddRecipeAcquire(57169, A.CUSTOM, 15)

	-- Glyph of Victory Rush -- 57170
	AddRecipe(57170, 385, 43431, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57170, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57170, A.CUSTOM, 15)

	-- Glyph of Whirlwind -- 57172
	AddRecipe(57172, 345, 43432, Q.COMMON, V.WOTLK, 345, 350, 355, 360)
	self:AddRecipeFlags(57172, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57172, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Circle of Healing -- 57181
	AddRecipe(57181, 385, 42396, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57181, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeAcquire(57181, A.CUSTOM, 15)

	-- Glyph of Dispel Magic -- 57183
	AddRecipe(57183, 230, 42397, Q.COMMON, V.WOTLK, 230, 235, 240, 245)
	self:AddRecipeFlags(57183, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(57183, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Fade -- 57184
	AddRecipe(57184, 105, 42398, Q.COMMON, V.WOTLK, 105, 110, 115, 120)
	self:AddRecipeFlags(57184, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(57184, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Fear Ward -- 57185
	AddRecipe(57185, 270, 42399, Q.COMMON, V.WOTLK, 270, 275, 280, 285)
	self:AddRecipeFlags(57185, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(57185, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Flash Heal -- 57186
	AddRecipe(57186, 120, 42400, Q.COMMON, V.WOTLK, 120, 125, 130, 135)
	self:AddRecipeFlags(57186, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeTrainer(57186, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Holy Nova -- 57187
	AddRecipe(57187, 315, 42401, Q.COMMON, V.WOTLK, 315, 320, 325, 330)
	self:AddRecipeFlags(57187, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeTrainer(57187, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Inner Fire -- 57188
	AddRecipe(57188, 135, 42402, Q.COMMON, V.WOTLK, 135, 140, 145, 150)
	self:AddRecipeFlags(57188, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(57188, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Lightwell -- 57189
	AddRecipe(57189, 385, 42403, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57189, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeAcquire(57189, A.CUSTOM, 15)

	-- Glyph of Mass Dispel -- 57190
	AddRecipe(57190, 385, 42404, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57190, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(57190, A.CUSTOM, 15)

	-- Glyph of Mind Control -- 57191
	AddRecipe(57191, 385, 42405, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57191, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(57191, A.CUSTOM, 15)

	-- Glyph of Shadow Word: Pain -- 57192
	AddRecipe(57192, 350, 42406, Q.COMMON, V.WOTLK, 350, 355, 360, 365)
	self:AddRecipeFlags(57192, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57192, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Shadow -- 57193
	AddRecipe(57193, 385, 42407, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57193, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(57193, A.CUSTOM, 15)

	-- Glyph of Power Word: Shield -- 57194
	AddRecipe(57194, 80, 42408, Q.COMMON, V.WOTLK, 80, 90, 100, 110)
	self:AddRecipeFlags(57194, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeTrainer(57194, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Prayer of Healing -- 57195
	AddRecipe(57195, 385, 42409, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57195, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeAcquire(57195, A.CUSTOM, 15)

	-- Glyph of Psychic Scream -- 57196
	AddRecipe(57196, 95, 42410, Q.COMMON, V.WOTLK, 95, 105, 115, 125)
	self:AddRecipeFlags(57196, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(57196, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 28702, 26959, 30710, 30711, 30715, 33679, 26977, 30713, 33615)

	-- Glyph of Renew -- 57197
	AddRecipe(57197, 160, 42411, Q.COMMON, V.WOTLK, 160, 165, 170, 175)
	self:AddRecipeFlags(57197, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeTrainer(57197, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Scourge Imprisonment -- 57198
	AddRecipe(57198, 375, 42412, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(57198, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(57198, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Glyph of Shadow Word: Death -- 57199
	AddRecipe(57199, 385, 42414, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57199, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57199, A.CUSTOM, 15)

	-- Glyph of Mind Flay -- 57200
	AddRecipe(57200, 180, 42415, Q.COMMON, V.WOTLK, 180, 185, 190, 195)
	self:AddRecipeFlags(57200, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57200, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Smite -- 57201
	AddRecipe(57201, 210, 42416, Q.COMMON, V.WOTLK, 210, 215, 220, 225)
	self:AddRecipeFlags(57201, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57201, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Spirit of Redemption -- 57202
	AddRecipe(57202, 385, 42417, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57202, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeAcquire(57202, A.CUSTOM, 15)

	-- Glyph of Anti-Magic Shell -- 57207
	AddRecipe(57207, 385, 43533, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57207, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57207, A.CUSTOM, 15)

	-- Glyph of Heart Strike -- 57208
	AddRecipe(57208, 385, 43534, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57208, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57208, A.CUSTOM, 15)

	-- Glyph of Blood Tap -- 57209
	AddRecipe(57209, 320, 43535, Q.COMMON, V.WOTLK, 320, 330, 335, 340)
	self:AddRecipeFlags(57209, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57209, A.CUSTOM, 14)

	-- Glyph of Bone Shield -- 57210
	AddRecipe(57210, 265, 43536, Q.COMMON, V.WOTLK, 265, 270, 275, 280)
	self:AddRecipeFlags(57210, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57210, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Chains of Ice -- 57211
	AddRecipe(57211, 385, 43537, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57211, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57211, A.CUSTOM, 15)

	-- Glyph of Dark Command -- 57212
	AddRecipe(57212, 385, 43538, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57212, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57212, A.CUSTOM, 15)

	-- Glyph of Death Grip -- 57213
	AddRecipe(57213, 285, 43541, Q.COMMON, V.WOTLK, 285, 290, 295, 300)
	self:AddRecipeFlags(57213, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57213, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Death and Decay -- 57214
	AddRecipe(57214, 385, 43542, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57214, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57214, A.CUSTOM, 15)

	-- Glyph of Death's Embrace -- 57215
	AddRecipe(57215, 300, 43539, Q.COMMON, V.WOTLK, 300, 305, 310, 315)
	self:AddRecipeFlags(57215, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57215, A.CUSTOM, 14)

	-- Glyph of Frost Strike -- 57216
	AddRecipe(57216, 270, 43543, Q.COMMON, V.WOTLK, 270, 275, 280, 285)
	self:AddRecipeFlags(57216, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57216, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Horn of Winter -- 57217
	AddRecipe(57217, 320, 43544, Q.COMMON, V.WOTLK, 320, 330, 335, 340)
	self:AddRecipeFlags(57217, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57217, A.CUSTOM, 14)

	-- Glyph of Icebound Fortitude -- 57218
	AddRecipe(57218, 385, 43545, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57218, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57218, A.CUSTOM, 15)

	-- Glyph of Icy Touch -- 57219
	AddRecipe(57219, 280, 43546, Q.COMMON, V.WOTLK, 280, 285, 290, 295)
	self:AddRecipeFlags(57219, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57219, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 28702, 26959, 30710, 30711, 30715, 33679, 26977, 30713, 33615)

	-- Glyph of Obliterate -- 57220
	AddRecipe(57220, 385, 43547, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57220, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57220, A.CUSTOM, 15)

	-- Glyph of Plague Strike -- 57221
	AddRecipe(57221, 300, 43548, Q.COMMON, V.WOTLK, 300, 305, 310, 315)
	self:AddRecipeFlags(57221, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57221, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of the Ghoul -- 57222
	AddRecipe(57222, 350, 43549, Q.COMMON, V.WOTLK, 350, 355, 360, 365)
	self:AddRecipeFlags(57222, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57222, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Rune Strike -- 57223
	AddRecipe(57223, 385, 43550, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57223, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57223, A.CUSTOM, 15)

	-- Glyph of Scourge Strike -- 57224
	AddRecipe(57224, 330, 43551, Q.COMMON, V.WOTLK, 330, 335, 340, 345)
	self:AddRecipeFlags(57224, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57224, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Strangulate -- 57225
	AddRecipe(57225, 375, 43552, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(57225, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57225, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Glyph of Unbreakable Armor -- 57226
	AddRecipe(57226, 305, 43553, Q.COMMON, V.WOTLK, 305, 310, 315, 320)
	self:AddRecipeFlags(57226, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57226, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Vampiric Blood -- 57227
	AddRecipe(57227, 345, 43554, Q.COMMON, V.WOTLK, 345, 350, 355, 360)
	self:AddRecipeFlags(57227, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57227, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Raise Dead -- 57228
	AddRecipe(57228, 300, 43673, Q.COMMON, V.WOTLK, 300, 305, 310, 315)
	self:AddRecipeFlags(57228, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57228, A.CUSTOM, 14)

	-- Glyph of Corpse Explosion -- 57229
	AddRecipe(57229, 300, 43671, Q.COMMON, V.WOTLK, 300, 305, 310, 315)
	self:AddRecipeFlags(57229, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57229, A.CUSTOM, 14)

	-- Glyph of Pestilence -- 57230
	AddRecipe(57230, 300, 43672, Q.COMMON, V.WOTLK, 300, 305, 310, 315)
	self:AddRecipeFlags(57230, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57230, A.CUSTOM, 14)

	-- Glyph of Chain Heal -- 57232
	AddRecipe(57232, 385, 41517, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57232, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeAcquire(57232, A.CUSTOM, 15)

	-- Glyph of Chain Lightning -- 57233
	AddRecipe(57233, 385, 41518, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57233, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57233, A.CUSTOM, 15)

	-- Glyph of Lava -- 57234
	AddRecipe(57234, 385, 41524, Q.COMMON, V.WOTLK, 385, 390, 395, 400)
	self:AddRecipeFlags(57234, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57234, A.CUSTOM, 15)

	-- Glyph of Shocking -- 57235
	AddRecipe(57235, 385, 41526, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57235, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57235, A.CUSTOM, 15)

	-- Glyph of Earthliving Weapon -- 57236
	AddRecipe(57236, 300, 41527, Q.COMMON, V.WOTLK, 300, 305, 310, 315)
	self:AddRecipeFlags(57236, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57236, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Fire Elemental Totem -- 57237
	AddRecipe(57237, 385, 41529, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57237, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57237, A.CUSTOM, 15)

	-- Glyph of Fire Nova -- 57238
	AddRecipe(57238, 110, 41530, Q.COMMON, V.WOTLK, 110, 115, 120, 125)
	self:AddRecipeFlags(57238, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57238, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Flame Shock -- 57239
	AddRecipe(57239, 85, 41531, Q.COMMON, V.WOTLK, 85, 95, 105, 115)
	self:AddRecipeFlags(57239, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57239, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Flametongue Weapon -- 57240
	AddRecipe(57240, 125, 41532, Q.COMMON, V.WOTLK, 125, 130, 135, 140)
	self:AddRecipeFlags(57240, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57240, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Frost Shock -- 57241
	AddRecipe(57241, 185, 41547, Q.COMMON, V.WOTLK, 185, 190, 195, 200)
	self:AddRecipeFlags(57241, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57241, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Healing Stream Totem -- 57242
	AddRecipe(57242, 215, 41533, Q.COMMON, V.WOTLK, 215, 220, 225, 230)
	self:AddRecipeFlags(57242, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeTrainer(57242, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Healing Wave -- 57243
	AddRecipe(57243, 385, 41534, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57243, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeAcquire(57243, A.CUSTOM, 15)

	-- Glyph of Lesser Healing Wave -- 57244
	AddRecipe(57244, 235, 41535, Q.COMMON, V.WOTLK, 235, 240, 245, 250)
	self:AddRecipeFlags(57244, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP, F.HEALER)
	self:AddRecipeTrainer(57244, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Lightning Bolt -- 57245
	AddRecipe(57245, 140, 41536, Q.COMMON, V.WOTLK, 140, 145, 150, 155)
	self:AddRecipeFlags(57245, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57245, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Lightning Shield -- 57246
	AddRecipe(57246, 95, 41537, Q.COMMON, V.WOTLK, 95, 105, 115, 125)
	self:AddRecipeFlags(57246, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57246, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Mana Tide Totem -- 57247
	AddRecipe(57247, 385, 41538, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57247, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57247, A.CUSTOM, 15)

	-- Glyph of Stormstrike -- 57248
	AddRecipe(57248, 375, 41539, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(57248, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57248, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Glyph of Lava Lash -- 57249
	AddRecipe(57249, 165, 41540, Q.COMMON, V.WOTLK, 165, 170, 175, 180)
	self:AddRecipeFlags(57249, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57249, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Elemental Mastery -- 57250
	AddRecipe(57250, 385, 41552, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57250, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57250, A.CUSTOM, 15)

	-- Glyph of Water Mastery -- 57251
	AddRecipe(57251, 275, 41541, Q.COMMON, V.WOTLK, 275, 280, 285, 290)
	self:AddRecipeFlags(57251, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57251, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Windfury Weapon -- 57252
	AddRecipe(57252, 330, 41542, Q.COMMON, V.WOTLK, 330, 335, 340, 345)
	self:AddRecipeFlags(57252, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(57252, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Thunderstorm -- 57253
	AddRecipe(57253, 355, 44923, Q.COMMON, V.WOTLK, 355, 355, 360, 365)
	self:AddRecipeFlags(57253, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57253, A.CUSTOM, 14)

	-- Glyph of Incinerate -- 57257
	AddRecipe(57257, 350, 42453, Q.COMMON, V.WOTLK, 350, 355, 360, 365)
	self:AddRecipeFlags(57257, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57257, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Conflagrate -- 57258
	AddRecipe(57258, 385, 42454, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57258, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57258, A.CUSTOM, 15)

	-- Glyph of Corruption -- 57259
	AddRecipe(57259, 85, 42455, Q.COMMON, V.WOTLK, 85, 95, 105, 115)
	self:AddRecipeFlags(57259, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57259, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Curse of Agony -- 57260
	AddRecipe(57260, 385, 42456, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57260, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57260, A.CUSTOM, 15)

	-- Glyph of Death Coil -- 57261
	AddRecipe(57261, 385, 42457, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57261, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57261, A.CUSTOM, 15)

	-- Glyph of Fear -- 57262
	AddRecipe(57262, 125, 42458, Q.COMMON, V.WOTLK, 125, 130, 135, 140)
	self:AddRecipeFlags(57262, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57262, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Felguard -- 57263
	AddRecipe(57263, 385, 42459, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57263, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57263, A.CUSTOM, 15)

	-- Glyph of Felhunter -- 57264
	AddRecipe(57264, 385, 42460, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57264, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57264, A.CUSTOM, 15)

	-- Glyph of Health Funnel -- 57265
	AddRecipe(57265, 110, 42461, Q.COMMON, V.WOTLK, 110, 115, 120, 125)
	self:AddRecipeFlags(57265, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57265, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Healthstone -- 57266
	AddRecipe(57266, 95, 42462, Q.COMMON, V.WOTLK, 95, 105, 115, 125)
	self:AddRecipeFlags(57266, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57266, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Howl of Terror -- 57267
	AddRecipe(57267, 385, 42463, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57267, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57267, A.CUSTOM, 15)

	-- Glyph of Immolate -- 57268
	AddRecipe(57268, 385, 42464, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57268, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57268, A.CUSTOM, 15)

	-- Glyph of Imp -- 57269
	AddRecipe(57269, 140, 42465, Q.COMMON, V.WOTLK, 140, 145, 150, 155)
	self:AddRecipeFlags(57269, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57269, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 28702, 26959, 30710, 30711, 30715, 33679, 26977, 30713, 33615)

	-- Glyph of Searing Pain -- 57270
	AddRecipe(57270, 215, 42466, Q.COMMON, V.WOTLK, 215, 220, 225, 230)
	self:AddRecipeFlags(57270, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57270, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 28702, 26959, 30710, 30711, 30715, 33679, 26977, 30713, 33615)

	-- Glyph of Shadow Bolt -- 57271
	AddRecipe(57271, 165, 42467, Q.COMMON, V.WOTLK, 165, 170, 175, 180)
	self:AddRecipeFlags(57271, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57271, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Shadowburn -- 57272
	AddRecipe(57272, 275, 42468, Q.COMMON, V.WOTLK, 275, 280, 285, 290)
	self:AddRecipeFlags(57272, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57272, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Siphon Life -- 57273
	AddRecipe(57273, 385, 42469, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57273, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57273, A.CUSTOM, 15)

	-- Glyph of Soulstone -- 57274
	AddRecipe(57274, 240, 42470, Q.COMMON, V.WOTLK, 240, 245, 250, 255)
	self:AddRecipeFlags(57274, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57274, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Succubus -- 57275
	AddRecipe(57275, 325, 42471, Q.COMMON, V.WOTLK, 325, 330, 335, 340)
	self:AddRecipeFlags(57275, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57275, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Unstable Affliction -- 57276
	AddRecipe(57276, 385, 42472, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57276, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(57276, A.CUSTOM, 15)

	-- Glyph of Voidwalker -- 57277
	AddRecipe(57277, 190, 42473, Q.COMMON, V.WOTLK, 190, 195, 200, 205)
	self:AddRecipeFlags(57277, F.ALLIANCE, F.HORDE, F.TRAINER, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeTrainer(57277, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Hunter's Ink -- 57703
	AddRecipe(57703, 85, 43115, Q.COMMON, V.WOTLK, 85, 85, 90, 95)
	self:AddRecipeFlags(57703, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57703, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Lion's Ink -- 57704
	AddRecipe(57704, 100, 43116, Q.COMMON, V.WOTLK, 100, 100, 100, 105)
	self:AddRecipeFlags(57704, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57704, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Dawnstar Ink -- 57706
	AddRecipe(57706, 125, 43117, Q.COMMON, V.WOTLK, 125, 125, 130, 135)
	self:AddRecipeFlags(57706, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57706, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Jadefire Ink -- 57707
	AddRecipe(57707, 150, 43118, Q.COMMON, V.WOTLK, 150, 150, 150, 155)
	self:AddRecipeFlags(57707, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57707, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Royal Ink -- 57708
	AddRecipe(57708, 175, 43119, Q.COMMON, V.WOTLK, 175, 175, 175, 180)
	self:AddRecipeFlags(57708, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57708, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Celestial Ink -- 57709
	AddRecipe(57709, 200, 43120, Q.COMMON, V.WOTLK, 200, 200, 200, 205)
	self:AddRecipeFlags(57709, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57709, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 28702, 26959, 30710, 30711, 30715, 33679, 26977, 30713, 33615)

	-- Fiery Ink -- 57710
	AddRecipe(57710, 225, 43121, Q.COMMON, V.WOTLK, 225, 225, 225, 230)
	self:AddRecipeFlags(57710, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57710, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Shimmering Ink -- 57711
	AddRecipe(57711, 250, 43122, Q.COMMON, V.WOTLK, 250, 250, 250, 255)
	self:AddRecipeFlags(57711, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57711, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Ink of the Sky -- 57712
	AddRecipe(57712, 275, 43123, Q.COMMON, V.WOTLK, 275, 290, 295, 300)
	self:AddRecipeFlags(57712, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57712, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Ethereal Ink -- 57713
	AddRecipe(57713, 290, 43124, Q.COMMON, V.WOTLK, 290, 295, 300, 305)
	self:AddRecipeFlags(57713, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57713, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Darkflame Ink -- 57714
	AddRecipe(57714, 325, 43125, Q.COMMON, V.WOTLK, 325, 325, 325, 330)
	self:AddRecipeFlags(57714, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57714, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Ink of the Sea -- 57715
	AddRecipe(57715, 350, 43126, Q.COMMON, V.WOTLK, 350, 350, 350, 355)
	self:AddRecipeFlags(57715, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57715, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Snowfall Ink -- 57716
	AddRecipe(57716, 375, 43127, Q.COMMON, V.WOTLK, 375, 375, 375, 380)
	self:AddRecipeFlags(57716, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(57716, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Glyph of Fire Blast -- 57719
	AddRecipe(57719, 385, 42740, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(57719, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(57719, A.CUSTOM, 15)

	-- Glyph of Aquatic Form -- 58286
	AddRecipe(58286, 75, 43316, Q.COMMON, V.WOTLK, 75, 105, 110, 115)
	self:AddRecipeFlags(58286, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58286, A.CUSTOM, 14)

	-- Glyph of Challenging Roar -- 58287
	AddRecipe(58287, 150, 43334, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(58287, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58287, A.CUSTOM, 14)

	-- Glyph of Unburdened Rebirth -- 58288
	AddRecipe(58288, 95, 43331, Q.COMMON, V.WOTLK, 95, 105, 110, 115)
	self:AddRecipeFlags(58288, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58288, A.CUSTOM, 14)

	-- Glyph of Thorns -- 58289
	AddRecipe(58289, 75, 43332, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58289, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58289, A.CUSTOM, 14)

	-- Glyph of the Wild -- 58296
	AddRecipe(58296, 75, 43335, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58296, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58296, A.CUSTOM, 14)

	-- Glyph of the Pack -- 58297
	AddRecipe(58297, 195, 43355, Q.COMMON, V.WOTLK, 195, 205, 210, 215)
	self:AddRecipeFlags(58297, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58297, A.CUSTOM, 14)

	-- Glyph of Scare Beast -- 58298
	AddRecipe(58298, 75, 43356, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58298, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58298, A.CUSTOM, 14)

	-- Glyph of Revive Pet -- 58299
	AddRecipe(58299, 75, 43338, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58299, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58299, A.CUSTOM, 14)

	-- Glyph of Possessed Strength -- 58300
	AddRecipe(58300, 75, 43354, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58300, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58300, A.CUSTOM, 14)

	-- Glyph of Mend Pet -- 58301
	AddRecipe(58301, 75, 43350, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58301, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58301, A.CUSTOM, 14)

	-- Glyph of Feign Death -- 58302
	AddRecipe(58302, 150, 43351, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(58302, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58302, A.CUSTOM, 14)

	-- Glyph of Arcane Intellect -- 58303
	AddRecipe(58303, 75, 43339, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58303, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58303, A.CUSTOM, 14)

	-- Glyph of Fire Ward -- 58305
	AddRecipe(58305, 95, 43357, Q.COMMON, V.WOTLK, 95, 105, 110, 115)
	self:AddRecipeFlags(58305, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58305, A.CUSTOM, 14)

	-- Glyph of Frost Armor -- 58306
	AddRecipe(58306, 75, 43359, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58306, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58306, A.CUSTOM, 14)

	-- Glyph of Frost Ward -- 58307
	AddRecipe(58307, 120, 43360, Q.COMMON, V.WOTLK, 120, 130, 135, 140)
	self:AddRecipeFlags(58307, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58307, A.CUSTOM, 14)

	-- Glyph of Slow Fall -- 58308
	AddRecipe(58308, 75, 43364, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58308, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58308, A.CUSTOM, 14)

	-- Glyph of the Penguin -- 58310
	AddRecipe(58310, 75, 43361, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58310, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58310, A.CUSTOM, 14)

	-- Glyph of Blessing of Kings -- 58311
	AddRecipe(58311, 95, 43365, Q.COMMON, V.WOTLK, 95, 105, 110, 115)
	self:AddRecipeFlags(58311, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58311, A.CUSTOM, 14)

	-- Glyph of Blessing of Wisdom -- 58312
	AddRecipe(58312, 75, 43366, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58312, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58312, A.CUSTOM, 14)

	-- Glyph of Lay on Hands -- 58313
	AddRecipe(58313, 75, 43367, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58313, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58313, A.CUSTOM, 14)

	-- Glyph of Blessing of Might -- 58314
	AddRecipe(58314, 75, 43340, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58314, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58314, A.CUSTOM, 14)

	-- Glyph of Sense Undead -- 58315
	AddRecipe(58315, 95, 43368, Q.COMMON, V.WOTLK, 95, 105, 110, 115)
	self:AddRecipeFlags(58315, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58315, A.CUSTOM, 14)

	-- Glyph of the Wise -- 58316
	AddRecipe(58316, 150, 43369, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(58316, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58316, A.CUSTOM, 14)

	-- Glyph of Fading -- 58317
	AddRecipe(58317, 75, 43342, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58317, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(58317, A.CUSTOM, 14)

	-- Glyph of Fortitude -- 58318
	AddRecipe(58318, 75, 43371, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58318, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(58318, A.CUSTOM, 14)

	-- Glyph of Levitate -- 58319
	AddRecipe(58319, 170, 43370, Q.COMMON, V.WOTLK, 170, 180, 185, 190)
	self:AddRecipeFlags(58319, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(58319, A.CUSTOM, 14)

	-- Glyph of Shackle Undead -- 58320
	AddRecipe(58320, 95, 43373, Q.COMMON, V.WOTLK, 95, 105, 110, 115)
	self:AddRecipeFlags(58320, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(58320, A.CUSTOM, 14)

	-- Glyph of Shadow Protection -- 58321
	AddRecipe(58321, 150, 43372, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(58321, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(58321, A.CUSTOM, 14)

	-- Glyph of Shadowfiend -- 58322
	AddRecipe(58322, 345, 43374, Q.COMMON, V.WOTLK, 345, 355, 360, 365)
	self:AddRecipeFlags(58322, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(58322, A.CUSTOM, 14)

	-- Glyph of Blurred Speed -- 58323
	AddRecipe(58323, 75, 43379, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58323, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58323, A.CUSTOM, 14)

	-- Glyph of Distract -- 58324
	AddRecipe(58324, 120, 43376, Q.COMMON, V.WOTLK, 120, 130, 135, 140)
	self:AddRecipeFlags(58324, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58324, A.CUSTOM, 14)

	-- Glyph of Pick Lock -- 58325
	AddRecipe(58325, 95, 43377, Q.COMMON, V.WOTLK, 95, 105, 110, 115)
	self:AddRecipeFlags(58325, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58325, A.CUSTOM, 14)

	-- Glyph of Pick Pocket -- 58326
	AddRecipe(58326, 75, 43343, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58326, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58326, A.CUSTOM, 14)

	-- Glyph of Safe Fall -- 58327
	AddRecipe(58327, 195, 43378, Q.COMMON, V.WOTLK, 195, 205, 210, 215)
	self:AddRecipeFlags(58327, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58327, A.CUSTOM, 14)

	-- Glyph of Vanish -- 58328
	AddRecipe(58328, 120, 43380, Q.COMMON, V.WOTLK, 120, 130, 135, 140)
	self:AddRecipeFlags(58328, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(58328, A.CUSTOM, 14)

	-- Glyph of Astral Recall -- 58329
	AddRecipe(58329, 150, 43381, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(58329, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP, F.DPS, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(58329, A.CUSTOM, 14)

	-- Glyph of Renewed Life -- 58330
	AddRecipe(58330, 150, 43385, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(58330, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58330, A.CUSTOM, 14)

	-- Glyph of Water Breathing -- 58331
	AddRecipe(58331, 120, 43344, Q.COMMON, V.WOTLK, 120, 130, 135, 140)
	self:AddRecipeFlags(58331, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58331, A.CUSTOM, 14)

	-- Glyph of Water Shield -- 58332
	AddRecipe(58332, 95, 43386, Q.COMMON, V.WOTLK, 95, 105, 110, 115)
	self:AddRecipeFlags(58332, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58332, A.CUSTOM, 14)

	-- Glyph of Water Walking -- 58333
	AddRecipe(58333, 150, 43388, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(58333, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58333, A.CUSTOM, 14)

	-- Glyph of Unending Breath -- 58336
	AddRecipe(58336, 95, 43389, Q.COMMON, V.WOTLK, 95, 105, 110, 115)
	self:AddRecipeFlags(58336, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58336, A.CUSTOM, 14)

	-- Glyph of Drain Soul -- 58337
	AddRecipe(58337, 75, 43390, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58337, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58337, A.CUSTOM, 14)

	-- Glyph of Curse of Exhaustion -- 58338
	AddRecipe(58338, 150, 43392, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(58338, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58338, A.CUSTOM, 14)

	-- Glyph of Enslave Demon -- 58339
	AddRecipe(58339, 150, 43393, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(58339, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58339, A.CUSTOM, 14)

	-- Glyph of Kilrogg -- 58340
	AddRecipe(58340, 120, 43391, Q.COMMON, V.WOTLK, 120, 130, 135, 140)
	self:AddRecipeFlags(58340, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58340, A.CUSTOM, 14)

	-- Glyph of Souls -- 58341
	AddRecipe(58341, 345, 43394, Q.COMMON, V.WOTLK, 345, 355, 360, 365)
	self:AddRecipeFlags(58341, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(58341, A.CUSTOM, 14)

	-- Glyph of Battle -- 58342
	AddRecipe(58342, 75, 43395, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58342, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58342, A.CUSTOM, 14)

	-- Glyph of Bloodrage -- 58343
	AddRecipe(58343, 75, 43396, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58343, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58343, A.CUSTOM, 14)

	-- Glyph of Charge -- 58344
	AddRecipe(58344, 75, 43397, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58344, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58344, A.CUSTOM, 14)

	-- Glyph of Mocking Blow -- 58345
	AddRecipe(58345, 95, 43398, Q.COMMON, V.WOTLK, 95, 105, 110, 115)
	self:AddRecipeFlags(58345, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58345, A.CUSTOM, 14)

	-- Glyph of Thunder Clap -- 58346
	AddRecipe(58346, 75, 43399, Q.COMMON, V.WOTLK, 75, 80, 85, 90)
	self:AddRecipeFlags(58346, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58346, A.CUSTOM, 14)

	-- Glyph of Enduring Victory -- 58347
	AddRecipe(58347, 320, 43400, Q.COMMON, V.WOTLK, 320, 330, 335, 340)
	self:AddRecipeFlags(58347, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(58347, A.CUSTOM, 14)

	-- Scroll of Agility -- 58472
	AddRecipe(58472, 15, 3012, Q.COMMON, V.WOTLK, 15, 35, 40, 45)
	self:AddRecipeFlags(58472, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58472, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Agility II -- 58473
	AddRecipe(58473, 85, 1477, Q.COMMON, V.WOTLK, 85, 85, 90, 95)
	self:AddRecipeFlags(58473, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58473, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Agility III -- 58476
	AddRecipe(58476, 175, 4425, Q.COMMON, V.WOTLK, 175, 180, 185, 190)
	self:AddRecipeFlags(58476, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58476, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Agility IV -- 58478
	AddRecipe(58478, 225, 10309, Q.COMMON, V.WOTLK, 225, 230, 235, 240)
	self:AddRecipeFlags(58478, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58478, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Agility V -- 58480
	AddRecipe(58480, 270, 27498, Q.COMMON, V.WOTLK, 270, 275, 280, 285)
	self:AddRecipeFlags(58480, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58480, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Agility VI -- 58481
	AddRecipe(58481, 310, 33457, Q.COMMON, V.WOTLK, 310, 320, 325, 330)
	self:AddRecipeFlags(58481, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58481, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Agility VII -- 58482
	AddRecipe(58482, 370, 43463, Q.COMMON, V.WOTLK, 370, 375, 380, 385)
	self:AddRecipeFlags(58482, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58482, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Scroll of Agility VIII -- 58483
	AddRecipe(58483, 420, 43464, Q.COMMON, V.WOTLK, 420, 425, 430, 435)
	self:AddRecipeFlags(58483, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58483, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Scroll of Strength -- 58484
	AddRecipe(58484, 15, 954, Q.COMMON, V.WOTLK, 15, 35, 40, 45)
	self:AddRecipeFlags(58484, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58484, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Strength II -- 58485
	AddRecipe(58485, 80, 2289, Q.COMMON, V.WOTLK, 80, 80, 85, 90)
	self:AddRecipeFlags(58485, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58485, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Strength III -- 58486
	AddRecipe(58486, 170, 4426, Q.COMMON, V.WOTLK, 170, 175, 180, 185)
	self:AddRecipeFlags(58486, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58486, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Strength IV -- 58487
	AddRecipe(58487, 220, 10310, Q.COMMON, V.WOTLK, 220, 225, 230, 235)
	self:AddRecipeFlags(58487, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58487, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Strength V -- 58488
	AddRecipe(58488, 265, 27503, Q.COMMON, V.WOTLK, 265, 270, 275, 280)
	self:AddRecipeFlags(58488, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58488, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Strength VI -- 58489
	AddRecipe(58489, 305, 33462, Q.COMMON, V.WOTLK, 305, 315, 320, 325)
	self:AddRecipeFlags(58489, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58489, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Strength VII -- 58490
	AddRecipe(58490, 365, 43465, Q.COMMON, V.WOTLK, 365, 370, 375, 380)
	self:AddRecipeFlags(58490, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58490, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Scroll of Strength VIII -- 58491
	AddRecipe(58491, 415, 43466, Q.COMMON, V.WOTLK, 415, 420, 425, 430)
	self:AddRecipeFlags(58491, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TANK)
	self:AddRecipeTrainer(58491, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Mystic Tome -- 58565
	AddRecipe(58565, 110, 43515, Q.COMMON, V.WOTLK, 110, 125, 137, 150)
	self:AddRecipeFlags(58565, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND)
	self:AddRecipeTrainer(58565, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Dash -- 59315
	AddRecipe(59315, 150, 43674, Q.COMMON, V.WOTLK, 150, 155, 160, 165)
	self:AddRecipeFlags(59315, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(59315, A.CUSTOM, 14)

	-- Glyph of Ghost Wolf -- 59326
	AddRecipe(59326, 95, 43725, Q.COMMON, V.WOTLK, 95, 105, 110, 115)
	self:AddRecipeFlags(59326, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(59326, A.CUSTOM, 14)

	-- Glyph of Rune Tap -- 59338
	AddRecipe(59338, 310, 43825, Q.COMMON, V.WOTLK, 310, 315, 320, 325)
	self:AddRecipeFlags(59338, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59338, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Blood Strike -- 59339
	AddRecipe(59339, 320, 43826, Q.COMMON, V.WOTLK, 320, 325, 330, 335)
	self:AddRecipeFlags(59339, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59339, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Glyph of Death Strike -- 59340
	AddRecipe(59340, 340, 43827, Q.COMMON, V.WOTLK, 340, 345, 350, 355)
	self:AddRecipeFlags(59340, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59340, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Certificate of Ownership -- 59387
	AddRecipe(59387, 200, 43850, Q.COMMON, V.WOTLK, 200, 205, 210, 215)
	self:AddRecipeFlags(59387, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59387, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 28702, 26959, 30710, 30711, 30715, 33679, 26977, 30713, 33615)

	-- Tome of the Dawn -- 59475
	AddRecipe(59475, 125, 43654, Q.COMMON, V.WOTLK, 125, 150, 162, 175)
	self:AddRecipeFlags(59475, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND)
	self:AddRecipeTrainer(59475, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Book of Survival -- 59478
	AddRecipe(59478, 125, 43655, Q.COMMON, V.WOTLK, 125, 150, 162, 175)
	self:AddRecipeFlags(59478, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND)
	self:AddRecipeTrainer(59478, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Strange Tarot -- 59480
	AddRecipe(59480, 125, nil, Q.COMMON, V.WOTLK, 125, 150, 162, 175)
	self:AddRecipeFlags(59480, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59480, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Tome of Kings -- 59484
	AddRecipe(59484, 175, 43656, Q.COMMON, V.WOTLK, 175, 200, 205, 210)
	self:AddRecipeFlags(59484, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND)
	self:AddRecipeTrainer(59484, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Royal Guide of Escape Routes -- 59486
	AddRecipe(59486, 175, 43657, Q.COMMON, V.WOTLK, 175, 200, 205, 210)
	self:AddRecipeFlags(59486, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND)
	self:AddRecipeTrainer(59486, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Arcane Tarot -- 59487
	AddRecipe(59487, 175, nil, Q.COMMON, V.WOTLK, 175, 200, 205, 210)
	self:AddRecipeFlags(59487, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59487, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Weapon Vellum II -- 59488
	AddRecipe(59488, 235, 39350, Q.COMMON, V.WOTLK, 235, 250, 255, 260)
	self:AddRecipeFlags(59488, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59488, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Fire Eater's Guide -- 59489
	AddRecipe(59489, 225, 43660, Q.COMMON, V.WOTLK, 225, 240, 245, 250)
	self:AddRecipeFlags(59489, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND)
	self:AddRecipeTrainer(59489, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Book of Stars -- 59490
	AddRecipe(59490, 225, 43661, Q.COMMON, V.WOTLK, 225, 240, 245, 250)
	self:AddRecipeFlags(59490, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND)
	self:AddRecipeTrainer(59490, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Shadowy Tarot -- 59491
	AddRecipe(59491, 225, nil, Q.COMMON, V.WOTLK, 225, 240, 245, 250)
	self:AddRecipeFlags(59491, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59491, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Stormbound Tome -- 59493
	AddRecipe(59493, 275, 43663, Q.COMMON, V.WOTLK, 275, 290, 295, 300)
	self:AddRecipeFlags(59493, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.ONE_HAND)
	self:AddRecipeTrainer(59493, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Manual of Clouds -- 59494
	AddRecipe(59494, 275, 43664, Q.COMMON, V.WOTLK, 275, 290, 295, 300)
	self:AddRecipeFlags(59494, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.ONE_HAND)
	self:AddRecipeTrainer(59494, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Hellfire Tome -- 59495
	AddRecipe(59495, 325, 43666, Q.COMMON, V.WOTLK, 325, 340, 345, 350)
	self:AddRecipeFlags(59495, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.ONE_HAND)
	self:AddRecipeTrainer(59495, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Book of Clever Tricks -- 59496
	AddRecipe(59496, 325, 43667, Q.COMMON, V.WOTLK, 325, 340, 345, 350)
	self:AddRecipeFlags(59496, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND)
	self:AddRecipeTrainer(59496, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Iron-bound Tome -- 59497
	AddRecipe(59497, 400, 38322, Q.COMMON, V.WOTLK, 400, 425, 437, 450)
	self:AddRecipeFlags(59497, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.ONE_HAND)
	self:AddRecipeTrainer(59497, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Faces of Doom -- 59498
	AddRecipe(59498, 400, 44210, Q.COMMON, V.WOTLK, 400, 425, 437, 450)
	self:AddRecipeFlags(59498, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.ONE_HAND)
	self:AddRecipeTrainer(59498, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Armor Vellum II -- 59499
	AddRecipe(59499, 200, 37602, Q.COMMON, V.WOTLK, 200, 210, 215, 220)
	self:AddRecipeFlags(59499, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59499, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Armor Vellum III -- 59500
	AddRecipe(59500, 350, 43145, Q.COMMON, V.WOTLK, 350, 355, 370, 385)
	self:AddRecipeFlags(59500, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59500, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Weapon Vellum III -- 59501
	AddRecipe(59501, 400, 43146, Q.COMMON, V.WOTLK, 400, 405, 410, 415)
	self:AddRecipeFlags(59501, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59501, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Darkmoon Card -- 59502
	AddRecipe(59502, 275, nil, Q.COMMON, V.WOTLK, 275, 290, 295, 300)
	self:AddRecipeFlags(59502, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59502, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Greater Darkmoon Card -- 59503
	AddRecipe(59503, 325, nil, Q.COMMON, V.WOTLK, 325, 340, 345, 350)
	self:AddRecipeFlags(59503, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59503, 26995, 28702, 33615, 26959, 30721, 33603, 33679, 30722, 26916, 26977)

	-- Darkmoon Card of the North -- 59504
	AddRecipe(59504, 400, nil, Q.COMMON, V.WOTLK, 400, 425, 450, 475)
	self:AddRecipeFlags(59504, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(59504, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Glyph of Holy Wrath -- 59559
	AddRecipe(59559, 385, 43867, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(59559, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(59559, A.CUSTOM, 15)

	-- Glyph of Seal of Righteousness -- 59560
	AddRecipe(59560, 385, 43868, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(59560, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(59560, A.CUSTOM, 15)

	-- Glyph of Seal of Vengeance -- 59561
	AddRecipe(59561, 385, 43869, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(59561, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(59561, A.CUSTOM, 15)

	-- Scroll of Recall II -- 60336
	AddRecipe(60336, 200, 44314, Q.COMMON, V.WOTLK, 200, 215, 220, 225)
	self:AddRecipeFlags(60336, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(60336, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Scroll of Recall III -- 60337
	AddRecipe(60337, 350, 44315, Q.COMMON, V.WOTLK, 350, 350, 350, 355)
	self:AddRecipeFlags(60337, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(60337, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Master's Inscription of the Axe -- 61117
	AddRecipe(61117, 400, nil, Q.COMMON, V.WOTLK, 400, 400, 400, 405)
	self:AddRecipeFlags(61117, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(61117, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Master's Inscription of the Crag -- 61118
	AddRecipe(61118, 400, nil, Q.COMMON, V.WOTLK, 400, 400, 400, 405)
	self:AddRecipeFlags(61118, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(61118, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Master's Inscription of the Pinnacle -- 61119
	AddRecipe(61119, 400, nil, Q.COMMON, V.WOTLK, 400, 400, 400, 405)
	self:AddRecipeFlags(61119, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK)
	self:AddRecipeTrainer(61119, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Master's Inscription of the Storm -- 61120
	AddRecipe(61120, 400, nil, Q.COMMON, V.WOTLK, 400, 400, 400, 405)
	self:AddRecipeFlags(61120, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(61120, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Northrend Inscription Research -- 61177
	AddRecipe(61177, 385, nil, Q.COMMON, V.WOTLK, 385, 425, 437, 450)
	self:AddRecipeFlags(61177, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(61177, 26977, 26916, 26959, 26995, 28702, 33603, 33679)

	-- Minor Inscription Research -- 61288
	AddRecipe(61288, 75, nil, Q.COMMON, V.WOTLK, 75, 125, 137, 150)
	self:AddRecipeFlags(61288, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(61288, 26916, 26995, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 33615, 30715, 33679, 26977, 30713, 30711)

	-- Glyph of Frostfire -- 61677
	AddRecipe(61677, 385, 44684, Q.COMMON, V.WOTLK, 385, 390, 397, 405)
	self:AddRecipeFlags(61677, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(61677, A.CUSTOM, 15)

	-- Glyph of Focus -- 62162
	AddRecipe(62162, 375, 44928, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(62162, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(62162, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Rituals of the New Moon -- 64051
	AddRecipe(64051, 350, 46108, Q.UNCOMMON, V.WOTLK, 350, 375, 387, 400)
	self:AddRecipeFlags(64051, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.CASTER, F.ONE_HAND)
	self:AddRecipeMobDrop(64051, 27676, 26708, 26679, 27546)

	-- Twilight Tome -- 64053
	AddRecipe(64053, 350, 45849, Q.COMMON, V.WOTLK, 350, 375, 387, 400)
	self:AddRecipeFlags(64053, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.ONE_HAND)
	self:AddRecipeTrainer(64053, 26977, 26916, 26959, 26995, 33603, 28702)

	-- Glyph of Raptor Strike -- 64246
	AddRecipe(64246, 425, 45735, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64246, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64246, A.CUSTOM, 40)

	-- Glyph of Stoneclaw Totem -- 64247
	AddRecipe(64247, 425, 45778, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64247, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64247, A.CUSTOM, 40)

	-- Glyph of Life Tap -- 64248
	AddRecipe(64248, 425, 45785, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64248, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP, F.CASTER)
	self:AddRecipeAcquire(64248, A.CUSTOM, 40)

	-- Glyph of Scatter Shot -- 64249
	AddRecipe(64249, 425, 45734, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64249, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64249, A.CUSTOM, 40)

	-- Glyph of Soul Link -- 64250
	AddRecipe(64250, 425, 45789, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64250, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64250, A.CUSTOM, 40)

	-- Glyph of Salvation -- 64251
	AddRecipe(64251, 425, 45747, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64251, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64251, A.CUSTOM, 40)

	-- Glyph of Shield Wall -- 64252
	AddRecipe(64252, 425, 45797, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64252, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64252, A.CUSTOM, 40)

	-- Glyph of Explosive Trap -- 64253
	AddRecipe(64253, 425, 45733, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64253, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64253, A.CUSTOM, 40)

	-- Glyph of Holy Shock -- 64254
	AddRecipe(64254, 425, 45746, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64254, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64254, A.CUSTOM, 40)

	-- Glyph of Vigilance -- 64255
	AddRecipe(64255, 425, 45793, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64255, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64255, A.CUSTOM, 40)

	-- Glyph of Barkskin -- 64256
	AddRecipe(64256, 425, 45623, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64256, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64256, A.CUSTOM, 40)

	-- Glyph of Ice Barrier -- 64257
	AddRecipe(64257, 425, 45740, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64257, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64257, A.CUSTOM, 40)

	-- Glyph of Monsoon -- 64258
	AddRecipe(64258, 250, 45622, Q.COMMON, V.WOTLK, 250, 255, 262, 270)
	self:AddRecipeFlags(64258, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(64258, 26916, 30715, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 30711, 26995, 33679, 26977, 30713, 33615)

	-- Glyph of Pain Suppression -- 64259
	AddRecipe(64259, 255, 45760, Q.COMMON, V.WOTLK, 255, 255, 262, 270)
	self:AddRecipeFlags(64259, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(64259, 26916, 30715, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 30710, 26959, 33615, 30711, 33679, 26977, 30713, 28702)

	-- Glyph of Mutilate -- 64260
	AddRecipe(64260, 255, 45768, Q.COMMON, V.WOTLK, 255, 255, 262, 270)
	self:AddRecipeFlags(64260, F.ALLIANCE, F.HORDE, F.TRAINER, F.ROGUE, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(64260, 26916, 30715, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 30711, 26995, 33679, 26977, 30713, 33615)

	-- Glyph of Earth Shield -- 64261
	AddRecipe(64261, 250, 45775, Q.COMMON, V.WOTLK, 250, 255, 262, 270)
	self:AddRecipeFlags(64261, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(64261, 26916, 30715, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 30711, 26995, 33679, 26977, 30713, 33615)

	-- Glyph of Totem of Wrath -- 64262
	AddRecipe(64262, 255, 45776, Q.COMMON, V.WOTLK, 255, 255, 262, 270)
	self:AddRecipeFlags(64262, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(64262, 26916, 30715, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 30711, 26995, 33679, 26977, 30713, 33615)

	-- Glyph of Dark Death -- 64266
	AddRecipe(64266, 275, 45804, Q.COMMON, V.WOTLK, 275, 280, 287, 295)
	self:AddRecipeFlags(64266, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(64266, 26916, 30715, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 30711, 26995, 33679, 26977, 30713, 33615)

	-- Glyph of Disease -- 64267
	AddRecipe(64267, 280, 45805, Q.COMMON, V.WOTLK, 280, 285, 290, 295)
	self:AddRecipeFlags(64267, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(64267, 26916, 30715, 30716, 30717, 33603, 30721, 30706, 30722, 30709, 26959, 30710, 28702, 30711, 26995, 33679, 26977, 30713, 33615)

	-- Glyph of Berserk -- 64268
	AddRecipe(64268, 425, 45601, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64268, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64268, A.CUSTOM, 40)

	-- Glyph of Wild Growth -- 64270
	AddRecipe(64270, 425, 45602, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64270, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64270, A.CUSTOM, 40)

	-- Glyph of Chimera Shot -- 64271
	AddRecipe(64271, 425, 45625, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64271, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64271, A.CUSTOM, 40)

	-- Glyph of Explosive Shot -- 64273
	AddRecipe(64273, 425, 45731, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64273, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64273, A.CUSTOM, 40)

	-- Glyph of Deep Freeze -- 64274
	AddRecipe(64274, 425, 45736, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64274, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64274, A.CUSTOM, 40)

	-- Glyph of Living Bomb -- 64275
	AddRecipe(64275, 425, 45737, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64275, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64275, A.CUSTOM, 40)

	-- Glyph of Arcane Barrage -- 64276
	AddRecipe(64276, 425, 45738, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64276, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64276, A.CUSTOM, 40)

	-- Glyph of Beacon of Light -- 64277
	AddRecipe(64277, 425, 45741, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64277, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64277, A.CUSTOM, 40)

	-- Glyph of Hammer of the Righteous -- 64278
	AddRecipe(64278, 425, 45742, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64278, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64278, A.CUSTOM, 40)

	-- Glyph of Divine Storm -- 64279
	AddRecipe(64279, 425, 45743, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64279, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64279, A.CUSTOM, 40)

	-- Glyph of Dispersion -- 64280
	AddRecipe(64280, 425, 45753, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64280, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64280, A.CUSTOM, 40)

	-- Glyph of Guardian Spirit -- 64281
	AddRecipe(64281, 425, 45755, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64281, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(64281, A.CUSTOM, 40)

	-- Glyph of Penance -- 64282
	AddRecipe(64282, 425, 45756, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64282, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64282, A.CUSTOM, 40)

	-- Glyph of Hymn of Hope -- 64283
	AddRecipe(64283, 425, 45758, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64283, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64283, A.CUSTOM, 40)

	-- Glyph of Hunger for Blood -- 64284
	AddRecipe(64284, 425, 45761, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64284, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64284, A.CUSTOM, 40)

	-- Glyph of Killing Spree -- 64285
	AddRecipe(64285, 425, 45762, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64285, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64285, A.CUSTOM, 40)

	-- Glyph of Shadow Dance -- 64286
	AddRecipe(64286, 425, 45764, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64286, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64286, A.CUSTOM, 40)

	-- Glyph of Thunder -- 64287
	AddRecipe(64287, 425, 45770, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64287, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64287, A.CUSTOM, 40)

	-- Glyph of Feral Spirit -- 64288
	AddRecipe(64288, 425, 45771, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64288, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeAcquire(64288, A.CUSTOM, 40)

	-- Glyph of Riptide -- 64289
	AddRecipe(64289, 425, 45772, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64289, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64289, A.CUSTOM, 40)

	-- Glyph of Haunt -- 64291
	AddRecipe(64291, 425, 45779, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64291, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64291, A.CUSTOM, 40)

	-- Glyph of Chaos Bolt -- 64294
	AddRecipe(64294, 425, 45781, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64294, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64294, A.CUSTOM, 40)

	-- Glyph of Bladestorm -- 64295
	AddRecipe(64295, 425, 45790, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64295, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64295, A.CUSTOM, 40)

	-- Glyph of Shockwave -- 64296
	AddRecipe(64296, 425, 45792, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64296, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64296, A.CUSTOM, 40)

	-- Glyph of Dancing Rune Weapon -- 64297
	AddRecipe(64297, 425, 45799, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64297, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64297, A.CUSTOM, 40)

	-- Glyph of Hungering Cold -- 64298
	AddRecipe(64298, 425, 45800, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64298, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64298, A.CUSTOM, 40)

	-- Glyph of Unholy Blight -- 64299
	AddRecipe(64299, 425, 45803, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64299, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64299, A.CUSTOM, 40)

	-- Glyph of Howling Blast -- 64300
	AddRecipe(64300, 425, 45806, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64300, F.ALLIANCE, F.HORDE, F.DISC, F.DK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64300, A.CUSTOM, 40)

	-- Glyph of Spell Reflection -- 64302
	AddRecipe(64302, 425, 45795, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64302, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64302, A.CUSTOM, 40)

	-- Glyph of Cloak of Shadows -- 64303
	AddRecipe(64303, 425, 45769, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64303, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64303, A.CUSTOM, 40)

	-- Glyph of Kill Shot -- 64304
	AddRecipe(64304, 425, 45732, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64304, F.ALLIANCE, F.HORDE, F.DISC, F.HUNTER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64304, A.CUSTOM, 40)

	-- Glyph of Divine Plea -- 64305
	AddRecipe(64305, 425, 45745, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64305, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64305, A.CUSTOM, 40)

	-- Glyph of Savage Roar -- 64307
	AddRecipe(64307, 425, 45604, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64307, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64307, A.CUSTOM, 40)

	-- Glyph of Shield of Righteousness -- 64308
	AddRecipe(64308, 425, 45744, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64308, F.ALLIANCE, F.HORDE, F.DISC, F.PALADIN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64308, A.CUSTOM, 40)

	-- Glyph of Mind Sear -- 64309
	AddRecipe(64309, 425, 45757, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64309, F.ALLIANCE, F.HORDE, F.DISC, F.PRIEST, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64309, A.CUSTOM, 40)

	-- Glyph of Tricks of the Trade -- 64310
	AddRecipe(64310, 425, 45767, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64310, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64310, A.CUSTOM, 40)

	-- Glyph of Shadowflame -- 64311
	AddRecipe(64311, 425, 45783, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64311, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64311, A.CUSTOM, 40)

	-- Glyph of Enraged Regeneration -- 64312
	AddRecipe(64312, 425, 45794, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64312, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64312, A.CUSTOM, 40)

	-- Glyph of Nourish -- 64313
	AddRecipe(64313, 425, 45603, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64313, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64313, A.CUSTOM, 40)

	-- Glyph of Mirror Image -- 64314
	AddRecipe(64314, 425, 45739, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64314, F.ALLIANCE, F.HORDE, F.DISC, F.MAGE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64314, A.CUSTOM, 40)

	-- Glyph of Fan of Knives -- 64315
	AddRecipe(64315, 425, 45766, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64315, F.ALLIANCE, F.HORDE, F.DISC, F.ROGUE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64315, A.CUSTOM, 40)

	-- Glyph of Hex -- 64316
	AddRecipe(64316, 425, 45777, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64316, F.ALLIANCE, F.HORDE, F.DISC, F.SHAMAN, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64316, A.CUSTOM, 40)

	-- Glyph of Demonic Circle -- 64317
	AddRecipe(64317, 425, 45782, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64317, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64317, A.CUSTOM, 40)

	-- Glyph of Metamorphosis -- 64318
	AddRecipe(64318, 425, 45780, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(64318, F.ALLIANCE, F.HORDE, F.DISC, F.WARLOCK, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(64318, A.CUSTOM, 40)

	-- Glyph of Survival Instincts -- 65245
	AddRecipe(65245, 425, 46372, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(65245, F.ALLIANCE, F.HORDE, F.DISC, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(65245, A.CUSTOM, 40)

	-- Glyph of Claw -- 67600
	AddRecipe(67600, 100, 48720, Q.COMMON, V.WOTLK, 100, 105, 110, 115)
	self:AddRecipeFlags(67600, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(67600, 30722, 33679, 28702, 30710, 30706, 33603, 26959)

	-- Glyph of Command -- 68166
	AddRecipe(68166, 355, 49084, Q.COMMON, V.WOTLK, 355, 355, 360, 365)
	self:AddRecipeFlags(68166, F.ALLIANCE, F.HORDE, F.DISC, F.WARRIOR, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(68166, A.CUSTOM, 14)

	-- Runescroll of Fortitude -- 69385
	AddRecipe(69385, 440, 49632, Q.COMMON, V.WOTLK, 440, 440, 442, 460)
	self:AddRecipeFlags(69385, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(69385, 26977, 26916, 28702, 26995, 33603, 26959)

	-- Glyph of Rapid Rejuvenation -- 71015
	AddRecipe(71015, 375, 50125, Q.COMMON, V.WOTLK, 375, 380, 382, 385)
	self:AddRecipeFlags(71015, F.ALLIANCE, F.HORDE, F.VENDOR, F.DRUID, F.IBOE, F.RBOE, F.HEALER)
	self:AddRecipeVendor(71015, 28723)

	-- Glyph of Eternal Water -- 71101
	AddRecipe(71101, 250, 50045, Q.COMMON, V.WOTLK, 250, 255, 260, 265)
	self:AddRecipeFlags(71101, F.ALLIANCE, F.HORDE, F.VENDOR, F.MAGE, F.IBOE, F.RBOE, F.CASTER)
	self:AddRecipeVendor(71101, 28723, 30734, 30735)

	-- Glyph of Quick Decay -- 71102
	AddRecipe(71102, 375, 50077, Q.COMMON, V.WOTLK, 375, 380, 382, 385)
	self:AddRecipeFlags(71102, F.ALLIANCE, F.HORDE, F.VENDOR, F.WARLOCK, F.IBOE, F.RBOE, F.CASTER)
	self:AddRecipeVendor(71102, 28723)

	return num_recipes
end
