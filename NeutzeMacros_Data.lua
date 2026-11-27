-- Generated: the owner's class macros (WoW Forever). One ability per macro; stance switch first where needed.
NeutzeMacros = NeutzeMacros or {}
NeutzeMacros.SPECS = {
  WARRIOR = {"Arms", "Fury", "Protection"},
  SHAMAN = {"Elemental", "Enhancement", "Restoration"},
  PRIEST = {"Discipline", "Holy", "Shadow"},
  HUNTER = {"Beast Mastery", "Marksmanship", "Survival"},
  WARLOCK = {"Affliction", "Demonology", "Destruction"},
  MAGE = {"Arcane", "Fire", "Frost"},
  ROGUE = {"Assassination", "Combat", "Subtlety"},
  PALADIN = {"Holy", "Protection", "Retribution"},
  DRUID = {"Balance", "Feral", "Restoration"},
}
NeutzeMacros.DATA = {
  WARRIOR = {
    { name="Battle", body=[==[#showtooltip
/cast [stance:2] Battle Stance;Defensive Stance]==] },
    { name="Berserker", body=[==[#showtooltip
/cast [stance:3] Battle Stance; Berserker Stance]==] },
    { name="Berserker Rage", body=[==[#showtooltip Berserker Rage
/startattack [harm,nodead]
/cast Berserker Stance
/cast Berserker Rage]==] },
    { name="Bloodrage", body=[==[#showtooltip Bloodrage
/cast Bloodrage]==] },
    { name="Challenge Shout", body=[==[#showtooltip Challenging Shout
/cast Challenging Shout
/use Limited Invulnerability Potion]==], specs={"Protection"} },
    { name="Charge", body=[==[#showtooltip Charge
/startattack [harm,nodead]
/cast [stance:3] Defensive Stance
/cast [@mouseover,harm,nodead][harm,nodead] Charge]==] },
    { name="Cleave", body=[==[#showtooltip  Cleave
/startattack [harm,nodead]
/castsequence reset=6/target Shield Slam, Revenge
/cast [nostance:2] Defensive Stance; Shield Block
/cast Cleave
/use 13]==], specs={"Protection"} },
    { name="Concussion Blow", body=[==[#showtooltip Concussion Blow
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Concussion Blow]==], specs={"Protection"} },
    { name="Death Wish", body=[==[#showtooltip Death Wish
/cast Death Wish
/use 13
/use 14]==], specs={"Fury"} },
    { name="Disarm", body=[==[#showtooltip Disarm
/startattack [harm,nodead]
/cast [nostance:2] Defensive Stance
/cast [@mouseover,harm,nodead][harm,nodead] Disarm]==] },
    { name="Execute", body=[==[#showtooltip Execute
/startattack [harm,nodead]
/cast [stance:2] Battle Stance
/cast [@mouseover,harm,nodead][harm,nodead] Execute]==], specs={"Arms", "Fury"} },
    { name="Hamstring", body=[==[#showtooltip Hamstring
/startattack [harm,nodead]
/cast [stance:2] Battle Stance
/cast [@mouseover,harm,nodead][harm,nodead] Hamstring]==] },
    { name="Heroic Strike", body=[==[#showtooltip Heroic Strike
/startattack [harm,nodead]
/castsequence reset=6/target Shield Slam, Revenge
/cast [nostance:2] Defensive Stance; Shield Block
/cast heroic strike
/use 13]==], specs={"Protection"} },
    { name="Intercept", body=[==[#showtooltip Intercept
/startattack [harm,nodead]
/cast [nostance:3] Berserker Stance
/cast [@mouseover,harm,nodead][harm,nodead] Intercept]==], specs={"Arms", "Fury"} },
    { name="Intim Shout", body=[==[#showtooltip Intimidating Shout
/stopattack
/cast Intimidating Shout]==] },
    { name="Mocking Blow", body=[==[#showtooltip Mocking Blow
/startattack [harm,nodead]
/cast [nostance:1] Battle Stance
/cast [@mouseover,harm,nodead][harm,nodead] Mocking Blow]==] },
    { name="Overpower", body=[==[#showtooltip Overpower
/stopcasting [nostance:1]
/startattack [harm,nodead]
/cast [nostance:1] Battle Stance
/cast Overpower]==], specs={"Arms", "Fury"} },
    { name="Pummel", body=[==[#showtooltip Pummel
/stopcasting
/cast [nostance:3] Berserker Stance
/cast [@focus,harm,nodead][@mouseover,harm,nodead][harm,nodead] Pummel]==] },
    { name="Recklessness", body=[==[#showtooltip Recklessness
/cast [nostance:3] Berserker Stance
/cast Recklessness
/use Mighty Rage Potion
/use 13
/use 14]==], specs={"Arms", "Fury"} },
    { name="Rend", body=[==[#showtooltip Rend
/startattack [harm,nodead]
/cast [nostance:1] Battle Stance
/cast [@mouseover,harm,nodead][harm,nodead] Rend]==] },
    { name="Retaliation", body=[==[#showtooltip Retaliation
/cast [nostance:1] Battle Stance
/cast [stance:1] Retaliation
/cast [stance:1] Defensive Stance]==] },
    { name="Revenge", body=[==[#showtooltip Revenge
/startattack [harm,nodead]
/cast [nostance:2] Defensive Stance; Revenge
/use 13]==], specs={"Protection"} },
    { name="Shield Bash", body=[==[#showtooltip Shield Bash
/stopcasting
/cast [stance:3] Defensive Stance
/cast [@mouseover,harm,nodead][harm,nodead] Shield Bash]==], specs={"Protection"} },
    { name="Shield Block", body=[==[#showtooltip Shield Block
/cast [nostance:2] Defensive Stance
/cast [worn:Shields] Shield Block]==], specs={"Protection"} },
    { name="Shield Slam", body=[==[#showtooltip 
/startattack [harm,nodead]
/castsequence reset=6/target Shield Slam, Revenge
/cast [nostance:2] Defensive Stance; Shield Block
/use 13]==], specs={"Protection"} },
    { name="Shield Wall", body=[==[#showtooltip Shield Wall
/cast [nostance:2] Defensive Stance
/cast [equipped:Shields] Shield Wall
/cast Last Stand]==], specs={"Protection"} },
    { name="Shoot", body=[==[#showtooltip
/cast [equipped:Thrown] Throw; [equipped:Crossbows] Shoot Crossbow; [equipped:Guns] Shoot Gun; Shoot Bow]==] },
    { name="Stop Queue", body=[==[#showtooltip
/stopcasting]==] },
    { name="Sunder Armor", body=[==[#showtooltip Sunder Armor
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Sunder Armor]==] },
    { name="Taunt", body=[==[#showtooltip Taunt
/startattack [harm,nodead]
/cast [nostance:2] Defensive Stance
/cast [@mouseover,harm,nodead][harm,nodead] Taunt]==] },
    { name="Thunder", body=[==[#showtooltip 
/startattack [harm,nodead]
/cast [stance:3] Defensive Stance
/castsequence reset=6/target Thunder Clap, Demoralizing Shout]==] },
    { name="Victory Rush", body=[==[#showtooltip Victory Rush
/targetenemy [noharm][dead]
/cast [@mouseover,harm,nodead][] Victory Rush]==] },
    { name="Weapon Buff", body=[==[#showtooltip
/use [equipped:One-Handed Maces][equipped:Two-Handed Maces][equipped:Staves] Solid Weightstone; Solid Sharpening Stone
/use 16
/click StaticPopup1Button1]==] },
    { name="Whirlwind", body=[==[#showtooltip Whirlwind
/stopcasting [nostance:3]
/startattack [harm,nodead]
/cast [nostance:3] Berserker Stance
/cast Whirlwind]==], specs={"Arms", "Fury"} },
  },
  SHAMAN = {
    { name="Buff", body=[==[/castsequence reset=10 Rockbiter Weapon, FInd Treasure, Find Herbs]==] },
    { name="Chain Heal", body=[==[#showtooltip Chain Heal
/startattack [harm,nodead]
/cast [@mouseover,help,nodead][help,nodead][@player] Chain Heal]==], specs={"Restoration"} },
    { name="Chain Lightning", body=[==[#showtooltip Chain Lightning
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Chain Lightning]==] },
    { name="Earth Shock", body=[==[#showtooltip Earth Shock
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Earth Shock]==] },
    { name="Fire Nova", body=[==[#showtooltip Fire Nova
/startattack [harm,nodead]
/cast Fire Nova]==] },
    { name="Flame Shock", body=[==[#showtooltip Flame Shock
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Flame Shock]==] },
    { name="Frost Shock", body=[==[#showtooltip Frost Shock
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Frost Shock]==] },
    { name="Healing Wave", body=[==[#showtooltip Healing Wave
/startattack [harm,nodead]
/cast [@mouseover,help,nodead][help,nodead][@player] Healing Wave]==] },
    { name="Interrupt", body=[==[#showtooltip Earth Shock
/stopcasting
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Earth Shock(Rank 1)]==] },
    { name="Lesser HW", body=[==[#showtooltip Lesser Healing Wave
/startattack [harm,nodead]
/cast [@mouseover,help,nodead][help,nodead][@player] Lesser Healing Wave]==] },
    { name="Lightning Bolt", body=[==[#showtooltip Lightning Bolt
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Lightning Bolt]==] },
    { name="Lightning Shield", body=[==[#showtooltip Lightning Shield
/startattack [harm,nodead]
/cast Lightning Shield]==] },
    { name="Purge", body=[==[#showtooltip Purge
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Purge]==] },
    { name="Stormstrike", body=[==[#showtooltip Stormstrike
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Stormstrike]==], specs={"Enhancement"} },
    { name="Weapon Buff", body=[==[#showtooltip
/use [equipped:One-Handed Maces][equipped:Two-Handed Maces][equipped:Staves] Rough Weightstone; Rough Sharpening Stone
/use 16
/click StaticPopup1Button1]==] },
  },
  PRIEST = {
    { name="Cure Disease", body=[==[#showtooltip Cure Disease
/cast [@mouseover,help,nodead][help,nodead][@player] Cure Disease]==] },
    { name="Dispel", body=[==[#showtooltip Dispel Magic
/cast [@mouseover,help,nodead][@mouseover,harm,nodead][help,nodead][harm,nodead][@player] Dispel Magic]==] },
    { name="Fade", body=[==[#showtooltip Fade
/cast Fade]==] },
    { name="Flash Heal", body=[==[#showtooltip Flash Heal
/cast [@mouseover,help,nodead][help,nodead][@player] Flash Heal]==] },
    { name="Fortitude", body=[==[#showtooltip Power Word: Fortitude
/cast [@mouseover,help,nodead][help,nodead][@player] Power Word: Fortitude]==] },
    { name="Greater Heal", body=[==[#showtooltip Greater Heal
/cast [@mouseover,help,nodead][help,nodead][@player] Greater Heal]==], specs={"Discipline", "Holy"} },
    { name="Heal", body=[==[#showtooltip Heal
/cast [@mouseover,help,nodead][help,nodead][@player] Heal]==] },
    { name="Holy Fire", body=[==[#showtooltip Holy Fire
/cast [@mouseover,harm,nodead][harm,nodead] Holy Fire]==] },
    { name="Inner Fire", body=[==[#showtooltip Inner Fire
/cast Inner Fire]==] },
    { name="Inner Focus", body=[==[#showtooltip Inner Focus
/cast Inner Focus]==], specs={"Discipline", "Holy"} },
    { name="Lesser Heal", body=[==[#showtooltip Lesser Heal
/cast [@mouseover,help,nodead][help,nodead][@player] Lesser Heal]==] },
    { name="Mind Blast", body=[==[#showtooltip Mind Blast
/cast [@mouseover,harm,nodead][harm,nodead] Mind Blast]==] },
    { name="Mind Flay", body=[==[#showtooltip Mind Flay
/cast [@mouseover,harm,nodead][harm,nodead] Mind Flay]==], specs={"Shadow"} },
    { name="PW Shield", body=[==[#showtooltip Power Word: Shield
/cast [@mouseover,help,nodead][help,nodead][@player] Power Word: Shield]==] },
    { name="Power Infusion", body=[==[#showtooltip Power Infusion
/cast [@mouseover,help,nodead][help,nodead][@player] Power Infusion]==], specs={"Discipline"} },
    { name="Prayer of Heal", body=[==[#showtooltip Prayer of Healing
/cast Prayer of Healing]==], specs={"Discipline", "Holy"} },
    { name="Psychic Scream", body=[==[#showtooltip Psychic Scream
/cast Psychic Scream]==] },
    { name="Renew", body=[==[#showtooltip Renew
/cast [@mouseover,help,nodead][help,nodead][@player] Renew]==] },
    { name="SW Pain", body=[==[#showtooltip Shadow Word: Pain
/cast [@mouseover,harm,nodead][harm,nodead] Shadow Word: Pain]==] },
    { name="Shadowform", body=[==[#showtooltip Shadowform
/cast Shadowform]==], specs={"Shadow"} },
    { name="Silence", body=[==[#showtooltip Silence
/cast [@mouseover,harm,nodead][harm,nodead] Silence]==], specs={"Shadow"} },
    { name="Smite", body=[==[#showtooltip Smite
/cast [@mouseover,harm,nodead][harm,nodead] Smite]==] },
    { name="Vampiric Embrace", body=[==[#showtooltip Vampiric Embrace
/cast Vampiric Embrace]==], specs={"Shadow"} },
    { name="Weapon Buff", body=[==[#showtooltip
/use Minor Wizard Oil
/use 16
/click StaticPopup1Button1]==] },
  },
  HUNTER = {
    { name="Aimed Shot", body=[==[#showtooltip Aimed Shot
/cast [@mouseover,harm,nodead][harm,nodead] Aimed Shot
/cast !Auto Shot]==], specs={"Marksmanship"} },
    { name="Arcane Shot", body=[==[#showtooltip Arcane Shot
/petattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Arcane Shot
/cast !Auto Shot]==] },
    { name="Aspect", body=[==[#showtooltip
/castsequence Aspect of the Hawk, Aspect of the Cheetah]==] },
    { name="Auto Shot", body=[==[#showtooltip Auto Shot
/targetenemy [noharm][dead]
/petattack [harm,nodead]
/cast !Auto Shot]==] },
    { name="Bestial Wrath", body=[==[#showtooltip Bestial Wrath
/petattack [harm,nodead]
/cast Bestial Wrath]==], specs={"Beast Mastery"} },
    { name="Concussive Shot", body=[==[#showtooltip Concussive Shot
/cast [@mouseover,harm,nodead][harm,nodead] Concussive Shot
/cast !Auto Shot]==] },
    { name="Cooldowns", body=[==[#showtooltip Rapid Fire
/cast Bestial Wrath
/use 13
/cast Rapid Fire]==] },
    { name="Disengage", body=[==[#showtooltip Disengage
/cast Disengage]==] },
    { name="Feed Pet", body=[==[#showtooltip Feed Pet
/cast Feed Pet
/use PET FOOD NAME]==] },
    { name="Feign Death", body=[==[#showtooltip Feign Death
/stopcasting
/petfollow
/cast Feign Death]==] },
    { name="Flare", body=[==[#showtooltip Flare
/cast [@cursor] Flare]==] },
    { name="Freezing Trap", body=[==[#showtooltip Freezing Trap
/cast Freezing Trap]==] },
    { name="Hunter's Mark", body=[==[#showtooltip Hunter's Mark
/petattack [@mouseover,harm,nodead][harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Hunter's Mark
/cast Dash
/cast Dive
/cast Charge
/cast !Auto Shot]==] },
    { name="Intimidation", body=[==[#showtooltip Intimidation
/petattack [harm,nodead]
/cast Intimidation]==], specs={"Beast Mastery"} },
    { name="Mend Pet", body=[==[#showtooltip Mend Pet
/cast [@pet,exists,nodead] Mend Pet]==] },
    { name="Mongoose Bite", body=[==[#showtooltip Mongoose Bite
/startattack [harm,nodead]
/cast Mongoose Bite
/cast Raptor Strike]==] },
    { name="Multi-Shot", body=[==[#showtooltip Multi-Shot
/cast [@mouseover,harm,nodead][harm,nodead] Multi-Shot
/cast !Auto Shot]==] },
    { name="Pet Up", body=[==[#showtooltip
/cast [nopet] Call Pet
/cast [@pet,dead][nopet] Revive Pet]==] },
    { name="Serpent Sting", body=[==[#showtooltip Serpent Sting
/cast [@mouseover,harm,nodead][harm,nodead] Serpent Sting
/cast !Auto Shot]==] },
    { name="Summon Hawk", body=[==[#showtooltip Summon Hawk
/petattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Summon Hawk]==] },
    { name="Volley", body=[==[#showtooltip Volley
/cast [@cursor] Volley]==] },
    { name="Weapon Buff", body=[==[#showtooltip
/use [equipped:One-Handed Maces][equipped:Two-Handed Maces][equipped:Staves] Rough Weightstone; Rough Sharpening Stone
/use 16
/click StaticPopup1Button1]==] },
    { name="Wing Clip", body=[==[#showtooltip Wing Clip
/startattack [harm,nodead]
/cast Wing Clip
/cast Raptor Strike]==] },
  },
  WARLOCK = {
    { name="Agony", body=[==[#showtooltip Curse of Agony
/cast [@mouseover,harm,nodead][harm,nodead] Curse of Agony]==] },
    { name="Banish", body=[==[#showtooltip Banish
/cast [@mouseover,harm,nodead][harm,nodead] Banish]==] },
    { name="Conflagrate", body=[==[#showtooltip Conflagrate
/cast [@mouseover,harm,nodead][harm,nodead] Conflagrate]==], specs={"Destruction"} },
    { name="Corruption", body=[==[#showtooltip Corruption
/cast [@mouseover,harm,nodead][harm,nodead] Corruption]==] },
    { name="Death Coil", body=[==[#showtooltip Death Coil
/cast [@mouseover,harm,nodead][harm,nodead] Death Coil]==] },
    { name="Demon Armor", body=[==[#showtooltip Demon Armor
/cast Demon Armor]==] },
    { name="Demon Skin", body=[==[#showtooltip Demon Skin
/cast Demon Skin]==] },
    { name="Drain Life", body=[==[#showtooltip Drain Life
/cast [@mouseover,harm,nodead][harm,nodead] Drain Life]==] },
    { name="Drain Mana", body=[==[#showtooltip Drain Mana
/cast [@mouseover,harm,nodead][harm,nodead] Drain Mana]==] },
    { name="Drain Soul", body=[==[#showtooltip Drain Soul
/cast [@mouseover,harm,nodead][harm,nodead] Drain Soul]==] },
    { name="Elements", body=[==[#showtooltip Curse of the Elements
/cast [@mouseover,harm,nodead][harm,nodead] Curse of the Elements]==] },
    { name="Fear", body=[==[#showtooltip Fear
/cast [@mouseover,harm,nodead][harm,nodead] Fear]==] },
    { name="Health Funnel", body=[==[#showtooltip Health Funnel
/cast [@pet,exists,nodead] Health Funnel]==] },
    { name="Howl of Terror", body=[==[#showtooltip Howl of Terror
/cast Howl of Terror]==] },
    { name="Immolate", body=[==[#showtooltip Immolate
/cast [@mouseover,harm,nodead][harm,nodead] Immolate]==] },
    { name="Life Tap", body=[==[#showtooltip Life Tap
/cast Life Tap]==] },
    { name="Rain of Fire", body=[==[#showtooltip Rain of Fire
/cast [@cursor] Rain of Fire]==] },
    { name="Searing Pain", body=[==[#showtooltip Searing Pain
/cast [@mouseover,harm,nodead][harm,nodead] Searing Pain]==] },
    { name="Shadow Bolt", body=[==[#showtooltip Shadow Bolt
/cast [@mouseover,harm,nodead][harm,nodead] Shadow Bolt]==] },
    { name="Shadowburn", body=[==[#showtooltip Shadowburn
/cast [@mouseover,harm,nodead][harm,nodead] Shadowburn]==], specs={"Destruction"} },
    { name="Siphon Life", body=[==[#showtooltip Siphon Life
/cast [@mouseover,harm,nodead][harm,nodead] Siphon Life]==], specs={"Affliction"} },
    { name="Soulstone", body=[==[#showtooltip Soulstone Resurrection
/cast [@mouseover,help,nodead][help,nodead][@player] Soulstone Resurrection]==] },
    { name="Tongues", body=[==[#showtooltip Curse of Tongues
/cast [@mouseover,harm,nodead][harm,nodead] Curse of Tongues]==] },
    { name="Weakness", body=[==[#showtooltip Curse of Weakness
/cast [@mouseover,harm,nodead][harm,nodead] Curse of Weakness]==] },
    { name="Weapon Buff", body=[==[#showtooltip
/use Minor Wizard Oil
/use 16
/click StaticPopup1Button1]==] },
  },
  MAGE = {
    { name="Arcane Explosion", body=[==[#showtooltip Arcane Explosion
/cast Arcane Explosion]==] },
    { name="Arcane Intellect", body=[==[#showtooltip Arcane Intellect
/cast [@mouseover,help,nodead][help,nodead][@player] Arcane Intellect]==] },
    { name="Arcane Missiles", body=[==[#showtooltip Arcane Missiles
/cast [@mouseover,harm,nodead][harm,nodead] Arcane Missiles]==] },
    { name="Blink", body=[==[#showtooltip Blink
/cast Blink]==] },
    { name="Blizzard", body=[==[#showtooltip Blizzard
/cast [@cursor] Blizzard]==] },
    { name="Cold Snap", body=[==[#showtooltip Cold Snap
/cast Cold Snap]==], specs={"Frost"} },
    { name="Cone of Cold", body=[==[#showtooltip Cone of Cold
/cast Cone of Cold]==] },
    { name="Counterspell", body=[==[#showtooltip Counterspell
/stopcasting
/cast [@mouseover,harm,nodead][harm,nodead] Counterspell]==] },
    { name="Decurse", body=[==[#showtooltip Remove Lesser Curse
/cast [@mouseover,help,nodead][help,nodead][@player] Remove Lesser Curse]==] },
    { name="Evocation", body=[==[#showtooltip Evocation
/cast Evocation]==] },
    { name="Fire Blast", body=[==[#showtooltip Fire Blast
/cast [@mouseover,harm,nodead][harm,nodead] Fire Blast]==] },
    { name="Fireball", body=[==[#showtooltip Fireball
/cast [@mouseover,harm,nodead][harm,nodead] Fireball]==] },
    { name="Flamestrike", body=[==[#showtooltip Flamestrike
/cast [@cursor] Flamestrike]==] },
    { name="Frost Armor", body=[==[#showtooltip Frost Armor
/cast Frost Armor]==] },
    { name="Frost Nova", body=[==[#showtooltip Frost Nova
/cast Frost Nova]==] },
    { name="Frostbolt", body=[==[#showtooltip Frostbolt
/cast [@mouseover,harm,nodead][harm,nodead] Frostbolt]==] },
    { name="Ice Barrier", body=[==[#showtooltip Ice Barrier
/cast Ice Barrier]==], specs={"Frost"} },
    { name="Ice Block", body=[==[#showtooltip Ice Block
/cast Ice Block]==] },
    { name="Mana Shield", body=[==[#showtooltip Mana Shield
/cast Mana Shield]==] },
    { name="Polymorph", body=[==[#showtooltip Polymorph
/cast [@mouseover,harm,nodead][harm,nodead] Polymorph]==] },
    { name="Presence of Mind", body=[==[#showtooltip Presence of Mind
/cast Presence of Mind]==], specs={"Arcane"} },
    { name="Pyroblast", body=[==[#showtooltip Pyroblast
/cast [@mouseover,harm,nodead][harm,nodead] Pyroblast]==], specs={"Fire"} },
    { name="Scorch", body=[==[#showtooltip Scorch
/cast [@mouseover,harm,nodead][harm,nodead] Scorch]==] },
    { name="Weapon Buff", body=[==[#showtooltip
/use Minor Wizard Oil
/use 16
/click StaticPopup1Button1]==] },
  },
  ROGUE = {
    { name="Adrenaline Rush", body=[==[#showtooltip Adrenaline Rush
/startattack [harm,nodead]
/cast Adrenaline Rush]==], specs={"Combat"} },
    { name="Ambush", body=[==[#showtooltip Ambush
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Ambush]==] },
    { name="Backstab", body=[==[#showtooltip Backstab
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Backstab]==] },
    { name="Blade Flurry", body=[==[#showtooltip Blade Flurry
/startattack [harm,nodead]
/cast Blade Flurry]==], specs={"Combat"} },
    { name="Blind", body=[==[#showtooltip Blind
/cast [@mouseover,harm,nodead][harm,nodead] Blind]==] },
    { name="Cheap Shot", body=[==[#showtooltip Cheap Shot
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Cheap Shot]==] },
    { name="Cold Blood", body=[==[#showtooltip Cold Blood
/cast Cold Blood]==], specs={"Assassination"} },
    { name="Evasion", body=[==[#showtooltip Evasion
/cast Evasion]==] },
    { name="Eviscerate", body=[==[#showtooltip Eviscerate
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Eviscerate]==] },
    { name="Expose Armor", body=[==[#showtooltip Expose Armor
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Expose Armor]==] },
    { name="Feint", body=[==[#showtooltip Feint
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Feint]==] },
    { name="Garrote", body=[==[#showtooltip Garrote
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Garrote]==] },
    { name="Ghostly Strike", body=[==[#showtooltip Ghostly Strike
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Ghostly Strike]==], specs={"Subtlety"} },
    { name="Gouge", body=[==[#showtooltip Gouge
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Gouge]==] },
    { name="Hemorrhage", body=[==[#showtooltip Hemorrhage
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Hemorrhage]==], specs={"Subtlety"} },
    { name="Kick", body=[==[#showtooltip Kick
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Kick]==] },
    { name="Kidney Shot", body=[==[#showtooltip Kidney Shot
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Kidney Shot]==] },
    { name="Poison MH", body=[==[#showtooltip
/use Instant Poison
/use 16
/click StaticPopup1Button1]==] },
    { name="Poison OH", body=[==[#showtooltip
/use Instant Poison
/use 17
/click StaticPopup1Button1]==] },
    { name="Preparation", body=[==[#showtooltip Preparation
/cast Preparation]==], specs={"Subtlety"} },
    { name="Riposte", body=[==[#showtooltip Riposte
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Riposte]==], specs={"Combat"} },
    { name="Rupture", body=[==[#showtooltip Rupture
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Rupture]==] },
    { name="Sap", body=[==[#showtooltip Sap
/cast [@mouseover,harm,nodead][harm,nodead] Sap]==] },
    { name="Sinister Strike", body=[==[#showtooltip Sinister Strike
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Sinister Strike]==] },
    { name="Slice and Dice", body=[==[#showtooltip Slice and Dice
/startattack [harm,nodead]
/cast Slice and Dice]==] },
    { name="Sprint", body=[==[#showtooltip Sprint
/cast Sprint]==] },
    { name="Stealth", body=[==[#showtooltip Stealth
/cast !Stealth]==] },
    { name="Vanish", body=[==[#showtooltip Vanish
/cast Vanish]==] },
  },
  PALADIN = {
    { name="BoP", body=[==[#showtooltip Blessing of Protection
/cast [@mouseover,help,nodead][help,nodead][@player] Blessing of Protection]==] },
    { name="Cleanse", body=[==[#showtooltip Cleanse
/cast [@mouseover,help,nodead][help,nodead][@player] Cleanse]==] },
    { name="Consecration", body=[==[#showtooltip Consecration
/startattack [harm,nodead]
/cast Consecration]==] },
    { name="Divine Prot", body=[==[#showtooltip Divine Protection
/cast Divine Protection]==] },
    { name="Divine Shield", body=[==[#showtooltip Divine Shield
/cast Divine Shield]==] },
    { name="Exorcism", body=[==[#showtooltip Exorcism
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Exorcism]==] },
    { name="Flash of Light", body=[==[#showtooltip Flash of Light
/startattack [harm,nodead]
/cast [@mouseover,help,nodead][help,nodead][@player] Flash of Light]==] },
    { name="Freedom", body=[==[#showtooltip Blessing of Freedom
/cast [@mouseover,help,nodead][help,nodead][@player] Blessing of Freedom]==] },
    { name="Hammer of Wrath", body=[==[#showtooltip Hammer of Wrath
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Hammer of Wrath]==] },
    { name="HoJ", body=[==[#showtooltip Hammer of Justice
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Hammer of Justice]==] },
    { name="Holy Light", body=[==[#showtooltip Holy Light
/startattack [harm,nodead]
/cast [@mouseover,help,nodead][help,nodead][@player] Holy Light]==] },
    { name="Holy Shield", body=[==[#showtooltip Holy Shield
/startattack [harm,nodead]
/cast Holy Shield]==], specs={"Protection"} },
    { name="Holy Shock", body=[==[#showtooltip Holy Shock
/cast [@mouseover,exists,nodead][exists,nodead][@player] Holy Shock]==], specs={"Holy"} },
    { name="Holy Wrath", body=[==[#showtooltip Holy Wrath
/startattack [harm,nodead]
/cast Holy Wrath]==] },
    { name="Judgement", body=[==[#showtooltip Judgement
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Judgement]==] },
    { name="Kings", body=[==[#showtooltip Blessing of Kings
/cast [@mouseover,help,nodead][help,nodead][@player] Blessing of Kings]==] },
    { name="Lay on Hands", body=[==[#showtooltip Lay on Hands
/cast [@mouseover,help,nodead][help,nodead][@player] Lay on Hands]==] },
    { name="Might", body=[==[#showtooltip Blessing of Might
/cast [@mouseover,help,nodead][help,nodead][@player] Blessing of Might]==] },
    { name="Purify", body=[==[#showtooltip Purify
/cast [@mouseover,help,nodead][help,nodead][@player] Purify]==] },
    { name="Repentance", body=[==[#showtooltip Repentance
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Repentance]==], specs={"Retribution"} },
    { name="Righteous Fury", body=[==[#showtooltip Righteous Fury
/cast Righteous Fury]==] },
    { name="Salvation", body=[==[#showtooltip Blessing of Salvation
/cast [@mouseover,help,nodead][help,nodead][@player] Blessing of Salvation]==] },
    { name="Seal Command", body=[==[#showtooltip Seal of Command
/startattack [harm,nodead]
/cast Seal of Command]==], specs={"Retribution"} },
    { name="Seal Crusader", body=[==[#showtooltip Seal of the Crusader
/startattack [harm,nodead]
/cast Seal of the Crusader]==] },
    { name="Seal Light", body=[==[#showtooltip Seal of Light
/startattack [harm,nodead]
/cast Seal of Light]==] },
    { name="Seal Righteous", body=[==[#showtooltip Seal of Righteousness
/startattack [harm,nodead]
/cast Seal of Righteousness]==] },
    { name="Seal Wisdom", body=[==[#showtooltip Seal of Wisdom
/startattack [harm,nodead]
/cast Seal of Wisdom]==] },
    { name="Weapon Buff", body=[==[#showtooltip
/use [equipped:One-Handed Maces][equipped:Two-Handed Maces][equipped:Staves] Rough Weightstone; Rough Sharpening Stone
/use 16
/click StaticPopup1Button1]==] },
    { name="Wisdom", body=[==[#showtooltip Blessing of Wisdom
/cast [@mouseover,help,nodead][help,nodead][@player] Blessing of Wisdom]==] },
  },
  DRUID = {
    { name="Bash", body=[==[#showtooltip Bash
/startattack [harm,nodead]
/cast [noform:1] Bear Form
/cast [@mouseover,harm,nodead][harm,nodead] Bash]==], specs={"Feral"} },
    { name="Claw", body=[==[#showtooltip Claw
/startattack [harm,nodead]
/cast [noform:3] Cat Form
/cast [@mouseover,harm,nodead][harm,nodead] Claw]==] },
    { name="Cure Poison", body=[==[#showtooltip Cure Poison
/cancelform [form:1/2/3/4]
/cast [@mouseover,help,nodead][help,nodead][@player] Cure Poison]==] },
    { name="Dash", body=[==[#showtooltip Dash
/startattack [harm,nodead]
/cast [noform:3] Cat Form
/cast Dash]==] },
    { name="Demo Roar", body=[==[#showtooltip Demoralizing Roar
/startattack [harm,nodead]
/cast [noform:1] Bear Form
/cast Demoralizing Roar]==], specs={"Feral"} },
    { name="Entangling Roots", body=[==[#showtooltip Entangling Roots
/cancelform [form:1/2/3/4]
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Entangling Roots]==] },
    { name="Faerie Fire", body=[==[#showtooltip Faerie Fire
/cancelform [form:1/2/3/4]
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Faerie Fire]==] },
    { name="Feral Charge", body=[==[#showtooltip Feral Charge
/startattack [harm,nodead]
/cast [noform:1] Bear Form
/cast [@mouseover,harm,nodead][harm,nodead] Feral Charge]==], specs={"Feral"} },
    { name="Ferocious Bite", body=[==[#showtooltip Ferocious Bite
/startattack [harm,nodead]
/cast [noform:3] Cat Form
/cast [@mouseover,harm,nodead][harm,nodead] Ferocious Bite]==] },
    { name="Growl", body=[==[#showtooltip Growl
/startattack [harm,nodead]
/cast [noform:1] Bear Form
/cast [@mouseover,harm,nodead][harm,nodead] Growl]==], specs={"Feral"} },
    { name="Healing Touch", body=[==[#showtooltip Healing Touch
/cancelform [form:1/2/3/4]
/cast [@mouseover,help,nodead][help,nodead][@player] Healing Touch]==] },
    { name="Hurricane", body=[==[#showtooltip Hurricane
/cast [@cursor] Hurricane]==] },
    { name="Innervate", body=[==[#showtooltip Innervate
/cancelform [form:1/2/3/4]
/cast [@mouseover,help,nodead][help,nodead][@player] Innervate]==] },
    { name="Insect Swarm", body=[==[#showtooltip Insect Swarm
/cancelform [form:1/2/3/4]
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Insect Swarm]==], specs={"Balance"} },
    { name="Mark", body=[==[#showtooltip Mark of the Wild
/cancelform [form:1/2/3/4]
/cast [@mouseover,help,nodead][help,nodead][@player] Mark of the Wild]==] },
    { name="Maul", body=[==[#showtooltip Maul
/startattack [harm,nodead]
/cast [noform:1] Bear Form
/cast [@mouseover,harm,nodead][harm,nodead] Maul]==], specs={"Feral"} },
    { name="Moonfire", body=[==[#showtooltip Moonfire
/cancelform [form:1/2/3/4]
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Moonfire]==] },
    { name="Prowl", body=[==[#showtooltip Prowl
/startattack [harm,nodead]
/cast [noform:3] Cat Form
/cast Prowl]==] },
    { name="Rake", body=[==[#showtooltip Rake
/startattack [harm,nodead]
/cast [noform:3] Cat Form
/cast [@mouseover,harm,nodead][harm,nodead] Rake]==] },
    { name="Regrowth", body=[==[#showtooltip Regrowth
/cancelform [form:1/2/3/4]
/cast [@mouseover,help,nodead][help,nodead][@player] Regrowth]==] },
    { name="Rejuvenation", body=[==[#showtooltip Rejuvenation
/cancelform [form:1/2/3/4]
/cast [@mouseover,help,nodead][help,nodead][@player] Rejuvenation]==] },
    { name="Remove Curse", body=[==[#showtooltip Remove Curse
/cancelform [form:1/2/3/4]
/cast [@mouseover,help,nodead][help,nodead][@player] Remove Curse]==] },
    { name="Rip", body=[==[#showtooltip Rip
/startattack [harm,nodead]
/cast [noform:3] Cat Form
/cast [@mouseover,harm,nodead][harm,nodead] Rip]==] },
    { name="Shred", body=[==[#showtooltip Shred
/startattack [harm,nodead]
/cast [noform:3] Cat Form
/cast [@mouseover,harm,nodead][harm,nodead] Shred]==], specs={"Feral"} },
    { name="Starfire", body=[==[#showtooltip Starfire
/cancelform [form:1/2/3/4]
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Starfire]==], specs={"Balance", "Restoration"} },
    { name="Swipe", body=[==[#showtooltip Swipe
/startattack [harm,nodead]
/cast [noform:1] Bear Form
/cast Swipe]==], specs={"Feral"} },
    { name="Thorns", body=[==[#showtooltip Thorns
/cancelform [form:1/2/3/4]
/cast [@mouseover,help,nodead][help,nodead][@player] Thorns]==] },
    { name="Tiger's Fury", body=[==[#showtooltip Tiger's Fury
/startattack [harm,nodead]
/cast [noform:3] Cat Form
/cast Tiger's Fury]==], specs={"Feral"} },
    { name="Weapon Buff", body=[==[#showtooltip
/use [equipped:One-Handed Maces][equipped:Two-Handed Maces][equipped:Staves] Rough Weightstone; Rough Sharpening Stone
/use 16
/click StaticPopup1Button1]==] },
    { name="Wrath", body=[==[#showtooltip Wrath
/cancelform [form:1/2/3/4]
/startattack [harm,nodead]
/cast [@mouseover,harm,nodead][harm,nodead] Wrath]==] },
  },
}
