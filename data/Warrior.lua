--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2014 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

--[[
TODO:
	- All of Fury spells and procs
	- Mortal wounds on Mortal Strike
	- Thunder Clap needs to be added to snare category in DRData
	- Level 100 talents

--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end

lib:__RegisterSpells("WARRIOR", "60000", 3, {
	-- Map aura to provider
	COOLDOWN = {
		INTERRUPT = {
				  6552, -- Pummel
		},
		AURA = {
			PERSONAL = {
				107574, -- Avatar
				 18499, -- Berserker Rage
				 46924, -- Bladestorm
				 12292, -- Bloodbath (Self Buff)
				125565, -- Demoralizing Shout (Prot)
				118038, -- Die By The Sword (Arms, Fury)
				 55694, -- Enraged Regeneration
				 12975, -- Last Stand (Prot)
				114192, -- Mocking Banner (Prot)
				  1719, -- Recklessness (Arms, Fury)
				132404, -- Shield Block (Prot)
				   871, -- Shield Wall (Prot)
				 23920, -- Spell Reflect
				 12328, -- Sweeping Strikes (Arms)
			},
			HELPFUL = {
				147833, -- Intervene
				114028, -- Mass Spell Reflection
				 97463, -- Rallying Cry (Arms, Fury)
				114029, -- Safeguard
				114030, -- Vigilance
			},
			HARMFUL = {
				113344, -- Bloodbath (dot)
				 86346, -- Colossus Smash (Arms)
				 18498, -- Silence (Glyph of Gag Order)
				132168, -- Shockwave
				132169, -- Storm Bolt
				105771, -- Warbringer Root
			},
		},
	},
	AURA = {
		PERSONAL = {
			 12880, -- Enrage
			112048, -- Shield Barrier (Prot)
			139958, -- Sudden Execute
			 52437, -- Sudden Death
			 50227, -- Sword and Board (Prot)
			122510, -- Ultimatum (Prot)
			 32216, -- Victory Rush - Victorious
			 93098, -- Vengeance (Prot)
			169686, -- Unyielding Strikes (Prot)
			 [1464] = "INVERT_AURA", -- Slam (Arms)
		},
		HARMFUL = {
			115767, -- Deep Wounds

			   772, -- Rend
			  7922, -- Warbringer Stun
		},
	},
	RAIDBUFF = {
		[   469] =     "STAMINA", -- Commanding Shout
		[  6673] =   "ATK_POWER", -- Battle Shout
		[167188] = "VERSATILITY", -- Inspiring Presence
	},
	DISPEL = {
		[23922] = "HARMFUL",   -- Shield Slam (Glyph of Shield Slam) (Prot)
	},
}, {
	-- Map aura to provider
	[113344] =                   12292, -- Bloodbath (dot tracking)
	[125565] =                    1160, -- Demo Shout Self Buff
	[ 12880] =                   18499, -- Enrage status on Berserker Rage
	[ 18498] =        { 57755, 6552, }, -- Heroic Throw, Pummel (Gag Order) (Silence effect)
	[115767] =                   20243, -- Devastate (Deep Wounds)
	[ 97463] =                   97462, -- Rallying Cry
	[132404] =                    2565, -- Shield Block
	[132168] =                   46968, -- Shockwave
	[132169] =                  107570, -- Storm Bolt
	[169686] =                      78, -- Unyielding Strikes, Devastate => Low cost Heroic Strike
	[122510] =                      78, -- Ultimatum, Shield Slam => Free Heroic Strike
	[ 32216] =      { 34428, 103840, }, -- Victorious, Killing Blow => Victory Rush, Impending Victory
	[  7922] =                     100, -- Warbringer Stun (Charge)
	[147833] =                    3411, -- Intervene
}, {
	-- Map aura to modified spell(s)
})
