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

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("MAGE", 70000, 5, {
	COOLDOWN = {
		   1953, -- Blink
		  31687, -- Summon Water Elemental
		  44425, -- Arcane Barrage
		  55342, -- Mirror Image
		  84714, -- Frozen Orb
		 153626, -- Arcane Orb
		 157980, -- Supernova (knockback)
		 190356, -- Blizzard
		 194466, -- Phoenix's Flames (Fire artifact)
		 198929, -- Cinderstorm
		 205029, -- Flame On
		 205032, -- Charged Up
		 212653, -- Shimmer
		[  2139] = "INTERRUPT", -- Counterspell
		[ 30449] = "DISPEL HARMFUL", -- Spellsteal
		AURA = {
			HARMFUL = {
				135029, -- Water Jet (Water Elemental)
				155158, -- Meteor
				157981, -- Blast Wave (slow)
				194522, -- Blast Furnace (Fire artifact)
				212792, -- Cone of Cold (slow)
				217694, -- Living Bomb
				224968, -- Mark of Aluneth (Arcane artifact)
				CROWD_CTL = {
					  122, -- Frost Nova (root)
					31661, -- Dragon's Breath (disorient)
					33395, -- Freeze (Water Elemental) (root)
					82691, -- Ring of Frost (incapacitate)
				},
			},
			PERSONAL = {
				 108839, -- Ice Floes
				 113862, -- Greater Invisibility (dmg reduction)
 				 116014, -- Rune of Power
				 194316, -- Cauterizing Blink (Fire artifact)
				 205025, -- Presence of Mind
				 210126, -- Arcane Familiar
				 212799, -- Displacement
				 227482, -- Scorched Earth (fire artifact)
				[ 12051] = "MANA_REGEN", -- Evocation
				[ 41425] = "INVERT_AURA", -- Hypothermia
				SURVIVAL = {
					    66, -- Invisibility (Fading)
					 11426, -- Ice Barrier
					 32612, -- Invisibility
					 45438, -- Ice Block
					110960, -- Greater Invisibility
				},
				BURST = {
					 12042, -- Arcane Power
					 12472, -- Icy Veins
					190319, -- Combustion
				}
			},
		},
	},
	AURA = {
		HELPFUL = {
			130, -- Slow Fall
		},
		HARMFUL = {
			  2120, -- Flamestrike (slow)
			 31589, -- Slow (slow)
			114923, -- Nether Tempest
			205708, -- Chilled (slow)
			210824, -- Touch of the Magi (Arcane artifact)
			226757, -- Conflagration
			228354, -- Flurry (slow)
			228358, -- Flurry (frozen)
			CROWD_CTL = {
				   118, -- Polymorph (incapacitate)
				 28271, -- Polymorph: Turtle (incapacitate)
				 28272, -- Polymorph: Pig (incapacitate)
				 61305, -- Polymorph: Black Cat (incapacitate)
				 61721, -- Polymorph: Rabbit (incapacitate)
				 61780, -- Polymorph: Turkey
				126819, -- Polymorph: Pig (porcupine) (incapacitate)
				161353, -- Polymorph: Polar Bear Cub (incapacitate)
				161354, -- Polymorph: Monkey (incapacitate)
				161355, -- Polymorph: Penguin (incapacitate)
				161372, -- Polymorph: Monkey (incapacitate)
			},
		},
		PERSONAL = {
			 44544, -- Fingers of Frost
			 48108, -- Hot Streak!
			 79683, -- Arcane Missiles!
			157644, -- Enhanced Pyrotechnics
			190446, -- Brain Freeze
			198924, -- Quickening
			205473, -- Icicles
		},
	},
}, {
	-- map aura to provider(s)
	[ 32612] = 66, -- Invisibility
	[ 41425] = 45438, -- Hypothermia <- Ice Block
	[ 44544] = 112965, -- Fingers of Frost
	[ 48108] = 195283, -- Hot Streak! <- Hot Streak
	[ 79683] = 5143, -- Arcane Missiles! -> Arcane Missiles
	[ 82691] = 113724, -- Ring of Frost
	[110960] = 110959, -- Greater Invisibility
	[113862] = 110959, -- Greater Invisibility (dmg reduction)
	[116014] = 116011, -- Rune of Power
	[155158] = 153561, -- Meteor
	[157644] = 157642, -- Enhanced Pyrotechnics
	[190446] = 190447, -- Brain Freeze
	[194316] = 194318, -- Cauterizing Blink (Fire artifact)
	[194522] = 194487, -- Blast Furnace (Fire artifact)
	[198924] = 198923, -- Quickening
	[205473] = 76613, -- Icicles <- Mastery: Icicles
	[205708] = { -- Chilled (slow)
		   116, -- Frostbolt
		 84714, -- Frozen Orb
		190356, -- Blizzard
	},
	[210126] = 205022, -- Arcane Familiar
	[210824] = 210725, -- Touch of the Magi
	[212792] = 120, -- Cone of Cold (slow)
	[212799] = 195676, -- Displacement
	[217694] = 44457, -- Living Bomb
	[226757] = 205023, -- Conflagration
	[227482] = 227481, -- Scorched Earth (Fire artifact)
	[228354] = 44614, -- Flurry (slow)
	[228358] = 190447, -- Flurry (frozen) <- Brain Freeze
}, {
	-- map aura to modified spell(s)
	[ 44544] = 30455, -- Fingers of Frost -> Ice Lance
	[ 48108] = { -- Hot Streak!
		 2120, -- Flamestrike
		11366, -- Pyroblast
	},
	[157644] = 133, -- Enhanced Pyrotechnics -> Fireball
	[190446] = 44614, -- Brain Freeze -> Flurry
	[194316] = { -- Cauterizing Blink (Fire artifact)
		  1953, -- Blink
		212653, -- Shimmer
	},
	[194522] = 108853, -- Blast Furnace (Fire artifact) -> Fire Blast
	[198924] = { -- Quickening
		 1449, -- Arcane Explosion
		 5143, -- Arcane Missiles
		30451, -- Arcane Blast
	},
	[205025] = 30451, -- Presence of Mind -> Arcane Blast
	[205473] = 116, -- Icicles -> Frostbolt
	[210824] = 30451, -- Touch of the Magi (Arcane artifact)
	[226757] = 133, -- Conflagration -> Fireball
	[227482] = 2948, -- Scorched Earth (Fire artifact) -> Scorch
	[228358] = 44614, -- Flurry (frozen) -> Flurry -- TODO: Ice Lance better?
})
