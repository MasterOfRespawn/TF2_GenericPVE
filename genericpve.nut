/*  *\
 CONF
\*  */

# todo: set "increase buff duration HIDDEN" to 0.6 on medic to reduce active shield time.
# todo: set "kill eater score type [N]" on all items to -1 to prevent spawncamping for point farming

# To everybody trying to read this script: I'm sorry for the chaos

# Block all commands except from listen server host if whitelist is empty
::SteamIDBlockAll <- true
# leave empty to whitelist everybody (if SteamIDBlockAll is false)
::SteamIDWhitelist <- [
	//"[U:1:000000000]" // YOUR STEAMID HERE
]

# Reccomended to set to true -> script changes config based on known map names
::PVEUseMapReccomendedSettings <- true
# Automatically generate a navmesh on dedicated servers
::PVEAutoGenNavMesh <- true
# allow engineers to build in spawn rooms
::PVEAllowBuildInSpawn <- true
# these settings may break non linear control point layouts
::PVENextPointCapForceLinear <- 1 # false # deprecated
::PVEBlockNextPointCapDelay <- 0 # 20 # deprecated
# bots respawn truly instantly
::PVEBluImmediateRespawn <- null
::PVERedImmediateRespawn <- null
::PVEBotsAllowImmediateRespawnAfterRound <- false
# Disable BLU flag to prevent RED winning on CTF maps
::PVEDisableCtfRED <- true
::PVEDisableCtfREDSwapTeam <- false
# Disable random crits and bullet spread
::PVEDisableRandomness <- false
# Disable random critical hits (for bots only) (should work with all weapons)
::PVEDisableBotCrits <- true

# disable thriller taunt if false
::PVEAllowThriller <- true

::PVEUseSpecialPresetForCTF <- false

# TEMP (TODO: move this to a better spot)
::PVEEnableFakeSetup <- true
::PVEForceEnableFakeSetup <- false
::PVEFakeSetupLockDoors <- true
# 0 players move as normal <-> 1 players do not move at all
# this is only applied if no doors are found
::PVEFakeSetupPlayerStun <- 0
# set to non 0 for maps without setup time so the bots can spread out.
::PVEFakeSetupTime <- 30

# set to true if cosmeticdane is selected on 64 player server
# doubles human count
# e.g. from 12 to 24 on 64 player server
::PVEIncreaseHumanCount <- false

# treat humans in bot team as bots (equip them to blend in)
::PVETreatNonCosmeticRedPlayersAsBots <- false # this is broken in multiple ways
::PVEGiveBotsCosmetics <- true

/* MORE OR LESS EXPERIMENTAL */
# Equip multiple bots at once?
::PVEAllowParallelDelayFunctions <- true
# (FIXME!!!) please do a better fix for freaky fair in the future (this may break canteens)
::PVEFixParallelDelayFunctions <- false
# apply all equipment one step delayed
::PVESlightDelayedEquip <- true
# apply all equipment one step delayed (one step more)
::PVEExtremeEquipDelay <- false
# If true, equip weapons one by one.
# This does mess with the bots sometimes
::PVEAllowDelayedEquip <- true
# may have unforseen consequences
::PVEReduceSpawnpoints <- false
# may result in ugly visuals
::PVEAggressiveCleanup <- false
# reset current game for proper startup
::PVELocalInitResetGame <- false
# setup points after round start on local pve initialization
::PVELocalInitPrepareMap <- true

# experimental (this is just me messing around)
# show cumulative bot health
::PVEShowBotHealth <- false
# force this script to load on VScript maps (may still break in some cases)
# the currently used approach is very bad but may get some maps to work properly
::PVEExperimentalTryVScriptMaps <- true

# should be changed map specific
::PVEResetBotsOnCapturedPoint <- false
::PVEClearBotItemsOnRoundEnd <- false
# currently used for mvm like
::PVEResetBotsOnRoundStart <- false

# this needs way more testing
::PVEForceBotSpawnLocation <- null
::PVEForceBotSpawnLocationDisabled <- false

::PVEAllowSpecialClassBot <- true

::PVEDebugPrint <- false

::PVEGoToRandomMapOnGameOver <- true
::PVEDoNotAggroOnHealthbar <- false

# set to null for default, false to disable and true to enable
::PVEForceMedieval <- null
# set to null for default, false to disable and true to enable
::PVEUncletopiaCTFChanges <- null
# set to null for presets to decide or a number for the ammount
# of seconds spies can not cap after a point has been captured
::PVEUncletopiaSpyCapblock <- null
# set to false to prevent presets changing medieval
::PVEAllowPresetToForceMedieval <- true
# Map specific, skips waiting for players
# This can be used to fix maps with areaportals not opening on round start
::PVECancelPlayerWait <- false

# use old vote system (recycling existing vgui vote issues for presets)
::PVEOldPresetVoteSystem <- false

# set to true automatically on certain map types
# Disables the entire PVE system
::PVEForceDisable <- false
::PVEForceDisableReason <- null

# 90 is default, 0 does nothing, -1 blocks presets
::PVEPayloadSpeedLimit <- 0

# map specific. some pl maps make red attack and blu defend (this adds support for these maps)
# has not yet been needed (should not impact anything if set to true)
PVESupportPlTeamSwaps <- false

::PVEDefaultClass <- "dane"
if (Convars.GetStr("hostname") == "One Thousand Uncles with mvm upgrades") ::PVEOverrideClass <- "dane_extra"
else if (Convars.GetStr("hostname") == "One Jontillion Spies") ::PVEOverrideClass <- "jonto"
if ("PVEOverrideClass" in this) ::PVEDefaultClass <- PVEOverrideClass
::PVEDefaultIntelClass <- "sentry" # (currently disabled)
# autobalance
::PVEVoteOption1 <- "sentry"
# class limit
::PVEVoteOption2 <- "bonk"
# expand round
::PVEVoteOption3 <- "heavy"

# TODO: MISSION_SNIPER (3) fixes vineyard, etc.
# TODO: (2) bots do not capture points if this is active (only use for RED)
# NOTE: setting tf_bot_offense_must_push_time to 0 forces bots to move (according to wiki)
# NOTE: this may only be partially correct
::FixMePVEForceMissionType <- -1
::FixMePVEForceMissionTypeDefault <- 0
::FixMePVEForceMissionTypeIntel <- 3

::TEAM_RED <- 2
::TEAM_BLU <- 3
::TEAM_ATTACK <- TEAM_BLU
::TEAM_DEFEND <- TEAM_RED
::TEAM_NAMES <- [
	"any"
	"spectator"
	"red"
	"blue"
]
::PVEHumanTeam <- TEAM_ATTACK
::PVEBotTeam <- TEAM_DEFEND

::DaneNames <- [
	"Uncle Brain",
	"Uncle Lane",
	"Uncle Rain",
	"Uncle Grain",
	"Uncle Slain",
	"Uncle Crane",
	"Uncle Strain",
	"Uncle Vain",
	"Uncle Train",
	"Uncle Stain",
	"Uncle Plane",
	"Uncle Insane",
	"Uncle Urethane",
	"Uncle Novocain",
	"Uncle Hurricane",
	"Uncle Pain",
	"Uncle Frames",
]
::JontoNames <- [
	"Jontohil3"
	"pro spy 2009"
	"Uncle Hil"
	"John Hil 2"
	"Jontomountain2"
	"2 Jon 2 Hil"
	"The Jontillionth Spy"
	"Jontohil1"
	"Gontohil2"
	#"Jon2: Electric Boogaloo"
	"Spicy Jongtong"
	"JontOrb"
	"9th Class"
	"JonJonJonJonJon"
	"JontoPills Here"
	"JaundiceToHil2"
	"Gone To a Hill"
	"Spy has a Gun"
	"SpyGPT"
	"Gabe's Favorite Class"
	"Spy around here"
	"Jon of the Hil"
	"Cloaker"
	"Glyphid Stalker"
	"Illuminate Seeker"
	"Detective Jacques Murnau"
	"The ninth class has a primary"
	"Back Inspector"
	"Scout's Father"
	"Garlic Bread Enjoyer"
	"Jonto's Chair"
	"Jonto's Wifi"
	"cl_interp 0.5"
]

::PVEClassOptions <- {
	# all available options for presets
	/*
		EXAMPLE ATTRIBUTE {
			name = "wiki.teamfortress.com/wiki/List_of_item_attributes"
			value = [NUMBER]
			duration = -1 (infinite)
		} (or only name)
		EXAMPLE CONDITION {
			type = https://developer.valvesoftware.com/wiki/Trigger_add_tf_player_condition#List_of_Conditions
			duration = -1 (infinite)
		} (or only type)
		EXAMPLE WEAPON {
			id = https://wiki.alliedmods.net/Team_Fortress_2_Item_Definition_Indexes
			attributes = [ATTRIBUTE]
			weight = 1.0 # increase or decrease to make weapon more or less likely to be selected
		} (or only id)
		EXAMPLE COSMETIC {
			id = https://wiki.alliedmods.net/Team_Fortress_2_Item_Definition_Indexes
			attributes = [ATTRIBUTE]
			chance = 1.0 # change to fraction to only equip sometimes
		} (or only id)
		EXAMPLE RANGE PRESET {
			count = SPECIFIC BOT COUNT
			ratio = 0.0 to 1.0 # (overrides count based on PVEBotCount)
			chances = [WEIGHTABLE PRESET]
		}
		EXAMPLE WEIGHTABLE PRESET {
			name = "[PRESET NAME]"
			weight = 1.0
		}
		BLOOD COLORS:
			-1: no blood
			0: red blood
			1: yellow blood
			2: green blood
			3: sparks instead of blood
		EXAMPLE CVAR {
			name = "CLIENT CVAR NAME"
			value = "CLIENT CVAR VALUE"
		}
		EXAMPLE NETPROP {
			name = "NETPROP NAME"
			value = VALUE (bool, int, float, string)
			index = int (optional, required for arrays)
		}
	*/
	stock = {
		# scout soldier pyro demoman heavyweapons engineer medic sniper spy
		classname = "scout"
		# keep stock weapons [false]
		keepstock = true
		# remove pdas alongside stock weapons (engi/spy) [false]
		removepdas = false
		# double human amount [false]
		forcebotdecrease = false
		# damage bot by one to cause heavies to eat their sandvich and move faster [false]
		damageonce = false
		# tfbot difficulty (0:easy 1:medium 2:hard 3:expert)
		difficulty = 3
		# list of strings to choose as the bots name [stock names]
		namechoices = []
		# list of weapons to choose as the bots primary [stock]
		primaries = []
		# list of weapons to choose as the bots secondary [stock]
		secondaries = []
		# list of weapons to choose as the bots melee [stock]
		melees = []
		# list of attributes to apply to the bot [none]
		attributes = []
		# list of conditions to apply to the bot [none]
		conditions = []
		# list of cosmetics to equip the bot with [none]
		cosmetics = []
		# custom model for the bots [default]
		model = ""
		# custom amount of health [0=>no change]
		maxhealth = 0
		# https://developer.valvesoftware.com/wiki/Team_Fortress_2/Scripting/Script_Functions/Constants#ETFBotMissionType
		# [-1 (to not change recommended value)]
		mission = -1
		# https://developer.valvesoftware.com/wiki/Team_Fortress_2/Scripting/Script_Functions/Constants#TFBotWeaponRestrictionType
		# [0]
		weapon_restriction = 0
		# https://developer.valvesoftware.com/wiki/Team_Fortress_2/Scripting/Script_Functions/Constants#TFBOT_BEHAVIOR
		# [0]
		behavior = 0
		# https://developer.valvesoftware.com/wiki/Team_Fortress_2/Scripting/Script_Functions/Constants#FTFBotAttributeType
		# [0]
		bot_attributes = 0
		# can be a preset name (will only be applied to one bot)
		specialbot = null
		# force enable / disable medieval (true/false) or do nothing (null)
		medieval = null
		# use other presets ([]/null) (TYPE: RANGE PRESET)
		metapreset = []
		# set blood color (0)
		bloodtype = 0
		# set bot cvars [none]
		fakecvars = []
		# set bot netprops [none]
		netprops = []
		# set game convars
		convars = []
		# set player netprops [none]
		# format: { classname = "[NAME]" netprops = [] }
		object_netprops = []
		# set player netprops [none]
		player_netprops = []
		# set player attributes (like attributes) [none]
		player_attributes = []
		# set player conditions (integers) [none]
		player_conditions = []
		# set player weapon netprops based on slot (dangerous)
		# format: { slot = 0 netprops = [] }
		player_weapon_netprops = []
		# set player weapon attributes based on slot (dangerous)
		# format: { slot = 0 attributes = [] }
		player_weapon_attributes = []
		# enable mvm upgrades (defaults to true for now)
		allow_upgrades = true
		# force the bots to respawn without delay
		bot_immediate_respawn = null
		# force payload to move at a set speed (0 does not change limit)
		# 90 is the default max speed with 3 players
		# 50 for 1 70 for 2
		payload_speed_limit = null
		# add uncltetopia ctf bot buffs (crits + invulnerability) once the intel is caught
		uncletopia_ctf = false
		# prevent backcapping for spies like on uncletopia (for n seconds)
		uncletopia_capblock = 0
	}
	attr_test = {
		classname = "scout"
		difficulty = 3
		metapreset = [{chances=[{name="heavy"}]}]
		object_netprops = [
			{ // limit cart speed to 1 player
				classname = "func_tracktrain"
				netprops = [{ name = "m_maxSpeed" value = 50.0 }]
			}
		]
		player_conditions = [ 11, 20, 32 ] // critboosted, range heal, speed boost
		player_attributes = [ { name = "turn to gold", value = 1} { name = "heal on kill", value = 50} ]
		player_netprops = [ {name = "m_bGlowEnabled", value = true}]
	}
	mixed = {
		classname = "medic"
		difficulty = 3
		keepstock = true
		metapreset = [{ chances = [
			{ name = "heavy" }
			{ name = "bonk" }
			{ name = "sentry" }
			{ name = "caber" weight = 0.1 }
		] }]
		specialbot = "thin_heavy"
	}
	blank = {
		classname = "scout"
		removepdas = true
		difficulty = 3
	}
	serverdemo = {
		classname = "demoman"
		difficulty = 3
		keepstock = true
		payload_speed_limit = {maxspeed=63, accelspeed=50}
		#convars = [{ name = "tf_escort_recede_time" value = 10 }]
	}
	serversoldier = {
		# soldier with a banner
		classname = "soldier"
		difficulty = 3
		keepstock = true
		secondaries = [129 226 354]
		payload_speed_limit = {maxspeed=63, accelspeed=50}
		#bot_attributes = 256 # SPAWN_WITH_FULL_CHARGE
		netprops = [{ name = "m_Shared.tfsharedlocaldata.m_flRageMeter" value = 100.0}]
		#convars = [{ name = "tf_escort_recede_time" value = 10 }]
	}
	# todo: remove these again after testing
	why = {
		classname = "heavyweapons"
		difficulty = 3
		keepstock = false
		primaries = [ { id = 15 attributes = [{ name = "override projectile type" value = 2 } { name = "fire rate penalty HIDDEN" value = 10 }]}]
		melees = [264]
	}
	why2 = {
		classname = "sniper"
		difficulty = 3
		keepstock = false
		primaries = [ { id = 14 attributes = [{ name = "override projectile type" value = 13 }]}]
		melees = [264]
	}
	serverpyro = {
		classname = "pyro"
		difficulty = 3
		keepstock = false
		primaries = [741]
		melees = [739]
		#cosmetics = [738 743 745]
		payload_speed_limit = {maxspeed=63, accelspeed=50}
		#convars = [{ name = "tf_escort_recede_time" value = 10 }]
	}
	serverspy = {
		classname = "spy"
		difficulty = 3
		keepstock = true
	}
	heavy = {
		classname = "heavyweapons"
		keepstock = true
		damageonce = true
		difficulty = 3
		namechoices = [
			"The Heavy Update"
			"Hungry Weapons Guy"
			"Class number 5"
			"Meet the Sandvich"
			"Hoovy"
			"300 HP"
			"Who needs Miniguns"
			"Ammo Burner"
			"Pow! Haha!"
			"Nom Nom Nom"
		]
		primaries = [
			{ id = 588 } // The Pomson
			{ id = 441 } // The Cow Mangler 5000
			{ id = 997 } // The Rescue Ranger
			{ id = 305 } // crossbow
			//{ id = 1178} // dragons fury
			{ id = 237 } // rocket jumper
			//{ id = 215 } // degreaser?
			{ id = 40  } // backburner
		]
		secondaries = [
			{ id = 42 } // sandvich
			// { id = 1190 } // banana # heavies take too long to reach points
		]
		melees = [
			# { id = 239 } // G.R.U
			{ id = 656 } // holiday punch
			{ id = 1071 weight = 0.01 } // gold frying pan
		]
		cosmetics = [ { id = 537 chance = 0.5 } { id = 343 chance = 0.5} ] // birthday hat, professors specs
		allow_upgrades = true
	}
	experimental1 = {
		classname = "pyro"
		keepstock = true
		difficulty = 3
		namechoices = ["..."]
		primaries = [ { id = 141 } ] // shortstop
		secondaries = [ { id = 1179 } ] // thruster (1180 gas passer) (595 manmelter)
		melees = [ { id = 325 } ] // boston basher
	}
	bonk = {
		classname = "scout"
		difficulty = 3
		namechoices = [
			"BONK!!!",
			"You can't hit me",
			"I'm running circles around ya",
			"woooooooooo",
			"first class",
			"Yo, heads up",
			"Aw crap",
			"I'm too handsome ta die!"
		]
		secondaries = [ { id = 46 } ] // bonk atomic punch
		melees = [ { id = 355 } ] // fan of war
	}
	dane = {
		classname = "engineer"
		difficulty = 3
		namechoices = DaneNames
		forcebotdecrease = true
		primaries = [
			{ id = 9 } # this is 199 in uncletopia 1ku but it works aswell
			{ id = 527 }
			{ id = 141 }
			{ id = 588 }
		]
		#secondaries = [ { id = 22 } ] # they dont use the pistol
		#secondaries = [ { id = 528 } ] # experiment: short circuit (this works)
		melees = [
			{
				id = 7
				attributes =  [
					{ name = "fire rate bonus"			value = 0.6 }
					{ name = "dmg bonus vs buildings"	value = 500 }
				]
				weight = 0.99
			}
			{
				id = 1071
				attributes =  [
					{ name = "fire rate bonus"			value = 0.6 }
					{ name = "dmg bonus vs buildings"	value = 500 }
				]
				weight = 0.01
			}
		]
		attributes = [
			{ name = "metal regen"					value = 500 }
			{ name = "maxammo metal increased"		value = 2.5 }
			{ name = "max health additive bonus"	value = 60 }
			//{ name = "mod teleporter cost"			value = 110 }
		]
		cosmetics = [
			{
				id = 30539
				attributes = [
					{ name = "set item tint RGB"		value = 15132390 }
					{ name = "set item tint RGB 2"		value = 15132390 }
				]
			}
			{
				id = 30420
				attributes = [
					{ name = "set item tint RGB"		value = 15132390 }
					{ name = "set item tint RGB 2"		value = 15132390 }
					{ name = "attach particle effect"	value = 61 }
				]
			}
			{
				id = 30172
				attributes = [
					{ name = "set item tint RGB"		value = 15132390 }
					{ name = "set item tint RGB 2"		value = 15132390 }
				]
			}
		]
		payload_speed_limit = {maxspeed=63, accelspeed=50}
		convars = [{ name = "tf_escort_recede_time" value = 10 } { name = "tf_bot_max_teleport_entrance_travel" value = -10 /* NEVER BUILD TELEPORTERS */ }]
		uncletopia_ctf = true
		uncletopia_capblock = 20
		immediate_respawn = true
	}
	jonto = {
		classname = "spy"
		keepstock = true
		difficulty = 3
		forcebotdecrease = true
		namechoices = JontoNames
		primaries = [
			{ id = 24 }
			{ id = 61 }
			{ id = 224 }
			{ id = 460 }
		]
		attributes = [ { name = "max health additive bonus" value = 75 } ]
		cosmetics = [
			{
				id = 55
				attributes = [
					{ name = "set item tint RGB"	value = 15185211 }
					{ name = "set item tint RGB 2"	value = 15185211 }
				]
			}
			{ id = 936 }
		]
		payload_speed_limit = {maxspeed=63, accelspeed=50}
		convars = [{ name = "tf_escort_recede_time" value = 10 } { name = "tf_bot_max_teleport_entrance_travel" value = -10 /* NEVER BUILD TELEPORTERS */ }]
		uncletopia_ctf = true
		uncletopia_capblock = 20
		immediate_respawn = true
	}

	/* Bangerz.tf engineer fortress presets */
	bangerz_ef_super_easy = {
		classname = "engineer"
		difficulty = 3
		namechoices = ["TODO: ADD NAMES"]
		primaries = [ 9 141 527 588 997 1153 ]
		secondaries = [ 22 140 528 ]
		melees = [ 7 142 155 329 589 ]
		attributes = [
			{ name = "engy sentry fire rate increased" value = 2 } // 2x slower sentry firing speed for bots
		]
		player_attributes = [
			{ name = "engy sentry fire rate increased" value = 2 } // 2x faster sentry firing speed for humans (this may chew up your sentry ammo!)
			{ name = "engy sentry radius increased" value = 3 } // 3x farther sentry range for humans
			{ name = "building cost reduction" value = 0 } // Humans spend nothing on new buildings
			{ name = "max health additive bonus" value = 1000 } // +1000 max health for humans
		]
		model = "models/bots/engineer/bot_engineer.mdl"
		convars = [
			# bots take less damage than humans
			{ name = "tf_damage_multiplier_blue" value = 1.32 }
			{ name = "tf_damage_multiplier_red" value = 0.83 }
			{ name = "mp_disable_respawn_times" value = 0 }
			{ name = "mp_respawnwavetime" value = 20 }
		]
		allow_upgrades = false
		immediate_respawn = true
	}
	bangerz_ef_easy = {
		classname = "engineer"
		difficulty = 3
		namechoices = ["TODO: ADD NAMES"]
		primaries = [ 9 141 527 588 997 1153 ]
		secondaries = [ 22 140 528 ]
		melees = [ 7 142 155 329 589 ]
		attributes = [
			{ name = "engy sentry fire rate increased" value = 1.3 } // 30% slower sentry firing speed for bots
		]
		player_attributes = [
			{ name = "max health additive bonus" value = 35 } // +35 max health for humans
		]
		model = "models/bots/engineer/bot_engineer.mdl"
		convars = [
			# bots take less damage than humans
			{ name = "tf_damage_multiplier_blue" value = 1.32 }
			{ name = "tf_damage_multiplier_red" value = 0.83 }
			{ name = "mp_disable_respawn_times" value = 0 }
			{ name = "mp_respawnwavetime" value = 20 }
		]
		allow_upgrades = false
		immediate_respawn = true
	}
	bangerz_ef_normal = {
		classname = "engineer"
		difficulty = 3
		namechoices = ["TODO: ADD NAMES"]
		primaries = [ 9 141 527 588 997 1153 ]
		secondaries = [ 22 140 528 ]
		melees = [ 7 142 155 329 589 ]
		attributes = [
			{ name = "engy sentry fire rate increased" value = 0.8928571428571428 } // +12% faster sentry firing speed for bots
			{ name = "max health additive bonus" value = 20 } // +20 max health for bots (125 --> 145)
			{ name = "engy building health bonus" value = 1.21 } // +21% max building health for bots
			{ name = "engy sentry damage bonus" value = 1.2 } // +20% sentry damage from bots
		]
		model = "models/bots/engineer/bot_engineer.mdl"
		convars = [
			# bots take less damage than humans
			{ name = "tf_damage_multiplier_blue" value = 1.32 }
			{ name = "tf_damage_multiplier_red" value = 0.83 }
			{ name = "mp_disable_respawn_times" value = 0 }
			{ name = "mp_respawnwavetime" value = 20 }
		]
		allow_upgrades = false
		immediate_respawn = true
	}
	bangerz_ef_hard = { #todo: add spy limit (to disable it here)
		classname = "engineer"
		difficulty = 3
		namechoices = ["TODO: ADD NAMES"]
		primaries = [ 9 141 527 588 997 1153 ]
		secondaries = [ 22 140 528 ]
		melees = [ 7 142 155 329 589 ]
		attributes = [
			{ name = "engy sentry fire rate increased" value = 0.8 } // +25% faster sentry firing speed for bots
			{ name = "max health additive bonus" value = 50 } // +50 max health for bots (125 --> 175)
			{ name = "engy building health bonus" value = 1.5 } // +50% max building health for bots
			{ name = "engy sentry damage bonus" value = 1.3 } // +30% sentry damage from bots
			{ name = "engy sentry radius increased" value = 1.23 } // +23% sentry gun range from bots
		]
		player_attributes = [
			{ name = "building cost reduction" value = 1.38 } // Humans spend 38% more metal for new buildings (New sentry = 130 --> 179 metal)
		]
		model = "models/bots/engineer/bot_engineer.mdl"
		convars = [
			# bots take less damage than humans
			{ name = "tf_damage_multiplier_blue" value = 1.32 }
			{ name = "tf_damage_multiplier_red" value = 0.83 }
			{ name = "mp_disable_respawn_times" value = 0 }
			{ name = "mp_respawnwavetime" value = 20 }
		]
		allow_upgrades = false
		immediate_respawn = true
	}
	bangerz_ef_xtreme = { # todo: add spy limit (2->3 on xtreme)
		classname = "engineer"
		difficulty = 3
		namechoices = ["TODO: ADD NAMES"]
		primaries = [ 9 141 527 588 997 1153 ]
		secondaries = [ 22 140 528 ]
		melees = [ 7 142 155 329 589 ]
		attributes = [
			{ name = "engy sentry fire rate increased" value = 0.7142857142857143 } // +40% faster sentry firing speed for bots
			{ name = "max health additive bonus" value = 100 } // +100 max health for bots (125 --> 225)
			{ name = "engy building health bonus" value = 2 } // 2x max building health for bots
			{ name = "engy sentry damage bonus" value = 1.5 } // +50% sentry damage from bots
			{ name = "engy sentry radius increased" value = 1.5 } // +50% sentry gun range from bots
		]
		player_attributes = [
			{ name = "building cost reduction" value = 1.54 } // Humans spend 54% more metal for new buildings. (New sentry = all 200 metal)
		]
		model = "models/bots/engineer/bot_engineer.mdl"
		convars = [
			# bots take less damage than humans
			{ name = "tf_damage_multiplier_blue" value = 1.32 }
			{ name = "tf_damage_multiplier_red" value = 0.83 }
			{ name = "mp_disable_respawn_times" value = 0 }
			{ name = "mp_respawnwavetime" value = 15 } // Respawn time lowered (20s --> 15s)
		]
		allow_upgrades = false
		immediate_respawn = true
	}

	knight = {
		classname = "demoman"
		difficulty = 3
		namechoices = [ "FREEDOM!!!" ]
		melees = [ { id = 172 } ] // skullcutter
		cosmetics = [ { id = 405 } ] // booties
	}
	caber = {
		classname = "demoman"
		difficulty = 3
		namechoices = [ "KA-BOOM!!!" ]
		melees = [ { id = 307 } ] // caber
		cosmetics = [ { id = 405 } ] // booties
		model = "models/bots/demo/bot_demo.mdl"
	}
	sentry = {
		classname = "engineer"
		difficulty = 3
		melees = [ { id = 169 } ] // golden wrench because funny
	}
	huntsman = {
		classname = "sniper"
		difficulty = 3
		primaries = [ 56 ]
		melees = [ 3 ]
	}
	robot1 = {
		classname = "scout"
		difficulty = 3
		melees = [ { id = 44 } ]
	}
	# non sticky demo
	demo = {
		classname = "demoman"
		difficulty = 3
		keepstock = true
		// only 4 stickies per demo (same ammount as engineer buildings)
		secondaries = [ { id = 20 attributes = [ { name = "max pipebombs decreased" value = -4 } ] } ]
	}
	glass_canon = {
		classname = "spy"
		difficulty = 3
		melees = [ { id = 4 } ] // Knife
		maxhealth = 1
	}
	glass_canon_mm = {
		classname = "spy"
		difficulty = 3
		namechoices = [ "..." ]
		melees = [ { id = 4 } ] // Knife
		maxhealth = 1
		medieval = true // test (force medieval)
	}
	spy = {
		classname = "spy"
		difficulty = 3
		namechoices = [ "..." ]
		melees = [ { id = 4 } ] // Knife
	}
	gunspy = {
		classname = "spy"
		difficulty = 3
		namechoices = [ "..." ]
		primaries = [ { id = 24 } ] // Revolver
	}
	// base preset for mv1ku, modified in ApplyBase1kuPreset to update attributes
	dane_extra = {
		classname = "engineer"
		difficulty = 3
		namechoices = DaneNames
		forcebotdecrease = true
		primaries = [
			{ id = 9 }
			{ id = 527 }
			{ id = 141 }
			{ id = 588 }
		]
		# secondaries = [ { id = 22 } ] // they do not use the pistol anyways
		melees = [
			{
				id = 7
				attributes =  [
					{ name = "fire rate bonus"			value = 0.6 }
					{ name = "Construction rate increased" value = 3 }
					{ name = "Repair rate increased" value = 3 }
				]
				weight = 0.99
			}
			{
				id = 1071
				attributes =  [
					{ name = "fire rate bonus"			value = 0.6 }
					{ name = "Construction rate increased" value = 3 }
					{ name = "Repair rate increased" value = 3 }
				]
				weight = 0.01
			}
		]
		maxhealth = 300
		attributes = [
			{ name = "metal regen"					value = 1000 }
			{ name = "maxammo metal increased"		value = 5 }
			#{ name = "max health additive bonus"	value = 250 }
			{ name = "mod teleporter cost"			value = 110000 }

			# harder upgrades compensate this being reverted
			# { name = "engy sentry radius increased" value = 1.5 }
			{ name = "Construction rate increased" value = 3 }
			{ name = "Repair rate increased" value = 3 }
			{ name = "ammo regen" value = 500 }
		]
		cosmetics = [
			{
				id = 30539
				attributes = [
					{ name = "set item tint RGB"		value = 15132390 }
					{ name = "set item tint RGB 2"		value = 15132390 }
				]
			}
			# santa hats during christmas holiday
			IsHolidayActive(Constants.EHoliday.kHoliday_Christmas) ? {
				id = 666
				attributes = [{ name = "attach particle effect"	value = 61 }]
			} : {
				id = 30420
				attributes = [
					{ name = "set item tint RGB"		value = 15132390 }
					{ name = "set item tint RGB 2"		value = 15132390 }
					{ name = "attach particle effect"	value = 61 }
				]
			}
			{
				id = 30172
				attributes = [
					{ name = "set item tint RGB"		value = 15132390 }
					{ name = "set item tint RGB 2"		value = 15132390 }
				]
			}
		]
		payload_speed_limit = {maxspeed=63, accelspeed=50}
		convars = [{ name = "tf_escort_recede_time" value = 10 } { name = "tf_bot_max_teleport_entrance_travel" value = -10 /* NEVER BUILD TELEPORTERS */ }]
		uncletopia_ctf = true
		uncletopia_capblock = 20
		immediate_respawn = true
		# model = "models/bots/engineer/bot_engineer.mdl" # does not have correct bodygroups
	}
}

::PVEMapSettingOverrides <- {
	# symmetrical cp setup time tests
	cp_5gorge = { PVEFakeSetupPlayerStun = 1.0 },
	cp_noad = { PVEFakeSetupTime = 60 PVEUpgradeIncludeSpawnrooms = true },
	# cp_noad = { PVEResetBotsOnCapturedPoint = true } # todo: should this setting be enabled again?
	[[ # fix issues with PropDynamics
		"pl_aquarius" "koth_blowout" "koth_boardwalk" "ctf_pressure" # summer 2025
		"cp_degrootkeep" "cp_burghausen" "koth_nucleus" "koth_rotunda" "koth_suijin" # various maps
		"pl_phoenix" "koth_megalo" "cp_sulfur" "cp_powerhouse" "cp_steel" # discovered on mv1ku
		"cp_degrootkeep_rats"
		"plr_matterhorn" "arena_nucleus"
	]] = { CleanupRespectCollision = true },
	cp_powerhouse = { PVEUpgradeIncludeSpawnrooms = false },

	# horseless headless horseman's axe is prop_dynamic (do not kill that!!!)
	[[ "cp_manor" "pl_spineyard" "pl_cashworks" "pl_odyssey" "koth_king" /*"pl_goldrush"*/ ]] = { CleanupRespectCollision = false CleanupDoNotCleanDetails = true },

	[[ "koth_viaduct_event" "koth_lakeside_event" ]] = { PVEDoNotAggroOnHealthbar = true PVESoftSpawnCampProtectionEnabled = false },
	koth_krampus = { PVEForceBotSpawnLocation = Vector(0,0,-60) PVEDoNotAggroOnHealthbar = true },
	# this map has a very high edict count, this is like a panic mode
	[[ "pl_patagonia" "pl_bloodwater" ]] = { PVEInitialEquipForceDelayed = true PVEReduceSpawnpoints = true PVEAggressiveCleanup = true /*PVECancelPlayerWait = true*/ PVEClearBotItemsOnRoundEnd = true PVEExtremeEquipDelay=true },
	# mvm flood spawns bots
	mvm = { PVEForceDisableReason = "crash prevention" PVEForceDisable = true },
	# zi and vsh break so just don't activate
	[[ "vsh" "zi" ]] = { FixMePVEForceMissionType = 3 PVEMoveTeamDisabled = true }, # TEMP, THIS WILL PROBABLY BREAK!!!
	vip = { PVEQuickbuildWhileSetup = false CleanupPropsOnlyOnce = true CleanupForceMinimal = true PVEUpgradeMobsterFix = true }, # fix mobster

	# make bots move on more maps
	[[ "ctf" "pd" "rd" "sd" "plr" ]] = { FixMePVEForceMissionType = 3 PVEAddTimer = true },
	[[ "cp_snowplow" "tow" "workshop/vip_vineyard_rc1l.ugc3484046766"]] = { FixMePVEForceMissionType = 3 },

	cppl_gavle = { PVEModifyCaptureTimes = false },

	# actually specific stuff
	cp_cowerhouse = { FixMePVEForceMissionType = 3 CleanupRespectCollision = true }, # I need to check this map again
	cp_freaky_fair = { CleanupPropsOnlyOnce = true PVEFixParallelDelayFunctions = true PVEForceEnableFakeSetup = true PVEMvmUpgrades = false },
	ctf_crasher = { PVEDisableCtfREDSwapTeam = true },
	cp_cloak = { PVENextPointCapForceLinear = false PVEUpgradeIncludeSpawnrooms = true PVEFakeSetupPlayerStun = 1.0 PVEFakeSetupTime = 30 },
	sd_marshlands = { FixMePVEForceMissionType = 0 PVETimerRefStepSize = 1 PVEAddTimer = false }, # hold the flag works out of the box (todo: detect better)
	plr = { PVEForceEnableFakeSetup = true },
}

::PVEIsOnDedicatedServer <- IsDedicatedServer()

::PVETimestampTick <- 0
::PVEGetTimestamp <- function() {
	local time = {}
	LocalTime(time)
	local tick = NetProps.GetPropInt(Entities.FindByClassname(null, "soundent"), "m_nSimulationTick") - PVETimestampTick
	local roundtime = "PVEDisplayTime" in getroottable() ? Time() - PVEDisplayTime : 0
	return format("(%02d.%02d.%04u;%02d:%02d:%02d;%d(%dmin);%d)", time.day, time.month, time.year, time.hour, time.minute, time.second, roundtime,roundtime/60, tick)
}

/*--*\
|CODE|
\*--*/

# TEMPORARY CRASH FIX ATTEMPT #2
# still inspired by this on github:
# https://github.com/azalty/sm-stringpool-fix/blob/main/scripting/stringpool_fix.sp
# does not prevent all crashes but it delays the inevitable
::UTILGetScriptScope <- function(ent) {
	if (!ent || !ent.IsValid) return {}
	NetProps.SetPropBool(ent, "m_bForcePurgeFixedupStrings", true)
	if (!ent.ValidateScriptScope()) return {}
	return ent.GetScriptScope()
}

################
# EVENT SYSTEM #
################

# CUSTOM EVENT: Setup
# fired once the map loaded
# CUSTOM EVENT: Update
# fired every 0.105 seconds
# tied to soundent (preserved/first ent to spawn) for now

# setup registered event table
if (!("EventTable" in this)) ::EventTable <- {}
EventTable.clear()

# setup event utility function table
if (!("EventFunctionTable" in this)) ::EventFunctionTable <- {}
EventFunctionTable.clear()

# utility table to ensure a full function reset on event recollection
if (!("CollectedFunctionTable" in this)) ::CollectedFunctionTable <- {}
CollectedFunctionTable.clear()

::DebugEvents <- false
# main function to register an event handler in other scripts
# may autocollect registered events in a future version
::CustomEventNames <- ["PreUpdate" "Update" "Setup" "OnScriptHook_OnTakeDamage" "MapReset"]
::RegisterEvent <- function(name, handler) {
    EventFunctionTable[CustomEventNames.find(name) != null ? name : ("OnGameEvent_" + name)] <- function(params) {
		if (DebugEvents && name != "Update" && name != "PreUpdate") {
			printl("[EventCallback] " + name)
			foreach (k,v in params) {
				print("[EventCallbackParam]")
				print(k)
				print(" - ")
				printl(v)
			}
		}
        foreach (event in EventTable[name]) {
            event(params)
        }
    }
    if (!(name in EventTable))
        EventTable[name] <- []
    EventTable[name].push(handler)
}

# event registration function must be called after all calls to RegisterEvent
::CollectEventSetup <- function () {
    CollectedFunctionTable.clear()
    foreach (k, v in EventFunctionTable) {
        CollectedFunctionTable[k] <- v
    }
    __CollectGameEventCallbacks(CollectedFunctionTable)
}

# setup table of all chat commands
if (!("ChatCommandTable" in this)) ChatCommandTable <- {}
ChatCommandTable.clear()

# register a new chat command
function RegisterCommand(name, callback, helpmsg = "") {
    // todo check for command overwrites
    ChatCommandTable[name] <- [callback, helpmsg]
}

# execute a chat command if it exists
function ProcessCommand(user, command, args) {
    if (command in ChatCommandTable) {
        local cmd = ChatCommandTable[command]
        cmd[0](user, args)
    }
}

::ChatCMDList <- function(player, args){
    foreach (k, v in ChatCommandTable)
        ClientPrint(player, 3, format("%12s " + v[1] + "\n", k))
}
# add debug command for listing commands
RegisterCommand("!ls", ChatCMDList, "- list all available commands")
RegisterCommand("!help", ChatCMDList, " - list all available commands")

# register ProcessCommand in Event handler for use of commands in chat
RegisterEvent("player_say", function(params) {
    # parameter processing for easier processing by registered commands
    local userid = params["userid"]
    local user = GetPlayerFromUserID(userid)
    if (PVEIsOnDedicatedServer || user != GetListenServerHost()) // validate user ids
    {
        local id = NetProps.GetPropString(user, "m_szNetworkIDString")
		local allowed = SteamIDWhitelist.len() == 0 && !SteamIDBlockAll
		foreach (validid in SteamIDWhitelist) {
			if ( id == validid) allowed = true
		}
        if ( !allowed ) {
            return
        }
    }
    local text = params["text"]
    local args = split(params["text"], " ")
    local command = args[0]
    # use ProcessCommand to execute a command if registered
    ProcessCommand(user, command, args)
})

# new event system
::EventSystemUpdateFunction <- function() {
	if ("PreUpdate" in CollectedFunctionTable) CollectedFunctionTable.PreUpdate({})
	if ("Update" in CollectedFunctionTable) CollectedFunctionTable.Update({})
	return -1 # raise Update tick rate from 11 to 66
}
::EVENTSYSTEM_HAS_BEEN_SET_UP_ALREADY <- false
# automatically run EventSystemSetupFunction on map load even without players
function setup_event_system() {
	if (EVENTSYSTEM_HAS_BEEN_SET_UP_ALREADY) return;
	local eventbase = Entities.FindByClassname(null, "soundent")
	eventbase.RemoveEFlags(Constants.FEntityEFlags.EFL_NO_THINK_FUNCTION)
	local scope = UTILGetScriptScope(eventbase)
	scope.EventSystemSetupFunction <- function() {
		eventbase.TerminateScriptScope()
		CollectEventSetup()
		if ("Setup" in CollectedFunctionTable) CollectedFunctionTable.Setup({})
		AddThinkToEnt(eventbase, "EventSystemUpdateFunction")
		::EVENTSYSTEM_HAS_BEEN_SET_UP_ALREADY <- true
	}
	EntFireByHandle(eventbase, "CallScriptFunction", "EventSystemSetupFunction", 0, null, null)
}
// prevent error spam
RegisterEvent("OnScriptHook_OnTakeDamage", function(params){})
// custom event MapReset
::EventInMapReset <- false
RegisterEvent("stats_resetround", function(params) {
	::EventInMapReset <- true
})
RegisterEvent("recalculate_holidays", function(params) {
	if (!EventInMapReset) return;
	::EventInMapReset <- false
	if ("MapReset" in CollectedFunctionTable) CollectedFunctionTable.MapReset({})
})
// event system setup
RegisterEvent("player_spawn", function(params) {
	if (!EVENTSYSTEM_HAS_BEEN_SET_UP_ALREADY) {
		setup_event_system()
	}
})
setup_event_system()
CollectEventSetup() // fallback initialization

RegisterEvent("Setup", function(params) {
	if (PVEDebugPrint) {
		printl("[PVEMAPLOAD] " + GetMapName() + " " + PVEGetTimestamp())
	}
})

###############################
# command execution utilities #
###############################
::RunCommand <- function(c) {
	local f = PVEIsOnDedicatedServer ? SendToConsoleServer : SendToConsole
	f(c)
}
::RunCommandWithCheats <- function(command) {
	local cheats_on = Convars.GetInt("sv_cheats") != 0
	local c = cheats_on ? command : format("sv_cheats 1 ; %s ; sv_cheats 0", command)
	RunCommand(c)
}
::RunFunctionWithCheats <- function(f) {
	local cheats_on = Convars.GetInt("sv_cheats") != 0
	if (!cheats_on) RunCommand("sv_cheats 1")
	RunDelayed(f)
	if (!cheats_on) RunCommandDelayed("sv_cheats 0")
}

# CLIENT COMMANDS (UNUSED)
RegisterCommand("!chccmd", function(player, args) {
	local command = ""
	for (local i = 1; i < args.len(); i++) command += args[i] + " "
	if (command != "") RunClientCommandWithCheats(player, command)
}, " [command] - runs command on client (with cheats) (this is almost always useless)")
RegisterCommand("!ccmd", function(player, args) {
	local command = ""
	for (local i = 1; i < args.len(); i++) command += args[i] + " "
	if (command != "") RunClientCommand(player, command)
}, " [command] - runs command on client")
::__RunClientCommand_ENT__ <- null
::RunClientCommand <- function(client, command) {
	if (client && client.IsValid()) {
		if (!__RunClientCommand_ENT__ || !__RunClientCommand_ENT__.IsValid()) {
			::__RunClientCommand_ENT__ <- Entities.FindByClassname(null, "point_clientcommand")
			if (!__RunClientCommand_ENT__) {
				::__RunClientCommand_ENT__ <- Entities.CreateByClassname("point_clientcommand")
				__RunClientCommand_ENT__.DispatchSpawn()
			}
		}
		EntFireByHandle(__RunClientCommand_ENT__, "Command", command, 0.0, client, client)
	}
}
# this function is basically useless as all valid clientcommands reset after
# cheats are disabled
::RunClientCommandWithCheats <- function(client, command) {
	RunFunctionWithCheats(function(){RunClientCommand(client, command)})
}
# ENDOF CLIENT COMMANDS (UNUSED)

::MSGALL <- function(message) {
	ClientPrint(null, 4, message)
}
::TXTALL <- function(message) {
	ClientPrint(null, 3, message)
}

# entity utilies
::EntsByName <- function(name){
	for (local e; e = Entities.FindByName(e, name);) yield e
}
::EntsByClass <- function(name){
	for (local e; e = Entities.FindByClassname(e, name);) yield e
}

###########################
# delayed function system #
###########################
::RunDelayedForPlayer <- function(p, f) {
	if (!p || !p.IsValid()) return
	local thinkfn = NetProps.GetPropString(p, "m_iszScriptThinkFunction")
	if (PVEAllowParallelDelayFunctions && (PVEFixParallelDelayFunctions ? p.GetTeam() == PVEBotTeam : (thinkfn == null || thinkfn == "" || thinkfn == "pve_run_delayed_fn"))) {
		local scope = UTILGetScriptScope(p)
		if (!("pve_run_delayed_queue" in scope))
			scope["pve_run_delayed_queue"] <- []
		scope["pve_run_delayed_queue"].insert(0, f)
		if (!("pve_run_delayed_fn" in scope)){
			scope["pve_run_delayed_fn"] <- function() {
				# If there is nothing to think, do nothing
				if (scope["pve_run_delayed_queue"].len()>0)
					scope["pve_run_delayed_queue"].pop()()
				# think as fast as possible
				return -1
			}
		}
		if (thinkfn == null || thinkfn == "" || PVEFixParallelDelayFunctions) AddThinkToEnt(p, "pve_run_delayed_fn")
	} else {
		# other think function already exists, just use default think
		RunDelayed(function(){
			# only run if the reference to the player is still valid
			if (p && p.IsValid()) f()
		})
	}
}
# todo: unify queues
::DelayedFunctionQueue <- []
::OneStepQueue <- []
::SetDelayQueue <- []
::QueueCurrentStep <- 0
RegisterEvent("Update", function (params) {
	::QueueCurrentStep <- QueueCurrentStep + 1
	::QueueCurrentTime <- Time()
	if (DelayedFunctionQueue.len() > 0) DelayedFunctionQueue.pop()()
	local queue = OneStepQueue
	::OneStepQueue <- []
	while (queue.len() > 0) queue.pop()()
	queue = SetDelayQueue
	for (local i=queue.len() - 1; i >= 0; i--) {
		local remove = false
		local execute = true
		if (true) {
			local next = queue[i]
			#foreach(k,v in next) printf("%s: %s, ", k.tostring(), v.tostring())
			#printl("")
			if (next.step >= 0) {
				#printl(QueueCurrentStep)
				execute = next.step <= QueueCurrentStep
			} else if (next.time >= 0) {
				#printl(QueueCurrentTime)
				execute = next.time <= QueueCurrentTime
			}
			if ("DELETE" in next) {
				remove = true
			} else if (execute) {
				next.func()
				next.DELETE <- true
			}
		}
		if (remove) {
			#printl("REMOVE")
			queue.remove(i)
		}
	}
})
::RunDelayed <- function(f) {
	DelayedFunctionQueue.insert(0, f)
}
::RunNextStep <- function(f) {
	OneStepQueue.insert(0, f)
}
::RunInNSteps <- function(stepcount, f) {
	if (stepcount <= 0) {
		RunNextStep(f)
	} else {
		SetDelayQueue.insert(0, {func=f step=QueueCurrentStep+stepcount time=-1})
	}
}
::RunInNSeconds <- function(seconds, f) {
	if (seconds <= 0) {
		RunNextStep(f)
	} else {
		SetDelayQueue.insert(0, {func=f step=-1 time=Time()+seconds})
	}
}
::EMPTYFUNCTION <- function(){}
# call an empty function a specified ammount of times
# this delays the delayed function queue by approx. 0.105 seconds
# NOTE / WARN: do not call this too often or everything related to waiting will
# 			   happen in an unpredictable order
::RunDelayedWait <- function(steps) {
	for (local i = 0; i < steps; i++) {
		RunDelayed(EMPTYFUNCTION)
	}
}
::RunCommandDelayed <- function(command) {
	RunDelayed(function() {
		RunCommand(command)
	})
}

##############################
# Player Handle utility code #
##############################
// this may not be as performant as doing it inline but I want to clean up a bit
::PlayerIsValid <- function(p) { return p && p.IsValid() }
::PlayerIsHuman <- function(p) { return p && p.IsValid() && !p.IsFakeClient() }
::PlayerIsBot <- function(p) { return p && p.IsValid() && p.IsFakeClient() }
::PlayerInstanceFromUserID <- function(userid) { return GetPlayerFromUserID(userid) }
::RunForPlayerFromIndex <- function(i, f) { local p = PlayerInstanceFromIndex(i); if (PlayerIsValid(p)) return f(p) }
::RunForHumanFromIndex <- function(i, f) { local p = PlayerInstanceFromIndex(i); if (PlayerIsHuman(p)) return f(p) }
::RunForBotFromIndex <- function(i, f) { local p = PlayerInstanceFromIndex(i); if (PlayerIsBot(p)) return f(p) }
::ForeachPlayer <- function(f) { for (local i=1; i <= MaxPlayers; i++) RunForPlayerFromIndex(i, f) }
::ForeachHuman <- function(f) { for (local i=1; i <= MaxPlayers; i++) RunForHumanFromIndex(i, f) }
::ForeachBot <- function(f) { for (local i=1; i <= MaxPlayers; i++) RunForBotFromIndex(i, f) }
// This needs to go somewhere else later
::StringIsTruthy <- function(s) { return s != "0" && s.tolower() != "false" }

# I dont know where else to put this, but it's related to bots
::UTILBotSetMissionSafe <- function(bot, mission, reset_behavior_system = false, next_target = null) {
	if (!bot || !bot.IsValid() || !bot.IsPlayer() || !bot.IsFakeClient()) return;
	local target = next_target
	if (mission == 2) { # MISSION_DESTROY_SENTRIES
		if (!target || !target.IsValid())
			target = bot.GetMissionTarget()
		if (!target || !target.IsValid()) {
			local hb = []
			ForeachHuman(function(h){hb.push(h)})
			target = SelectWeighted(hb)
		}
		# do not allow mission 2 with invalid target
		if (!target || !target.IsValid())
			return;
		bot.SetMissionTarget(target)
	}
	bot.SetMission(mission, reset_behavior_system)
	if (target)
		bot.SetMissionTarget(target)
}

#############################
# PVE INITIAL MAPLOAD SETUP #
#############################

# apply map specific settings
if (PVEUseMapReccomendedSettings) {
	function __try_apply_settings__(name) {
		foreach(mapname, keyvalues in PVEMapSettingOverrides) {
			if (typeof(mapname) == "array" ? mapname.find(name) != null : mapname == name) {
				foreach(key, value in keyvalues) {
					getroottable()[key] <- value
				}
			}
		}
	}
	function __apply_settings__(params=null) {
		local mapname = GetMapName()
		# workshop maps begin with "workshop/" so split at /
		local gametype = split(split(mapname, "_")[0], "/", true)[0]
		if (gametype == "workshop") gametype = split(split(mapname, "_")[0], "/", true)[1]
		if (!IsAttackDefenseMode()) __try_apply_settings__(gametype + "_noad")
		__try_apply_settings__(gametype)
		__try_apply_settings__(mapname)
	}
	__apply_settings__()
	RegisterEvent("Setup", __apply_settings__)
}

::PVEClassCheckInitialized <- false
RegisterEvent("Setup", function(params){
	# I think this might be redundant now
	if (PVEClassCheckInitialized) return
	::PVEClassCheckInitialized <- true
	local d = PVEDisabled
	if (null==Entities.FindByClassname(null, "Item_teamflag") || !PVEUseSpecialPresetForCTF) {
		if (FixMePVEForceMissionType == -1) ::FixMePVEForceMissionType <- FixMePVEForceMissionTypeDefault
		PVELoadClassConfig(PVEDefaultClass)
	}
	else {
		if (FixMePVEForceMissionType == -1) ::FixMePVEForceMissionType <- FixMePVEForceMissionTypeIntel
		PVELoadClassConfig(PVEDefaultIntelClass)
	}
	if (d) PVELoadClassConfig("disable")
	else PVEInitCVars()
})
if (PVEAutoGenNavMesh && !PVEForceDisable) {
	::PVENavGenDisableReason <- "navmesh generation required (type !nmg in chat or nav_generate in console)"
	::PVENavGenerates <- false
	RegisterEvent("Setup", function(params) {
		if (!PVENavGenerates && NavMesh.GetNavAreaCount() == 0) {
			::PVENavGenerates <- true
			printl("navmesh not found, running nav_generate")
			if (startswith(GetMapName(), "workshop")) {
				printl("this is a workshop map, navmeshes may break, please generate manually.")
				return
			}
			::PVEMaintenanceMode <- true
			::PVEMaintenanceMessage <- "Generating navmesh for " + GetMapName() + ", please wait.\nThis might cause some lag, the map will reload when finished."
			PVELoadClassConfig("disable")
			::PVEForceDisable <- true
			::PVEForceDisableReason <- PVENavGenDisableReason
			if (PVEIsOnDedicatedServer) {
				if (PVEDebugPrint)
					printl("[PVENAVGEN] "  + GetMapName() + " " + PVEGetTimestamp())
				RunCommandWithCheats("nav_generate")
			}
			else {
				::PVEMaintenanceMode <- false
				::PVENavmeshMessageDisplayed <- false
				RegisterEvent("player_spawn", function(params) {
					local p = GetPlayerFromUserID(params.userid)
					if (p == GetListenServerHost() && !PVENavmeshMessageDisplayed && !IsInWaitingForPlayers()) {
						::PVENavmeshMessageDisplayed <- true
						ClientPrint(p, 4, "Missing navmesh for " + GetMapName() + ".")
						#ClientPrint(p, 4, "Missing navmesh for " + GetMapName() + ".\nTo use PVE please generate a navmesh by writing `!nmg` in chat after the round starts.\nOtherwise the bots won`t move.")
					}
				})
			}
		}
	})
}

#######################
# WEAPON RELATED CODE #
#######################

# thanks to https://tf2maps.net/downloads/weapon-id-enum-and-helper-functions.16800/

// Enum of EVERY weapon class in the game, directly ripped from the game by replaycoding
// The enum numbers (0-109) directly match up with what the game uses. I'd recommend just using the enum names instead of numbers
enum eWeaponId {
	TF_WEAPON_NONE,
	TF_WEAPON_BAT,
	TF_WEAPON_BAT_WOOD,
	TF_WEAPON_BOTTLE,
	TF_WEAPON_FIREAXE,
	TF_WEAPON_CLUB,
	TF_WEAPON_CROWBAR,
	TF_WEAPON_KNIFE,
	TF_WEAPON_FISTS,
	TF_WEAPON_SHOVEL,
	TF_WEAPON_WRENCH,
	TF_WEAPON_BONESAW,
	TF_WEAPON_SHOTGUN_PRIMARY,
	TF_WEAPON_SHOTGUN_SOLDIER,
	TF_WEAPON_SHOTGUN_HWG,
	TF_WEAPON_SHOTGUN_PYRO,
	TF_WEAPON_SCATTERGUN,
	TF_WEAPON_SNIPERRIFLE,
	TF_WEAPON_MINIGUN,
	TF_WEAPON_SMG,
	TF_WEAPON_SYRINGEGUN_MEDIC,
	TF_WEAPON_TRANQ,
	TF_WEAPON_ROCKETLAUNCHER,
	TF_WEAPON_GRENADELAUNCHER,
	TF_WEAPON_PIPEBOMBLAUNCHER,
	TF_WEAPON_FLAMETHROWER,
	TF_WEAPON_GRENADE_NORMAL,
	TF_WEAPON_GRENADE_CONCUSSION,
	TF_WEAPON_GRENADE_NAIL,
	TF_WEAPON_GRENADE_MIRV,
	TF_WEAPON_GRENADE_MIRV_DEMOMAN,
	TF_WEAPON_GRENADE_NAPALM,
	TF_WEAPON_GRENADE_GAS,
	TF_WEAPON_GRENADE_EMP,
	TF_WEAPON_GRENADE_CALTROP,
	TF_WEAPON_GRENADE_PIPEBOMB,
	TF_WEAPON_GRENADE_SMOKE_BOMB,
	TF_WEAPON_GRENADE_HEAL,
	TF_WEAPON_GRENADE_STUNBALL,
	TF_WEAPON_GRENADE_JAR,
	TF_WEAPON_GRENADE_JAR_MILK,
	TF_WEAPON_PISTOL,
	TF_WEAPON_PISTOL_SCOUT,
	TF_WEAPON_REVOLVER,
	TF_WEAPON_NAILGUN,
	TF_WEAPON_PDA,
	TF_WEAPON_PDA_ENGINEER_BUILD,
	TF_WEAPON_PDA_ENGINEER_DESTROY,
	TF_WEAPON_PDA_SPY,
	TF_WEAPON_BUILDER,
	TF_WEAPON_MEDIGUN,
	TF_WEAPON_GRENADE_MIRVBOMB,
	TF_WEAPON_FLAMETHROWER_ROCKET,
	TF_WEAPON_GRENADE_DEMOMAN,
	TF_WEAPON_SENTRY_BULLET,
	TF_WEAPON_SENTRY_ROCKET,
	TF_WEAPON_DISPENSER,
	TF_WEAPON_INVIS,
	TF_WEAPON_FLAREGUN,
	TF_WEAPON_LUNCHBOX,
	TF_WEAPON_JAR,
	TF_WEAPON_COMPOUND_BOW,
	TF_WEAPON_BUFF_ITEM,
	TF_WEAPON_PUMPKIN_BOMB,
	TF_WEAPON_SWORD,
	TF_WEAPON_ROCKETLAUNCHER_DIRECTHIT,
	TF_WEAPON_LIFELINE,
	TF_WEAPON_LASER_POINTER,
	TF_WEAPON_DISPENSER_GUN,
	TF_WEAPON_SENTRY_REVENGE,
	TF_WEAPON_JAR_MILK,
	TF_WEAPON_HANDGUN_SCOUT_PRIMARY,
	TF_WEAPON_BAT_FISH,
	TF_WEAPON_CROSSBOW,
	TF_WEAPON_STICKBOMB,
	TF_WEAPON_HANDGUN_SCOUT_SECONDARY,
	TF_WEAPON_SODA_POPPER,
	TF_WEAPON_SNIPERRIFLE_DECAP,
	TF_WEAPON_RAYGUN,
	TF_WEAPON_PARTICLE_CANNON,
	TF_WEAPON_MECHANICAL_ARM,
	TF_WEAPON_DRG_POMSON,
	TF_WEAPON_BAT_GIFTWRAP,
	TF_WEAPON_GRENADE_ORNAMENT_BALL,
	TF_WEAPON_FLAREGUN_REVENGE,
	TF_WEAPON_PEP_BRAWLER_BLASTER,
	TF_WEAPON_CLEAVER,
	TF_WEAPON_GRENADE_CLEAVER,
	TF_WEAPON_STICKY_BALL_LAUNCHER,
	TF_WEAPON_GRENADE_STICKY_BALL,
	TF_WEAPON_SHOTGUN_BUILDING_RESCUE,
	TF_WEAPON_CANNON,
	TF_WEAPON_THROWABLE,
	TF_WEAPON_GRENADE_THROWABLE,
	TF_WEAPON_PDA_SPY_BUILD,
	TF_WEAPON_GRENADE_WATERBALLOON,
	TF_WEAPON_HARVESTER_SAW,
	TF_WEAPON_SPELLBOOK,
	TF_WEAPON_SPELLBOOK_PROJECTILE,
	TF_WEAPON_SNIPERRIFLE_CLASSIC,
	TF_WEAPON_PARACHUTE,
	TF_WEAPON_GRAPPLINGHOOK,
	TF_WEAPON_PASSTIME_GUN,
	TF_WEAPON_CHARGED_SMG,
	TF_WEAPON_BREAKABLE_SIGN,
	TF_WEAPON_ROCKETPACK,
	TF_WEAPON_SLAP,
	TF_WEAPON_JAR_GAS,
	TF_WEAPON_GRENADE_JAR_GAS,
	TF_WEPON_FLAME_BALL, // fun fact! valve made this typo, not me! this is in the game!
	TF_WEAPON_FLAME_BALL = 109 // This is the same value as above, just in case you want to be sure you didn't make a typo
}

// loop through the weapon ID enum and put it in the ROOT table.
// everything below here relies on this.
// can't use const table because vscript only updates that when a new script loads.
foreach (enumerator, weapon in getconsttable().eWeaponId) {
	if ( !( weapon in getroottable() ) ) {
			getroottable()[enumerator] <- weapon;
	}
}

getroottable().aWeaponIDs <- [
	{
		aInventoryId = [0, 190, 317, 325, 349, 355, 450, 452, 660, 30667],
		sClassname = "tf_weapon_bat",
		iWeaponId = TF_WEAPON_BAT
	},
	{
		aInventoryId = [44],
		sClassname = "tf_weapon_bat_wood",
		iWeaponId = TF_WEAPON_BAT_WOOD
	},
	{
		aInventoryId = [1, 191, 609],
		sClassname = "tf_weapon_bottle",
		iWeaponId = TF_WEAPON_BOTTLE
	},
	{
		aInventoryId = [2, 192, 38, 153, 214, 326, 348, 457, 466, 593, 739, 1000],
		sClassname = "tf_weapon_fireaxe",
		iWeaponId = TF_WEAPON_FIREAXE
	},
	{
		aInventoryId = [3, 193, 171, 232, 401],
		sClassname = "tf_weapon_club",
		iWeaponId = TF_WEAPON_CLUB
	},
	{
		aInventoryId = [4, 194, 225, 356, 461, 574, 638, 649, 665, 727, 794, 803, 883, 892, 901, 910, 959, 968, 15062, 15094, 15095, 15096, 15118, 15119, 15143, 15144],
		sClassname = "tf_weapon_knife",
		iWeaponId = TF_WEAPON_KNIFE
	},
	{
		aInventoryId = [5, 195, 43, 239, 310, 331, 426, 587, 656, 1084, 1100, 1184],
		sClassname = "tf_weapon_fists",
		iWeaponId = TF_WEAPON_FISTS
	},
	{
		aInventoryId = [6, 196, 128, 154, 264, 416, 447],
		sClassname = "tf_weapon_shovel",
		iWeaponId = TF_WEAPON_SHOVEL
	},
	{
		aInventoryId = [7, 197, 155, 169, 329, 589, 662, 795, 804, 884, 893, 902, 911, 960, 969, 15073, 15074, 15139, 15140, 15114, 15156],
		sClassname = "tf_weapon_wrench",
		iWeaponId = TF_WEAPON_WRENCH
	},
	{
		// gunslinger is considered a wrench
		aInventoryId = [142],
		sClassname = "tf_weapon_robot_arm"
		iWeaponId = TF_WEAPON_WRENCH
	},
	{
		aInventoryId = [8, 198, 37, 173, 304, 413, 1003, 1143],
		sClassname = "tf_weapon_bonesaw",
		iWeaponId = TF_WEAPON_BONESAW
	},
	{
		aInventoryId = [9, 257, 527],
		sClassname = "tf_weapon_shotgun_primary",
		iWeaponId = TF_WEAPON_SHOTGUN_PRIMARY
	},
	{
		aInventoryId = [10],
		sClassname = "tf_weapon_shotgun_soldier",
		iWeaponId = TF_WEAPON_SHOTGUN_SOLDIER
	},
	{
		aInventoryId = [11, 425],
		sClassname = "tf_weapon_shotgun_hwg",
		iWeaponId = TF_WEAPON_SHOTGUN_HWG
	},
	{
		aInventoryId = [12],
		sClassname = "tf_weapon_shotgun_pyro",
		iWeaponId = TF_WEAPON_SHOTGUN_PYRO
	},
	{
		aInventoryId = [13, 200, 45, 669, 799, 808, 888, 897, 906, 915, 964, 973, 1078, 1103, 15002, 15015, 15021, 15029, 15036, 15053, 15065, 15069, 15106, 15107, 15108, 15131, 15151, 15157],
		sClassname = "tf_weapon_scattergun",
		iWeaponId = TF_WEAPON_SCATTERGUN
	},
	{
		aInventoryId = [14, 201, 230, 526, 664, 752, 792, 801, 851, 881, 890, 899, 908, 957, 966, 15000, 15007, 15019, 15023, 15033, 15059, 15070, 15071, 15072, 15111, 15112, 15135, 15136, 15154, 30665],
		sClassname = "tf_weapon_sniperrifle",
		iWeaponId = TF_WEAPON_SNIPERRIFLE
	},
	{
		aInventoryId = [15, 202, 41, 298, 312, 424, 654, 793, 802, 811, 832, 850, 882, 891, 900, 15004, 15020, 15026, 15031, 15040, 15055, 15086, 15087, 15088, 15098, 15099, 15123, 15124, 15125, 15147],
		sClassname = "tf_weapon_minigun",
		iWeaponId = TF_WEAPON_MINIGUN
	},
	{
		aInventoryId = [16, 203, 1149, 15001, 15022, 15032, 15037, 15058, 15076, 15110, 15134, 15153],
		sClassname = "tf_weapon_smg",
		iWeaponId = TF_WEAPON_SMG
	},
	{
		aInventoryId = [17, 204, 36, 412],
		sClassname = "tf_weapon_syringegun_medic",
		iWeaponId = TF_WEAPON_SYRINGEGUN_MEDIC
	},
	{
		aInventoryId = [18, 205, 228, 237, 414, 513, 658, 730, 800, 809, 889, 898, 907, 916, 965, 974, 1085, 15006, 15014, 15028, 15043, 15052, 15057, 15081, 15104, 15105, 15129, 15130, 15150],
		sClassname = "tf_weapon_rocketlauncher",
		iWeaponId = TF_WEAPON_ROCKETLAUNCHER
	},
	{
		aInventoryId = [19, 206, 308, 1007, 1151, 15077, 15079, 15091, 15092, 15116, 15117, 15142, 15158],
		sClassname = "tf_weapon_grenadelauncher",
		iWeaponId = TF_WEAPON_GRENADELAUNCHER
	},
	{
		aInventoryId = [20, 207, 130, 265, 661, 797, 806, 886, 895, 904, 913, 962, 971, 1150, 15009, 15012, 15024, 15038, 15045, 15048, 15082, 15083, 15084, 15113, 15137, 15138, 15155],
		sClassname = "tf_weapon_pipebomblauncher",
		iWeaponId = TF_WEAPON_PIPEBOMBLAUNCHER
	},
	{
		aInventoryId = [21, 208, 40, 215, 594, 659, 741, 798, 807, 887, 896, 905, 914, 963, 972, 1146, 15005, 15017, 15030, 15034, 15049, 15054, 15066, 15067, 15068, 15089, 15090, 15115, 15141, 30474],
		sClassname = "tf_weapon_flamethrower",
		iWeaponId = TF_WEAPON_FLAMETHROWER
	},
	{
		aInventoryId = [24, 210, 61, 161, 224, 460, 525, 1006, 1142, 15011, 15027, 15042, 15051, 15062, 15063, 15064, 15103, 15127, 15128, 15149],
		sClassname = "tf_weapon_revolver",
		iWeaponId = TF_WEAPON_REVOLVER
	},
	{
		aInventoryId = [25, 737],
		sClassname = "tf_weapon_pda_engineer_build",
		iWeaponId = TF_WEAPON_PDA_ENGINEER_BUILD
	},
	{
		aInventoryId = [26],
		sClassname = "tf_weapon_pda_engineer_destroy",
		iWeaponId = TF_WEAPON_PDA_ENGINEER_DESTROY
	},
	{
		aInventoryId = [27],
		sClassname = "tf_weapon_pda_spy",
		iWeaponId = TF_WEAPON_PDA_SPY
	},
	{
		aInventoryId = [28, 735],
		sClassname = "tf_weapon_builder",
		iWeaponId = TF_WEAPON_BUILDER
	},
	{
		// All sappers after stock sapper have their own class, but are still builder.
		aInventoryId =  [736, 810, 831, 933, 1080, 1102],
		sClassname = "tf_weapon_sapper",
		iWeaponId = TF_WEAPON_BUILDER
	},
	{
		aInventoryId = [29, 211, 35, 411, 663, 796, 805, 885, 894, 903, 912, 961, 970, 998, 15008, 15010, 15025, 15039, 15050, 15078, 15098, 15121, 15122, 15123, 15145, 15146],
		sClassname = "tf_weapon_medigun",
		iWeaponId = TF_WEAPON_MEDIGUN
	},
	{
		aInventoryId = [30, 212, 59, 60, 297, 947],
		sClassname = "tf_weapon_invis",
		iWeaponId = TF_WEAPON_INVIS
	},
	{
		aInventoryId = [39, 351, 740, 1081],
		sClassname = "tf_weapon_flaregun",
		iWeaponId = TF_WEAPON_FLAREGUN
	},
	{
		aInventoryId = [42, 159, 311, 433, 863, 1002, 1190],
		sClassname = "tf_weapon_lunchbox",
		iWeaponId = TF_WEAPON_LUNCHBOX
	},
	{
		// scout drinks are considered lunchbox items, even though they have a different class
		aInventoryId = [46, 163, 1145],
		sClassname = "tf_weapon_lunchbox_drink",
		iWeaponId = TF_WEAPON_LUNCHBOX
	},
	{
		aInventoryId = [58, 1083, 1105],
		sClassname = "tf_weapon_jar",
		iWeaponId = TF_WEAPON_JAR
	},
	{
		aInventoryId = [56, 1005, 1092],
		sClassname = "tf_weapon_compound_bow",
		iWeaponId = TF_WEAPON_COMPOUND_BOW
	},
	{
		aInventoryId = [129, 226, 354, 1001],
		sClassname = "tf_weapon_buff_item",
		iWeaponId = TF_WEAPON_BUFF_ITEM
	},
	{
		aInventoryId = [132, 172, 266, 327, 404, 482, 1082],
		sClassname = "tf_weapon_sword",
		iWeaponId = TF_WEAPON_SWORD
	},
	{
		// half zatoichi has its own class, but is still considered a sword
		aInventoryId = [357],
		sClassname = "tf_weapon_katana",
		iWeaponId = TF_WEAPON_SWORD
	},
	{
		aInventoryId = [127],
		sClassname = "tf_rocketlauncher_directhit",
		iWeaponId = TF_WEAPON_ROCKETLAUNCHER_DIRECTHIT
	},
	{
		aInventoryId = [140, 1086, 30668],
		sClassname = "tf_weapon_laser_pointer",
		iWeaponId = TF_WEAPON_LASER_POINTER
	},
	{
		aInventoryId = [141, 1004],
		sClassname = "tf_weapon_sentry_revenge",
		iWeaponId = TF_WEAPON_SENTRY_REVENGE
	},
	{
		aInventoryId = [222, 1121],
		sClassname = "tf_weapon_jar_milk",
		iWeaponId = TF_WEAPON_JAR_MILK
	},
	{
		aInventoryId = [220],
		sClassname = "tf_weapon_handgun_scout_primary",
		iWeaponId = TF_WEAPON_HANDGUN_SCOUT_PRIMARY
	},
	{
		aInventoryId = [221, 572, 999],
		sClassname = "tf_weapon_bat_fish",
		iWeaponId = TF_WEAPON_BAT_FISH
	},
	{
		aInventoryId = [305, 1079],
		sClassname = "tf_weapon_crossbow",
		iWeaponId = TF_WEAPON_CROSSBOW
	},
	{
		aInventoryId = [307],
		sClassname = "tf_weapon_stickbomb",
		iWeaponId = TF_WEAPON_STICKBOMB
	},
	{
		aInventoryId = [449, 773],
		sClassname = "tf_weapon_handgun_scout_secondary",
		iWeaponId = TF_WEAPON_HANDGUN_SCOUT_SECONDARY
	},
	{
		aInventoryId = [448],
		sClassname = "tf_weapon_soda_popper",
		iWeaponId =  TF_WEAPON_SODA_POPPER
	},
	{
		aInventoryId = [402],
		sClassname = "tf_weapon_sniperrifle_decap",
		iWeaponId =  TF_WEAPON_SNIPERRIFLE_DECAP
	},
	{
		aInventoryId = [442],
		sClassname = "tf_weapon_raygun",
		iWeaponId =  TF_WEAPON_RAYGUN
	},
	{
		aInventoryId = [441],
		sClassname = "tf_weapon_particle_cannon",
		iWeaponId =  TF_WEAPON_PARTICLE_CANNON
	},
	{
		aInventoryId = [528],
		sClassname = "tf_weapon_mechanical_arm",
		iWeaponId =  TF_WEAPON_MECHANICAL_ARM
	},
	{
		aInventoryId = [588],
		sClassname = "tf_weapon_drg_pomson",
		iWeaponId =  TF_WEAPON_DRG_POMSON
	},
	{
		aInventoryId = [648],
		sClassname = "tf_weapon_bat_giftwrap",
		iWeaponId =  TF_WEAPON_BAT_GIFTWRAP
	},
	{
		aInventoryId = [595],
		sClassname = "tf_weapon_flaregun_revenge",
		iWeaponId =  TF_WEAPON_FLAREGUN_REVENGE
	},
	{
		aInventoryId = [772],
		sClassname = "tf_weapon_pep_brawler_blaster",
		iWeaponId =  TF_WEAPON_PEP_BRAWLER_BLASTER
	},
	{
		aInventoryId = [812, 833],
		sClassname = "tf_weapon_cleaver",
		iWeaponId =  TF_WEAPON_CLEAVER
	},
	{
		aInventoryId = [997],
		sClassname = "tf_weapon_shotgun_building_rescue",
		iWeaponId =  TF_WEAPON_SHOTGUN_BUILDING_RESCUE
	},
	{
		aInventoryId = [996],
		sClassname = "tf_weapon_cannon",
		iWeaponId =  TF_WEAPON_CANNON
	},
	{
		aInventoryId = [1069, 1070, 1132, 5605],
		sClassname = "tf_weapon_spellbook",
		iWeaponId =  TF_WEAPON_SPELLBOOK
	},
	{
		aInventoryId = [1098],
		sClassname = "tf_weapon_sniperrifle_classic",
		iWeaponId =  TF_WEAPON_SNIPERRIFLE_CLASSIC
	},
	{
		aInventoryId = [1101],
		sClassname = "tf_weapon_parachute",
		iWeaponId =  TF_WEAPON_PARACHUTE
	},
	{
		aInventoryId = [1152],
		sClassname = "tf_weapon_grapplinghook",
		iWeaponId =  TF_WEAPON_GRAPPLINGHOOK
	},
	{
		aInventoryId = [751],
		sClassname = "tf_weapon_charged_smg",
		iWeaponId =  TF_WEAPON_CHARGED_SMG
	},
	{
		aInventoryId = [813, 834],
		sClassname = "tf_weapon_breakable_sign",
		iWeaponId =  TF_WEAPON_BREAKABLE_SIGN
	},
	{
		aInventoryId = [1179],
		sClassname = "tf_weapon_rocketpack",
		iWeaponId =  TF_WEAPON_ROCKETPACK
	},
	{
		aInventoryId = [1181],
		sClassname = "tf_weapon_slap",
		iWeaponId =  TF_WEAPON_SLAP
	},
	{
		aInventoryId = [1180],
		sClassname = "tf_weapon_jar_gas",
		iWeaponId =  TF_WEAPON_JAR_GAS
	},
	{
		// This doesn't match the class name, I think its correct though?
		aInventoryId = [1178],
		sClassname = "tf_weapon_rocketlauncher_fireball",
		iWeaponId =  TF_WEAPON_FLAME_BALL
	},

]

// ? maybe rename to be a bit clearer
getroottable().aFunnyWeaponIDs <- [
	{
		// pain train uses shovel classname
		aInventoryId = [775],
		sClassname = "tf_weapon_shovel"
		sWeapon = "paintrain"
	},
	{
		aInventoryId = [22, 23, 209, 160, 294, 15013, 15018, 15035, 15041, 15046, 15056, 15060, 15061, 15100, 15101, 15102, 15126, 15148, 30666],
		sClassname = "tf_weapon_pistol"
		sWeapon = "pistol"
	},
	{
		// all-class melee's use the saxxy classname
		aInventoryId = [264, 423, 473, 880, 939, 954, 1013, 1071, 1123, 1127, 30758],
		sClassname = "saxxy"
		sWeapon = "melee"
	},
	{
		// shotguns DO NOT use a different classname.
		aInventoryId = [199, 415, 1141, 1151, 1153, 15003, 15016, 15044, 15047, 15085, 15109, 15132, 15133, 15152]
		sClassname = null
		sWeapon = "shotgun"
	}

]

// GetWeaponIdFromInventoryId - Get the weapon ID (used for events like npc_hurt, player_hurt, etc.) from the inventory ID.
// Inputs:
// - hWeapon	- handle for the weapon entity
// - hAttacker	- OPTIONAL, the attacker entity, NEEDED for some multi-class items like all-class melees
//				- For example, the frying pan uses a DIFFERENT weaponID depending on the attacker's class.
// Outputs:
// - Integer which contains the weapon ID of the weapon.
::GetWeaponIdFromInventoryId <- function( hWeapon, hAttacker = null ) {
	local iWeaponIndex = NetProps.GetPropInt( hWeapon, "m_AttributeManager.m_Item.m_iItemDefinitionIndex" )

	foreach ( weapon in aWeaponIDs ) {
		if(weapon.aInventoryId.find( iWeaponIndex ) != null ) return weapon.iWeaponId;
	}

	foreach ( weapon in aFunnyWeaponIDs ) {
		local sCurrWeapon = null
		if (weapon.aInventoryId.find( iWeaponIndex ) != null ) {
			sCurrWeapon = weapon.sWeapon;
		}

		switch ( sCurrWeapon ) {
			case "paintrain":
				if ( hAttacker != null && hAttacker.GetPlayerClass() == TF_CLASS_SOLDIER ) {
					return TF_WEAPON_SHOVEL;
				}
				else {
					return TF_WEAPON_BOTTLE;
				}
			case "pistol":
				if ( hAttacker != null && hAttacker.GetPlayerClass() == TF_CLASS_SCOUT ) {
					return TF_WEAPON_PISTOL_SCOUT;
				}
				else {
					return TF_WEAPON_PISTOL;
				}
			case "melee":
				if ( hAttacker != null ) {
					switch ( hAttacker.GetPlayerClass() ) {
						case TF_CLASS_SCOUT:
							return TF_WEAPON_BAT;
						case TF_CLASS_SNIPER:
							return TF_WEAPON_CLUB;
						case TF_CLASS_SOLDIER:
							return TF_WEAPON_SHOVEL;
						case TF_CLASS_DEMOMAN:
							return TF_WEAPON_BOTTLE;
						case TF_CLASS_MEDIC:
							return TF_WEAPON_BONESAW;
						case TF_CLASS_HEAVYWEAPONS: // heavy uses fireaxe for all-class melee, for some reason
						case TF_CLASS_PYRO:
							return TF_WEAPON_FIREAXE;
						case TF_CLASS_SPY:
							return TF_WEAPON_KNIFE;
						case TF_CLASS_ENGINEER:
							return TF_WEAPON_WRENCH;
						default:
							break;
					}

				return TF_WEAPON_NONE;
			}
			case "shotgun":
				if ( hAttacker != null ) {
					switch ( hAttacker.GetPlayerClass() ) {
						case TF_CLASS_SOLDIER:
							return TF_WEAPON_SHOTGUN_SOLDIER;
						case TF_CLASS_HEAVYWEAPONS:
							return TF_WEAPON_SHOTGUN_HWG;
						case TF_CLASS_PYRO:
							return TF_WEAPON_SHOTGUN_PYRO;
						default:
							break;
						}

						return TF_WEAPON_SHOTGUN_PRIMARY
					}
			default:
				break;
		}
	}

	// if we can't find a weapon, just return NONE
	return TF_WEAPON_NONE;
}

# UNUSED
::GetWeaponIdFromClassname <- function( hWeapon, hAttacker = null ) {
	foreach ( weapon in aWeaponIDs ) {
		if( weapon.sClassname == hWeapon.GetClassname() ) {
			// Pain train is stupid, and uses the shovel classname, so we NEED to check its inventory ID
			if (weapon.sClassname = "tf_weapon_shovel" && GetPropInt( hWeapon, "m_AttributeManager.m_Item.m_iItemDefinitionIndex" ) == 775 ) {
				// If player is a demoman, return TF_WEAPON_BOTTLE, otherwise, just let it return the weapon ID.
				if ( hAttacker != null && hAttacker.GetPlayerClass() == TF_CLASS_DEMOMAN ) {
					return TF_WEAPON_BOTTLE;
				}
			}

			return weapon.iWeaponId;
		}
	}

	// copied from the other function, maybe should clean it up idk
	foreach ( weapon in aFunnyWeaponIDs ) {
		local sCurrWeapon = null
		if (weapon.sClassname == hWeapon.GetClassname() ) {
			sCurrWeapon = weapon.sWeapon;
		}

		switch ( sCurrWeapon ) {
			case "pistol":
				if ( hAttacker != null && hAttacker.GetPlayerClass() == TF_CLASS_SCOUT ) {
					return TF_WEAPON_PISTOL_SCOUT;
				}
				else {
					return TF_WEAPON_PISTOL;
				}
			case "melee":
				if ( hAttacker != null ) {
					switch ( hAttacker.GetPlayerClass() ) {
						case TF_CLASS_SCOUT:
							return TF_WEAPON_BAT;
						case TF_CLASS_SNIPER:
							return TF_WEAPON_CLUB;
						case TF_CLASS_SOLDIER:
							return TF_WEAPON_SHOVEL;
						case TF_CLASS_DEMOMAN:
							return TF_WEAPON_BOTTLE;
						case TF_CLASS_MEDIC:
							return TF_WEAPON_BONESAW;
						case TF_CLASS_HEAVYWEAPONS: // heavy uses fireaxe for all-class melee, for some reason
						case TF_CLASS_PYRO:
							return TF_WEAPON_FIREAXE;
						case TF_CLASS_SPY:
							return TF_WEAPON_KNIFE;
						case TF_CLASS_ENGINEER:
							return TF_WEAPON_WRENCH;
						default:
							break;
					}

				return TF_WEAPON_NONE;
			}
			case "shotgun":
				if ( hAttacker != null ) {
					switch ( hAttacker.GetPlayerClass() ) {
						case TF_CLASS_SOLDIER:
							return TF_WEAPON_SHOTGUN_SOLDIER;
						case TF_CLASS_HEAVYWEAPONS:
							return TF_WEAPON_SHOTGUN_HWG;
						case TF_CLASS_PYRO:
							return TF_WEAPON_SHOTGUN_PYRO;
						default:
							break;
						}

					return TF_WEAPON_SHOTGUN_PRIMARY
					}
			default:
				break;
		}
	}

	// if we can't find a weapon, just return NONE
	return TF_WEAPON_NONE;
}

# end of https://tf2maps.net/downloads/weapon-id-enum-and-helper-functions.16800/

# custom


// GetWeaponIdFromInventoryId - Get the weapon ID (used for events like npc_hurt, player_hurt, etc.) from the inventory ID.
// Inputs:
// - hWeapon	- handle for the weapon entity
// - hAttacker	- OPTIONAL, the attacker entity, NEEDED for some multi-class items like all-class melees
//				- For example, the frying pan uses a DIFFERENT weaponID depending on the attacker's class.
// Outputs:
// - Integer which contains the weapon ID of the weapon.
::GetWeaponIdFromId <- function( hWeapon, hAttacker = null ) {
	local iWeaponIndex = hWeapon

	foreach ( weapon in aWeaponIDs ) {
		if(weapon.aInventoryId.find( iWeaponIndex ) != null ) return weapon.iWeaponId;
	}

	foreach ( weapon in aFunnyWeaponIDs ) {
		local sCurrWeapon = null
		if (weapon.aInventoryId.find( iWeaponIndex ) != null ) {
			sCurrWeapon = weapon.sWeapon;
		}

		switch ( sCurrWeapon ) {
			case "paintrain":
				if ( hAttacker != null && hAttacker.GetPlayerClass() == TF_CLASS_SOLDIER ) {
					return TF_WEAPON_SHOVEL;
				}
				else {
					return TF_WEAPON_BOTTLE;
				}
			case "pistol":
				if ( hAttacker != null && hAttacker.GetPlayerClass() == TF_CLASS_SCOUT ) {
					return TF_WEAPON_PISTOL_SCOUT;
				}
				else {
					return TF_WEAPON_PISTOL;
				}
			case "melee":
				if ( hAttacker != null ) {
					switch ( hAttacker.GetPlayerClass() ) {
						case TF_CLASS_SCOUT:
							return TF_WEAPON_BAT;
						case TF_CLASS_SNIPER:
							return TF_WEAPON_CLUB;
						case TF_CLASS_SOLDIER:
							return TF_WEAPON_SHOVEL;
						case TF_CLASS_DEMOMAN:
							return TF_WEAPON_BOTTLE;
						case TF_CLASS_MEDIC:
							return TF_WEAPON_BONESAW;
						case TF_CLASS_HEAVYWEAPONS: // heavy uses fireaxe for all-class melee, for some reason
						case TF_CLASS_PYRO:
							return TF_WEAPON_FIREAXE;
						case TF_CLASS_SPY:
							return TF_WEAPON_KNIFE;
						case TF_CLASS_ENGINEER:
							return TF_WEAPON_WRENCH;
						default:
							break;
					}

				return TF_WEAPON_NONE;
			}
			case "shotgun":
				if ( hAttacker != null ) {
					switch ( hAttacker.GetPlayerClass() ) {
						case TF_CLASS_SOLDIER:
							return TF_WEAPON_SHOTGUN_SOLDIER;
						case TF_CLASS_HEAVYWEAPONS:
							return TF_WEAPON_SHOTGUN_HWG;
						case TF_CLASS_PYRO:
							return TF_WEAPON_SHOTGUN_PYRO;
						default:
							break;
						}

						return TF_WEAPON_SHOTGUN_PRIMARY
					}
			default:
				break;
		}
	}

	// if we can't find a weapon, just return NONE
	return TF_WEAPON_NONE;
}


// GetWeaponIdFromInventoryId - Get the weapon ID (used for events like npc_hurt, player_hurt, etc.) from the inventory ID.
// Inputs:
// - hWeapon	- handle for the weapon entity
// - hAttacker	- OPTIONAL, the attacker entity, NEEDED for some multi-class items like all-class melees
//				- For example, the frying pan uses a DIFFERENT weaponID depending on the attacker's class.
// Outputs:
// - Integer which contains the weapon ID of the weapon.
::GetWeaponClassnameFromId <- function( hWeapon, hAttacker = null ) {
	local iWeaponIndex = hWeapon

	foreach ( weapon in aWeaponIDs ) {
		if (weapon.aInventoryId.find(iWeaponIndex) != null) return weapon.sClassname;
	}

	foreach ( weapon in aFunnyWeaponIDs ) {
		local sCurrWeapon = null
		local sCurrName = null
		if (weapon.aInventoryId.find( iWeaponIndex ) != null ) {
			sCurrWeapon = weapon.sWeapon;
			#sCurrName = weapon.sClassname;

			#return sCurrName;
		}

		switch ( sCurrWeapon ) {
			case "paintrain":
				if ( hAttacker != null && hAttacker.GetPlayerClass() == Constants.ETFClass.TF_CLASS_SOLDIER ) {
					return "tf_weapon_shovel";
				}
				else {
					return "tf_weapon_bottle";
				}
			case "pistol":
				if ( hAttacker != null && hAttacker.GetPlayerClass() == Constants.ETFClass.TF_CLASS_SCOUT ) {
					return "tf_weapon_pistol_scout";
				}
				else {
					return "tf_weapon_pistol";
				}
			case "melee":
				if ( hAttacker != null ) {
					switch ( hAttacker.GetPlayerClass() ) {
						case Constants.ETFClass.TF_CLASS_SCOUT:
							return "tf_weapon_bat";
						case Constants.ETFClass.TF_CLASS_SNIPER:
							return "tf_weapon_club";
						case Constants.ETFClass.TF_CLASS_SOLDIER:
							return "tf_weapon_shovel";
						case Constants.ETFClass.TF_CLASS_DEMOMAN:
							return "tf_weapon_bottle";
						case Constants.ETFClass.TF_CLASS_MEDIC:
							return "tf_weapon_bonesaw";
						case Constants.ETFClass.TF_CLASS_HEAVYWEAPONS: // heavy uses fireaxe for all-class melee, for some reason
						case Constants.ETFClass.TF_CLASS_PYRO:
							return "tf_weapon_fireaxe";
						case Constants.ETFClass.TF_CLASS_SPY:
							return "tf_weapon_knife";
						case Constants.ETFClass.TF_CLASS_ENGINEER:
							return "tf_weapon_wrench";
						default:
							break;
					}

				return "tf_weapon_bottle";
			}
			case "shotgun":
				if ( hAttacker != null ) {
					switch ( hAttacker.GetPlayerClass() ) {
						case Constants.ETFClass.TF_CLASS_SOLDIER:
							return "tf_weapon_shotgun_soldier";
						case Constants.ETFClass.TF_CLASS_HEAVYWEAPONS:
							return "tf_weapon_shotgun_hwg";
						case Constants.ETFClass.TF_CLASS_PYRO:
							return "tf_weapon_shotgun_pyro";
						default:
							break;
						}

						return "tf_weapon_shotgun_primary"
					}
			default:
				break;
		}
	}

	// if we can't find a weapon, just return NONE
	return "";
}

::WEAPON_SLOTS <- {
	tf_weapon_bat_fish = 2
	tf_weapon_bat_giftwrap = 2
	tf_weapon_bat = 2
	tf_weapon_bat_wood = 2
	tf_weapon_bonesaw = 2
	tf_weapon_bottle = 2
	tf_weapon_breakable_sign = 2
	tf_weapon_buff_item = 1
	tf_weapon_builder = 5
	tf_weapon_cannon = 0
	tf_weapon_charged_smg = 1
	tf_weapon_cleaver = 1
	tf_weapon_club = 2
	tf_weapon_compound_bow = 0
	tf_weapon_crossbow = 0
	tf_weapon_drg_pomson = 0
	tf_weapon_fireaxe = 2
	tf_weapon_fists = 2
	tf_weapon_flamethrower = 0
	tf_weapon_flaregun_revenge = 1
	tf_weapon_flaregun = 1
	tf_weapon_grapplinghook = 5
	tf_weapon_grenadelauncher = 0
	tf_weapon_handgun_scout_primary = 0
	tf_weapon_handgun_scout_secondary = 1
	tf_weapon_invis = 4
	tf_weapon_jar_gas = 1
	tf_weapon_jar_milk = 1
	tf_weapon_jar = 1
	tf_weapon_katana = 2
	tf_weapon_knife = 2
	tf_weapon_laser_pointer = 1
	tf_weapon_lunchbox_drink = 1
	tf_weapon_lunchbox = 1
	tf_weapon_mechanical_arm = 1
	tf_weapon_medigun = 1
	tf_weapon_minigun = 0
	tf_weapon_objectselection = 4
	tf_weapon_parachute_primary = 0
	tf_weapon_parachute_secondary = 1
	tf_weapon_parachute = 1
	tf_weapon_particle_cannon = 0
	tf_weapon_passtime_gun = 0
	tf_weapon_pda_engineer_build = 3
	tf_weapon_pda_engineer_destroy = 4
	tf_weapon_pda_spy = 3
	tf_weapon_pep_brawler_blaster = 0
	tf_weapon_pipebomblauncher = 1
	tf_weapon_pistol_scout = 1
	tf_weapon_pistol = 1
	tf_weapon_raygun = 1
	tf_weapon_revolver = 0
	tf_weapon_robot_arm = 2
	tf_weapon_rocketlauncher_airstrike = 0
	tf_weapon_rocketlauncher_directhit = 0
	tf_weapon_rocketlauncher_fireball = 0
	tf_weapon_rocketlauncher = 0
	tf_weapon_rocketpack = 1
	tf_weapon_sapper = 5
	tf_weapon_scattergun = 0
	tf_weapon_sentry_revenge = 0
	tf_weapon_shotgun_building_rescue = 0
	tf_weapon_shotgun_hwg = 1
	tf_weapon_shotgun_primary = 0
	tf_weapon_shotgun_pyro = 1
	tf_weapon_shotgun_soldier = 1
	tf_weapon_shovel = 2
	tf_weapon_slap = 2
	tf_weapon_smg = 1
	tf_weapon_sniperrifle_classic = 0
	tf_weapon_sniperrifle_decap = 0
	tf_weapon_sniperrifle = 0
	tf_weapon_soda_popper = 0
	tf_weapon_spellbook = 5
	tf_weapon_stickbomb = 2
	tf_weapon_sword = 2
	tf_weapon_syringegun_medic = 0
	tf_weapon_wrench = 2
}

::MAX_WEAPONS <- 8
::GivePlayerWeaponRecycle <- false // recycle existing weapon if it has the correct id
// recycle manually created weapons in the correct slot
// This trades off server stability for performance when respawning players
::GivePlayerWeaponRecycleNew <- false
::GivePlayerWeapon <- function(player, className, itemID, attributes = [])
{
	if (className in WEAPON_SLOTS) {
		local slot = WEAPON_SLOTS[className]
		local weapon_found = false
		// remove existing weapon in slot
		for (local i = 0; i < MAX_WEAPONS; i++)
		{
			local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
			if (heldWeapon == null)
				continue
			if (heldWeapon.GetSlot() != slot)
				continue
			if (GivePlayerWeaponRecycle && NetProps.GetPropInt(heldWeapon, "m_AttributeManager.m_Item.m_iItemDefinitionIndex") == itemID){
				return GivePlayerWeaponUnsafe(player, className, itemID, attributes, heldWeapon)
			}
			weapon_found = heldWeapon.IsValid() # only wait if the weapon in that slot still exists
			heldWeapon.Destroy()
			NetProps.SetPropEntityArray(player, "m_hMyWeapons", null, i)
			break
		}
		if (weapon_found) RunDelayedForPlayer(player, function(){
			return GivePlayerWeaponUnsafe(player, className, itemID, attributes)
		}); else
			return GivePlayerWeaponUnsafe(player, className, itemID, attributes)
	} else {
		return GivePlayerWeaponUnsafe(player, className, itemID, attributes)
	}
}
::GivePlayerWeaponBaseSlotOnSlotList <- false
::GivePlayerWeaponUnsafe <- function(player, className, itemID, attributes = [], recycle = null){
	if (recycle != null) {
		#printl(recycle)
		foreach (attribute in attributes) {
			if ("botonly" in attribute && attribute.botonly) continue
			recycle.RemoveAttribute(attribute.name)
			recycle.AddAttribute(attribute.name, attribute.value, "duration" in attribute ? attribute.duration : -1)
		}
		return recycle
	}
	local scope = UTILGetScriptScope(player)
    local weapon
	if (GivePlayerWeaponRecycleNew) {
		if (!("_equipped_weapons" in scope)) scope._equipped_weapons <- array(MAX_WEAPONS)
		local options = scope._equipped_weapons
		for (local i = options.len()-1; i >= 0; i--) {
			local w = options[i]
			if (!w || !w.IsValid()) {
				options[i] = null;
				continue;
			}
		}
		if (className in WEAPON_SLOTS) weapon = options[WEAPON_SLOTS[className]]
	}
	if (!weapon || !weapon.IsValid()) {
		weapon = Entities.CreateByClassname(className)
		if (weapon == null) return;
		if (!player.IsValid() || !weapon.IsValid()) return
		if (className == "tf_weapon_builder") {
			foreach(id in (player.GetPlayerClass() == 9 ? [0 1 2] : [3]))
				NetProps.SetPropBoolArray(weapon, "BuilderLocalData.m_aBuildableObjectTypes", true, id)
			NetProps.SetPropInt(weapon, "BuilderLocalData.m_iObjectType", 0)
			NetProps.SetPropInt(weapon, "BuilderLocalData.m_iObjectMode", 0)
		}
		NetProps.SetPropInt(weapon, "m_AttributeManager.m_Item.m_iItemDefinitionIndex", itemID)
		NetProps.SetPropBool(weapon, "m_AttributeManager.m_Item.m_bInitialized", true)
		NetProps.SetPropBool(weapon, "m_bValidatedAttachedEntity", true)
		weapon.SetTeam(player.GetTeam())
		# golden pan fix
		if (itemID == 1071)
			weapon.AddAttribute("item style override", 0.0, -1.0)
		weapon.DispatchSpawn()
	}

	local slot = GivePlayerWeaponBaseSlotOnSlotList && (className in WEAPON_SLOTS) ?  WEAPON_SLOTS[className] : weapon.GetSlot()
    // remove existing weapon in same slot
    for (local i = 0; i < MAX_WEAPONS; i++)
    {
        local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
        if (heldWeapon == null)
            continue
		if (heldWeapon.GetSlot() != slot)
			continue
		if (heldWeapon != weapon) # safety check for new system
			heldWeapon.Destroy()
        NetProps.SetPropEntityArray(player, "m_hMyWeapons", null, i)
        break
    }

    player.Weapon_Equip(weapon)
	if (className != "tf_weapon_builder")
    	player.Weapon_Switch(weapon)

	foreach (attribute in attributes) {
		if ("botonly" in attribute && attribute.botonly) continue
		weapon.RemoveAttribute(attribute.name)
		weapon.AddAttribute(attribute.name, attribute.value, "duration" in attribute ? attribute.duration : -1)
	}
	if (GivePlayerWeaponRecycleNew) {
		local old_weapon = scope._equipped_weapons[slot]
		if (old_weapon != weapon && old_weapon && old_weapon.IsValid()) old_weapon.Destroy()
		scope._equipped_weapons[slot] = weapon
	}
	#printl("NEW:")
	#foreach (w in scope._equipped_weapons) printl(w)

    return weapon
}

# pve specific weapon functions

# from tf2 wiki
::GetPlayerUserID <- function(player)
{
    return NetProps.GetPropIntArray(Entities.FindByClassname(null, "tf_player_manager"), "m_iUserID", player.entindex())
}
::GivePlayerCosmetic <- function(player, cosmetic, model_path = null)
{
	local weapon = Entities.CreateByClassname("tf_weapon_parachute")
	NetProps.SetPropInt(weapon, "m_AttributeManager.m_Item.m_iItemDefinitionIndex", 1101)
	NetProps.SetPropBool(weapon, "m_AttributeManager.m_Item.m_bInitialized", true)
	weapon.SetTeam(player.GetTeam())
	weapon.DispatchSpawn()
	player.Weapon_Equip(weapon)
	local wearable = NetProps.GetPropEntity(weapon, "m_hExtraWearable")
	weapon.Kill()
	if (!wearable) return;

	NetProps.SetPropInt(wearable, "m_AttributeManager.m_Item.m_iItemDefinitionIndex", typeof(cosmetic)=="table" ? cosmetic.id : cosmetic)
	NetProps.SetPropBool(wearable, "m_AttributeManager.m_Item.m_bInitialized", true)
	NetProps.SetPropBool(wearable, "m_bValidatedAttachedEntity", true)
	wearable.SetTeam(player.GetTeam())
	wearable.DispatchSpawn()

	if (typeof(cosmetic)!="integer" && "attributes" in cosmetic)
		foreach (attribute in cosmetic.attributes)
			wearable.AddAttribute(attribute.name, attribute.value, "duration" in attribute ? attribute.duration : -1)

	// (optional) Set the model to something new. (Obeys econ's ragdoll physics when ragdolling as well)
	if (model_path)
		wearable.SetModelSimple(model_path)

	// (optional) recalculates bodygroups on the player
	#SendGlobalGameEvent("post_inventory_application", { userid = GetPlayerUserID(player) })

	// (optional) if one wants to delete the item entity, collect them within the player's scope, then send Kill() to the entities within the scope.
	local player_scope = UTILGetScriptScope(player)
	if (!("wearables" in player_scope))
		player_scope.wearables <- []
	player_scope.wearables.append(wearable)

	return wearable
}
::RemoveAllItems <- function(player, force_clear = false, force_keep_cosmetics = false)
{
	local c = PVECurrentClass
	local player_scope = UTILGetScriptScope(player)
	if (GivePlayerWeaponRecycleNew && !("_equipped_weapons" in player_scope)) player_scope._equipped_weapons <- array(MAX_WEAPONS)
	if ("preset" in player_scope) c = player_scope.preset
	// If you destroy an entity it becomes invalid
	// It will not longer keep a track of the next child and .NextMovePeer method becomes unavailable so the next iteration will fail
	// To prevent this you can store a reference the next child
	for (local next, current = player.FirstMoveChild(); current != null; current = next)
	{
		NetProps.SetPropBool(current, "m_bForcePurgeFixedupStrings", true)
		// Store the next handle
		next = current.NextMovePeer()
		if (current.GetClassname() == "tf_wearable") {
			if (!force_keep_cosmetics)
				current.Kill()
		} else if (current instanceof CEconEntity) {
			# weapon was manually created, do not delete if recycling is enabled
			if (GivePlayerWeaponRecycleNew && force_keep_cosmetics && player_scope._equipped_weapons[GivePlayerWeaponBaseSlotOnSlotList && (current.GetClassname() in WEAPON_SLOTS) ? WEAPON_SLOTS[current.GetClassname()] : current.GetSlot()] == current) {
				# remove from currently equipped weapons so it does not get deleted on respawn
				for (local i = 0; i < MAX_WEAPONS; i++){
					local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
					if (heldWeapon == current) {
						NetProps.SetPropEntityArray(player, "m_hMyWeapons", null, i)
						break;
					}
				}
				continue
			}
			#print("removing")
			#printl(current)
			if (!force_clear && "keepstock" in c && c.keepstock) continue
			local className = current.GetClassname() # GetWeaponClassnameFromId(NetProps.GetPropInt(current, "m_AttributeManager.m_Item.m_iItemDefinitionIndex"))
			if ((!("removepdas" in c && c.removepdas)) && (className == "tf_weapon_builder" || className == "tf_weapon_invis" || className == "tf_weapon_pda_spy" || className == "tf_weapon_pda_engineer_build" || className == "tf_weapon_pda_engineer_destroy")) continue;
			current.Destroy()
		}
	}
	if ("wearables" in player_scope) {
		if (force_keep_cosmetics) {
			# prevent cosmetic duplication (deduplicate on death)
			# todo: figure out why this happens and how to them duplicating in the first place
			if (player_scope.wearables.len() != c.cosmetics.len()) {
				for (local i = player_scope.wearables.len()-1; i >= 0; i--) {
					if (player_scope.wearables[i] && player_scope.wearables[i].IsValid()) {
						player_scope.wearables[i].Kill()
					}
					player_scope.wearables.remove(i)
				}
			}
			for (local i = player_scope.wearables.len()-1; i >= 0; i--) {
				if (!player_scope.wearables[i].IsValid()) {
					player_scope.wearables.remove(i)
				}
			}
		} else {
			foreach (wearable in player_scope.wearables)
				if (wearable.IsValid()) wearable.Kill()
			player_scope.wearables <- []
		}
	}
	/*
	# remove from currently equipped weapons so it does not get deleted on respawn
	# this has been deprecated by a block higher in the function
	if (GivePlayerWeaponRecycleNew) for (local i = 0; i < MAX_WEAPONS; i++){
		local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
		#local className = (heldWeapon && heldWeapon.IsValid()) ? heldWeapon.GetClassname() : "[NULL]"
		#if ((!("removepdas" in c && c.removepdas)) && (className == "tf_weapon_builder" || className == "tf_weapon_invis" || className == "tf_weapon_pda_spy" || className == "tf_weapon_pda_engineer_build" || className == "tf_weapon_pda_engineer_destroy")) continue;
		if (player_scope._equipped_weapons.find(heldWeapon) != null)
			NetProps.SetPropEntityArray(player, "m_hMyWeapons", null, i)
	}
	*/
}
::GiveWeapon <- function(player, wID, upgrades = []) {
	local wCN = GetWeaponClassnameFromId(wID, player);
	GivePlayerWeapon(player, wCN, wID, upgrades);
}
::WeaponSlotGet <- function(player, slotID) {
    for (local i = 0; i < MAX_WEAPONS; i++)
    {
        local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
        if (heldWeapon == null)
            continue
        if (heldWeapon.GetSlot() != slotID)
            continue
        return heldWeapon
    }
	return null
}
::WeaponSlotAddAttribute <- function(player, slotID, attrName, attrVal) {
	local w = WeaponSlotGet(player, slotID)
	if (!w) return
	w.RemoveAttribute(attrName)
	w.AddAttribute(attrName, attrVal, -1)
}

########################
# GENERAL UTILITY CODE #
########################

function ForceChangeClass(player, classIndex) {
	player.SetPlayerClass(classIndex)
	NetProps.SetPropInt(player, "m_Shared.m_iDesiredPlayerClass", classIndex)
	player.ForceRegenerateAndRespawn()
}

function GivePlayerWeaponByID(player, wID) {
    local wCN = GetWeaponClassnameFromId(wID, player);
    if (wCN != "") GivePlayerWeapon(player, wCN, wID);
}

function ForceTaunt(player, taunt_id)
{
	local weapon = Entities.CreateByClassname("tf_weapon_bat")
	local active_weapon = player.GetActiveWeapon()
	player.StopTaunt(true) // both are needed to fully clear the taunt
	player.RemoveCond(7)
	weapon.DispatchSpawn()
	NetProps.SetPropInt(weapon, "m_AttributeManager.m_Item.m_iItemDefinitionIndex", taunt_id)
	NetProps.SetPropBool(weapon, "m_AttributeManager.m_Item.m_bInitialized", true)
	NetProps.SetPropBool(weapon, "m_bForcePurgeFixedupStrings", true)
	NetProps.SetPropEntity(player, "m_hActiveWeapon", weapon)
	NetProps.SetPropInt(player, "m_iFOV", 0) // fix sniper rifles
	player.HandleTauntCommand(0)
	NetProps.SetPropEntity(player, "m_hActiveWeapon", active_weapon)
	weapon.Kill()
}

#########################
# GENERAL CHAT COMMANDS #
#########################

# set player health
RegisterCommand("!sh", function(player, args){
    player.SetHealth(args.len()>1 ? args[1].tointeger() : 123456789)
}, "[HEALTH] - set the players health to specified number")

# force change player class
RegisterCommand("!fcc", function(player, args){
	if (args.len()>1) {
		ForceChangeClass(player, args.len() > 1 ? args[1].tointeger() : player.GetPlayerClass())
	} else {
		ClientPrint(player, 3, args[0] + " ! Missing parameter [ClassID]")
	}
}, "[ClassID] - forcefully change the player class")

# change player class
RegisterCommand("!cc", function(player, args){
	if (args.len()>1) {
		player.SetPlayerClass(args[1].tointeger())
		NetProps.SetPropInt(player, "m_Shared.m_iDesiredPlayerClass", args[1].tointeger())
	}
}, "[ClassID] - change the player class (WARNING: MAY CRASH THE CLIENT)")

function ForceGiveWeapon(player, args) {
	if (args.len() > 2) GivePlayerWeapon(player, args[2], args[1].tointeger())
	else if (args.len() > 1) GivePlayerWeaponByID(player, args[1].tointeger())
	else ClientPrint(player, 3, args[0] + " ! Missing parameter [WeaponID]")
}
# weapon equip
RegisterCommand("!fgw", ForceGiveWeapon, "[WeaponID] (classname), Forcefully equip the specified weapon")
RegisterCommand("!fcw", ForceGiveWeapon, "[WeaponID] (classname), Forcefully change the specified weapon")

# change team without respawning
RegisterCommand("!fct", function(player, args){
	if (args.len()>2) {
		player.ForceChangeTeam(args[1].tointeger(), args[2].tointeger() != 0)
	} else if (args.len()>1) {
		player.ForceChangeTeam(args[1].tointeger(), true)
	} else {
		ClientPrint(player, 3, args[0] + " ! Missing parameter [TeamID]")
	}
}, "[TeamID: 0/1/2/3/5] (ForceChange) - Forcefully change the player team")

# change team and respawn
function SetTeam(player, args) {
	if (args.len() > 1) {
		player.SetTeam(args[1].tointeger())
	} else {
		ClientPrint(player, 3, args[0] + " ! Missing parameter [TeamID]")
	}
}
RegisterCommand("!st", SetTeam, "[TeamID: 0/1/2/3/5], set the player team")
RegisterCommand("!ct", SetTeam, "[TeamID: 0/1/2/3/5], change the player team")

# set gravity
RegisterCommand("!sg", function(player, args) {
	if (args.len()>1) {
		player.SetGravity(args[1].tofloat())
	} else {
		ClientPrint(player, 3, "! missing parameter [Gravity]")
	}
}, "[Gravity: float] - sets player gravity to [Gravity]")

# set global gravity
RegisterCommand("!sgg", function(player, args) {
	if (args.len()>1) {
		SetGravityMultiplier(args[1].tofloat())
	} else {
		ClientPrint(player, 3, "! missing parameter [Gravity]")
	}
}, "[Gravity: float] - sets global gravity to [Gravity]")
# Force Taunt
RegisterCommand("!ft", function(player, args){
    ForceTaunt(player, args.len()>1 ? args[1].tointeger() : 1157)
}, "[TauntID] - force taunt")
# Force Taunt (conga)
RegisterCommand("!fc", function(player, args){
    ForceTaunt(player, args.len()>1 ? args[1].tointeger() : 1118)
}, "[TauntID] - force taunt (ALIAS)")

# Add Attribute to Weapon
RegisterCommand("!awa", function(player, args){
	if (args.len() > 2) {
		local value = args[1].tofloat()
		local param = args[2]
		for (local i = 3; i < args.len(); i++) param += " " + args[i]
		player.GetActiveWeapon().AddAttribute(param, value, -1.0)
		player.GetActiveWeapon().ReapplyProvision()
	} else {
		ClientPrint(player, 3, "! missing parameters [Value] or [AttributeName]")
	}
}, "[Value] [AttributeName] - add weapon attribute")
# Add Attribute to Weapon (more and dumber parameters)
RegisterCommand("!awaa", function(player, args){
	if (args.len()>1) {
		local pname = split(args[1], ".")
		local param = ""
		foreach (part in pname) {
			if (param != "") param += " "
			param += part
		}
		player.GetActiveWeapon().AddAttribute(param, args.len()>2 ? args[2].tofloat() : 1.0, args.len()>3 ? args[3].tofloat() : -1.0)
		player.GetActiveWeapon().ReapplyProvision()
	} else {
		ClientPrint(player, 3, "! missing parameter [AttributeName]")
	}
}, "[AttributeName] [Value] (Duration) - add weapon attribute (advanced) (AttributeName replaces `.` with ` `)")

# Remove Attribute from Weapon
RegisterCommand("!rwa", function(player, args){
	if (args.len()>1) {
		local pname = args[1]
		for(local i=2; i<args.len(); i++) pname += " " + args[i]
		player.GetActiveWeapon().RemoveAttribute(pname)
		player.GetActiveWeapon().ReapplyProvision()
	} else {
		ClientPrint(player, 3, "! missing parameter [AttributeName]")
	}
}, "[AttributeName] - remove custom player attribute")
RegisterCommand("!rwaa", function(player, args){
	if (args.len()>1) {
		local pname = split(args[1], ".")
		local param = ""
		foreach (part in pname) {
			if (param != "") param += " "
			param += part
		}
		player.GetActiveWeapon().RemoveAttribute(param)
		player.GetActiveWeapon().ReapplyProvision()
	} else {
		ClientPrint(player, 3, "! missing parameter [AttributeName]")
	}
}, "[AttributeName] - remove weapon attribute (AttributeName replaces `.` with ` `)")

# Add Attribute to Player
RegisterCommand("!aca", function(player, args){
	if (args.len() > 2) {
		local value = args[1].tofloat()
		local param = args[2]
		for (local i = 3; i < args.len(); i++) param += args[i]
		player.AddCustomAttribute(param, value, -1.0)
		#ClientPrint(player, 3, format("%f %s", value, param))
	} else {
		ClientPrint(player, 3, "! missing parameters [Value] or [AttributeName]")
	}
}, "[Value] [AttributeName] - add weapon attribute")
# Add Attribute to Player (more and dumber parameters)
RegisterCommand("!acaa", function(player, args){
	if (args.len()>1) {
		local pname = split(args[1], ".")
		local param = ""
		foreach (part in pname) {
			if (param != "") param += " "
			param += part
		}
		player.AddCustomAttribute(param, args.len()>2 ? args[2].tofloat() : 1.0, args.len()>3 ? args[3].tofloat() : -1.0)
	} else {
		ClientPrint(player, 3, "! missing parameter [AttributeName]")
	}
}, "[AttributeName] [Value] (Duration) - add custom player attribute (AttributeName replaces `.` with ` `)")

# Remove Attribute from Player
RegisterCommand("!rca", function(player, args){
	if (args.len()>1) {
		local pname = args[1]
		for(local i=2; i<args.len(); i++) pname += args[i]
		player.RemoveCustomAttribute(pname)
	} else {
		ClientPrint(player, 3, "! missing parameter [AttributeName]")
	}
}, "[AttributeName] - remove custom player attribute")
RegisterCommand("!rcaa", function(player, args){
	if (args.len()>1) {
		local pname = split(args[1], ".")
		local param = ""
		foreach (part in pname) {
			if (param != "") param += " "
			param += part
		}
		player.RemoveCustomAttribute(param)
	} else {
		ClientPrint(player, 3, "! missing parameter [AttributeName]")
	}
}, "[AttributeName] - remove custom player attribute (AttributeName replaces `.` with ` `)")

# List Users
RegisterCommand("!lu", function(player, args) {
	local MaxPlayers = MaxClients().tointeger()

	for (local i = 1; i <= MaxPlayers ; i++)
	{
		local instance = PlayerInstanceFromIndex(i)
		if (instance == null) continue
		ClientPrint(player, 3, "> " + i + " : " + NetProps.GetPropString(instance, "m_szNetname") + " " + NetProps.GetPropString(instance, "m_szNetworkIDString"))
	}
}, "- list users")

# Execute command as user
RegisterCommand("!exe", function(player, args) {
	if (args.len()>3) {
		local p = PlayerInstanceFromIndex(args[1].tointeger())
		local cmd = args[2]
		local params = []
		for (local i = 2; i < args.len(); i++) {
			params.push(args[i])
		}
		ProcessCommand(p, cmd, params)
	}

}, "[UserID] [CMD] (args) - execute command as user (use !lu to find)")

# show text in chat
RegisterCommand("!echo", function(player, args) {
	local out = " "
	foreach (arg in args) {
		if (out == " ") out = ""
		else out += arg + " "
	}
ClientPrint(player, 3, out)
}, "[Text] - display text in chat")
# show text on Screen
RegisterCommand("!echoS", function(player, args) {
	local out = " "
	foreach (arg in args) {
		if (out == " ") out = ""
		else out += arg + " "
	}
	ClientPrint(player, 4, out)
}, "[Text] - display text on screen")

# 1152 - grappling hook

# Add condition
RegisterCommand("!addc", function(player, args) {
	if (args.len()>1) {
		player.AddCondEx(args[1].tointeger(), args.len()>2 ? args[2].tofloat() : 10.0, null)
	} else {
		ClientPrint(player, 3, "! missing parameter [Condition]")
	}
}, "[Condition] (Duration:[float]=10)")

# Remove condition
RegisterCommand("!remc", function(player, args){
	if (args.len()>1) {
		player.RemoveCondEx(args[1].tointeger(),  true)
	} else {
		ClientPrint(player, 3, "! missing parameter [Condition]")
	}
}, "[Condition] - remove custom condition")

# set a custom player model
RegisterCommand("!scm", function(player, args) {
	if (args.len()>1) {
		local argparts = split(args[1], ",")
		local model_name = ""
		foreach (part in argparts) {
			if (model_name != "") model_name += " "
			model_name += part
		}
		player.SetCustomModelWithClassAnimations(model_name)
	} else {
		ClientPrint(player, 3, "! missing parameter [ModelPath]")
	}
}, "[ModelPath] - sets a custom player model (replaces , with space)")

# damage player
RegisterCommand("!dmg", function(player, args) {
	if (args.len()>1) {
		# player.BleedPlayerEx(0.1, args[1].tointeger(), false, 0)
		player.TakeDamage(args[1].tofloat(), 1, player)
	} else {
		ClientPrint(player, 3, "! missing parameter [Damage]")
	}
}, "[Damage] - damages the player")

RegisterCommand("!nc", function(player, args) {
	if (player.GetMoveType() == Constants.EMoveType.MOVETYPE_NOCLIP) {
		player.SetMoveType(Constants.EMoveType.MOVETYPE_WALK, Constants.EMoveCollide.MOVECOLLIDE_DEFAULT)
		ClientPrint(player, 3, "noclip disabled")
	} else {
		player.SetMoveType(Constants.EMoveType.MOVETYPE_NOCLIP, Constants.EMoveCollide.MOVECOLLIDE_DEFAULT)
		ClientPrint(player, 3, "noclip enabled")
	}
}, " - toggle noclip")

# all values outside 0<=team<=3 crash the server after ca. 0.1 second
RegisterCommand("!bst", function(player, args) {
	if (args.len()>1) {
		if (args.len()>2 && args[2]=="IKNOWTHISISUNSAFE") {
			NetProps.SetPropInt(player, "m_iTeamNum", args[1].tointeger())
			return
		}
		switch (args[1]) {
			case "0": NetProps.SetPropInt(player, "m_iTeamNum", 0); break;
			case "1": NetProps.SetPropInt(player, "m_iTeamNum", 1); break;
			case "2": NetProps.SetPropInt(player, "m_iTeamNum", 2); break;
			case "3": NetProps.SetPropInt(player, "m_iTeamNum", 3); break;
			default:
				ClientPrint(player, 3, args[0] + " ! [TeamID] must be (0/1/2/3)")
				ClientPrint(player, 3, "Sufffix this call with IKNOWTHISISUNSAFE to change to unsupported team numbers")
				ClientPrint(player, 3, "This may crash the server")
		}
	} else {
		ClientPrint(player, 3, args[0] + " ! Missing parameter [TeamID]")
	}
}, " [0/1/2/3] (IKNOWTHISISUNSAFE) - change team (in a very bad way)")
RegisterCommand("!bsc", function(player, args) {
	if (args.len()>1) {
		if (args.len()>2 && args[2]=="IKNOWTHISISUNSAFE") {
			NetProps.SetPropInt(player, "m_PlayerClass.m_iClass", args[1].tointeger())
			#NetProps.SetPropInt(player, "m_Shared.m_iDesiredPlayerClass", args[1].tointeger())
			#player.ForceRegenerateAndRespawn()
			return
		}
		local c = -1
		switch (args[1]) {
			case "0": c = 0; break;
			case "1": c = 1; break;
			case "2": c = 2; break;
			case "3": c = 3; break;
			case "4": c = 4; break;
			case "5": c = 5; break;
			case "6": c = 6; break;
			case "7": c = 7; break;
			case "8": c = 8; break;
			case "9": c = 9; break;
			case "10": c = 10; ForceChangeClass(player, 0); break;
		}
		if (c != -1) {
			NetProps.SetPropInt(player, "m_PlayerClass.m_iClass", c)
			NetProps.SetPropInt(player, "m_Shared.m_iDesiredPlayerClass", c)
		}
	}
}, " [0..10] (IKNOWTHISISUNSAFE) - change class (in a very bad way)")

##################
# CLEANUP SYSTEM #
##################
# set to true if gameplay relevant props are deleted during cleanup
# this currently is only required on some maps
::CleanupRespectCollision <- false
# set to true if only visual issues appear (some walls, etc. disappear)
::CleanupDoNotCleanDetails <- false

// hacky test fixes for vip mode
# disable cleanup entirely
::CleanupForceDisable <- false
# do not clean a bigger set of entities
::CleanupForceMinimal <- false
# only remove props once
::CleanupPropsOnlyOnce <- false

::ENTITY_TYPES <- [
	"move_rope"
	"keyframe_rope"
	"info_particle_system"
	"infodecal"
	"env_sprite"
	"ambient_generic"
	"light"
	"light_spot"
	"light_dynamic"
	"info_overlay"
	"env_microphone"
	"prop_ragdoll"
	"point_commentary_node"
	"point_message"
	"point_spotlight"
	"env_beam"
	"env_blood"
	"env_bubbles"
	"env_dustpuff"
	"env_effectscript"
	"env_explosion"
	"env_fade"
	"env_fire"
	"env_flare"
	"env_gunfire"
	"env_lightglow"
	"env_muzzleflash"
	"env_particlelight"
	"env_particlescript"
	"env_physexplosion"
	"env_physimpact"
	"env_shake"
	"env_smokestack"
	"env_smoketrail"
	"env_spark"
	"env_speaker"
	"env_splash"
	"env_sprite"
	"env_starfield"
	"env_steam"
	"env_projectedtexture"
	"light_environment"
	"point_spotlight"
	"infodecal"
	"info_projecteddecal"
	"beam"
]
RegisterEvent("Setup", function(params){
	if (NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") != 7) {
		ENTITY_TYPES.push("env_spritetrail")
	}
})
if (!CleanupForceMinimal) ENTITY_TYPES.extend([
	"func_breakable"
	"func_breakable_surf"
	"func_dust"
	"func_dustcloud"
	"func_dustmotes"
	"func_monitor"
	"func_physbox"
	"func_physbox_multiplayer"
	"func_proprrespawnzone"
	"func_precipitation"
	"func_smokevolume"
	"func_vehicleclip"
	"func_reflective_glass"
	"func_nobuild"
	"func_nogrenades"
	"env_sun"
	"halloween_souls_pack"
	"trigger_particle"
	"entity_spawn_manager"
	"entity_spawn_point"
	"tf_pumpkin_bomb"
	"tf_generic_bomb"
	"halloween_zapper"
])
# delete if a specified netprop is not a desired value
::PVE_AMMOBOX_MODEL_INDEX <- PrecacheModel("models/items/ammopack_medium.mdl")
::ENTITIES_NETPROPNEQ <- [
	# [ "classname" , "netprop", "value"]
	["tf_dropped_weapon", "m_Item.m_iTeamNumber", function() { return PVEHumanTeam } ],
	["tf_ammo_pack", "m_nModelIndex", function() { return PVE_AMMOBOX_MODEL_INDEX } ], // todo: make this not be a function
]
RegisterEvent("Setup", function(params){
	if (!CleanupDoNotCleanDetails) ENTITY_TYPES.extend(CleanupForceMinimal ? [] : [
		"func_illusionary"
		"func_detail"
		"func_lod"
		"prop_detail"
	])
})
::ENTITIES_NONAME <- CleanupForceMinimal ? [] : [
	"prop_physics",
	"prop_physics_multiplayer",
	"prop_physics_override",
	"prop_dynamic",
	"prop_dynamic_multiplayer",
	"prop_dynamic_override",
]
# maybe look at panic mode somewhere in the future?
::ENTITIES_AGGRESSIVE <- [
	"prop_physics",
	"prop_physics_multiplayer",
	"prop_physics_override",
	"prop_dynamic",
	"prop_dynamic_multiplayer",
	"prop_dynamic_override",
	"env_soundscape"
	"env_soundscape_proxy"
	"instanced_scripted_scene"
	"bot_hint_sentrygun",
	"bot_hint_teleporter_exit",
	"bot_hint_engineer_nest",
	"func_tfbot_hint"
	"func_occluder"
	"spotlight_end"
	"tf_ragdoll"
	"tf_ammo_pack"
	"env_soundscape_triggerable",
	"func_door"
	"func_door_rotating"
	"prop_door_rotating"
	"vgui_screen" # dispenser screens are not as important as the server not crashing
]
::ENTKILL_FINISHED_ONCE <- false
::ENTKILL_RAGDOLLCOUNT <- 0
::PVEReduceSpawnpointsBotOnly <- false
::KillEnts <- function() {
	# limit per step as killents runs perpetually now
	#local i = 0
	#local killLimit = 64
	foreach (t in ENTITY_TYPES) {
		for (local entity; entity = Entities.FindByClassname(entity, t);) {
			#if (i > killLimit) return;
			entity.Kill()
			#i++
		}
	}
	if (PVEAggressiveCleanup)
		foreach (t in ENTITIES_AGGRESSIVE) {
			#if (i > killLimit) return;
			for (local entity; entity = Entities.FindByClassname(entity, t);) {
				# keep payload cart
				if (entity.GetName().find("cart")==null && entity.GetName().find("pay")==null) {
					entity.Kill()
					#i++
				}
			}
		}
	# remove RED ragdolls (or all if there are too many)
	if (ENTKILL_RAGDOLLCOUNT != -1) {
		local ragdollcount = 0
		for (local entity; entity = Entities.FindByClassname(entity, "tf_ragdoll");) {
			ragdollcount++
			local e = NetProps.GetPropEntity(entity, "m_hPlayer")
			if ( !e || e.IsFakeClient() || ENTKILL_RAGDOLLCOUNT > 8) {
				entity.Kill()
				ragdollcount-- # ragdoll has been killed, do not count to clean up count
			}
		}
		::ENTKILL_RAGDOLLCOUNT <- ragdollcount
	}

	#if (i == 0)
		foreach (t in ENTITIES_NETPROPNEQ) {
			for (local entity; entity = Entities.FindByClassname(entity, t[0]);) {
				#if (i > killLimit) return;
				if (NetProps.GetPropInt(entity, t[1]) == t[2]()) continue
				entity.Kill()
				#i++
			}
		}
	# cleanup dynamic / physics objects which are not doors and unnamed
	if (!CleanupPropsOnlyOnce /*&& i==0*/)
		foreach (t in ENTITIES_NONAME) {
			for (local entity; entity = Entities.FindByClassname(entity, t);) {
				#if (i > killLimit) return;
				if (CleanupRespectCollision) {
					# keeps all gameplay relevant props (maybe too many)
					# skips all props which are solid (flag 4 is not FSOLID_NOT_SOLID)
					if (entity.IsSolid() || entity.GetSolid()!=0 || !entity.IsSolidFlagSet(4)) continue
				} else {
					# may delete something important but this is edict friendlier and reliable enough on almost every map
					if (entity.GetName() != "") continue;
					if (entity.GetModelName().tolower().find("door", 0) != null) continue;
					# do not kill the horseless headless horsemans axe
					# todo: this way of checking is dumb (on almost all maps this is false)
					if (entity.GetModelName().find("c_big_mallet", 0) != null || entity.GetModelName().find("c_bigaxe", 0) != null) continue;
				}
				entity.Kill()
				#i++
			}
		}
	# single time cleanup
	if (!ENTKILL_FINISHED_ONCE) {
		if (CleanupPropsOnlyOnce) {
			foreach (t in ENTITIES_NONAME) {
				for (local entity; entity = Entities.FindByClassname(entity, t);) {
					#if (i > killLimit) return;
					if (CleanupRespectCollision) {
						# keeps all gameplay relevant props (maybe too many)
						# skips all props which are solid (flag 4 is not FSOLID_NOT_SOLID)
						if (entity.IsSolid() || entity.GetSolid()!=0 || !entity.IsSolidFlagSet(4)) continue
					} else {
						# may delete something important but this is edict friendlier and reliable enough on almost every map
						if (entity.GetName() != "") continue;
						if (entity.GetModelName().tolower().find("door", 0) != null) continue;
						# do not kill the horseless headless horsemans axe
						# todo: this way of checking is dumb (on almost all maps this is false)
						if (entity.GetModelName().find("c_big_mallet", 0) != null || entity.GetModelName().find("c_bigaxe", 0) != null) continue;
					}
					entity.Kill()
					#i++
				}
			}
		}
		if (PVEReduceSpawnpoints) {
			local knownrooms = []
			local points = []
			for (local entity; entity = Entities.FindByClassname(entity, "info_player_teamspawn");) {
				if (points.find(entity) == null) {
					points.push(entity)
					#print("Adding point")
				} /* else {
					#print("Double point")
				} */
				#print(" red: ")
				#print(NetProps.GetPropString(entity, "m_iszRoundRedSpawn"))
				#print(" blu: ")
				#print(NetProps.GetPropString(entity, "m_iszRoundBlueSpawn"))
				#print(" ent: ")
				#printl(entity)
			}
			foreach (entity in points){
				local red = NetProps.GetPropString(entity, "m_iszRoundRedSpawn")
				local blu = NetProps.GetPropString(entity, "m_iszRoundBlueSpawn")
				local r = null
				for (local t; t = Entities.FindInSphere(t, entity.GetCenter(), 1.0);) {
					if (t.GetClassname() == "func_respawnroom") r = t
				}
				if (!r) {
					#printl("NO ASSOCIATED RESPAWNROOM FOUND")
					continue
				}
				foreach (room in knownrooms) {
					if (r==room[0] && red == room[1] && blu == room[2]) {
						#print(" -> found existing room: ")
						#print(r)
						#printf(" - r: %s - b: %s\n", red, blu)
						if (entity.GetTeam() == PVEBotTeam || !PVEReduceSpawnpointsBotOnly)
							entity.Kill()
						entity = null
						break
					}
				}
				if (entity) {
					#print(" -> adding unknown room: ")
					#print(r)
					#printf(" - r: %s - b: %s\n", red, blu)
					knownrooms.push([r, red, blu])
				}
			}
		}

		if (PVEDebugPrint)
			printl("CleanedUp")
		::ENTKILL_FINISHED_ONCE <- true
	}
}
RegisterEvent("Setup", function(params) {
	if (CleanupForceDisable) return
	RegisterEvent("Update", function(params) {
		if (!PVERunning) return
		KillEnts()
	})
})
RegisterEvent("teamplay_round_start", function(params) {
	# once the round restarts, most entities are reset -> new cleanup required
	::ENTKILL_FINISHED_ONCE <- false
})
/*
RegisterEvent("teamplay_round_start", function(params) {
	if (PVEDisabled) return
	local player
	local MaxPlayers = MaxClients().tointeger()
	for (local i = 1; i <= MaxPlayers; i++)
	{
		player = PlayerInstanceFromIndex(i)
		if (player && !player.IsFakeClient())
			MoveTeam(player)
	}
})
*/

########
# TEST #
########
if (!("PVEMedievalEnabledByDefault" in getroottable())) # keep medieval check result between reloads
	::PVEMedievalEnabledByDefault <- IsInMedievalMode() # actually check for medieval
::PVEToggleMedieval <- function(enable = null, regenerate = true) {
	local rules = Entities.FindByClassname(null, "tf_gamerules")
	local current = NetProps.GetPropBool(rules, "m_bPlayingMedieval")
	if (enable == null) enable = !current
	if (PVEMedievalEnabledByDefault == null) ::PVEMedievalEnabledByDefault <- current
	NetProps.SetPropBool(rules, "m_bPlayingMedieval", enable)
	Convars.SetValue("tf_medieval", enable)
	if (current != enable && regenerate) ForeachHuman(function(p){
		//ClientPrint(p, 4, "Medieval mode has been " + (enable ? "enabled" : "disabled"))
		p.Regenerate(true)
	})
}
::PVERevertMedieval <- function() {
	local rules = Entities.FindByClassname(null, "tf_gamerules")
	local current = NetProps.GetPropBool(rules, "m_bPlayingMedieval")
	if (PVEMedievalEnabledByDefault == null) ::PVEMedievalEnabledByDefault <- NetProps.GetPropBool(rules, "m_bPlayingMedieval")
	NetProps.SetPropBool(rules, "m_bPlayingMedieval", PVEMedievalEnabledByDefault)
	Convars.SetValue("tf_medieval", PVEMedievalEnabledByDefault)
	if (current != PVEMedievalEnabledByDefault) ForeachHuman(function(p){
		//ClientPrint(p, 4, "Medieval mode has reverted to be " + (PVEMedievalEnabledByDefault ? "enabled" : "disabled"))
		p.Regenerate(true)
	})
}
RegisterCommand("!mm", function(player, args) {
	if (args.len() > 1) PVEToggleMedieval(StringIsTruthy(args[1]))
	else PVEToggleMedieval()
}, "toggle medieval mode")

#############
# PVE SETUP #
#############
# store max rounds to check for changes
::PVEMaxRounds <- -1
RegisterEvent("Setup", function(params){
	::PVEMaxRounds <- Convars.GetInt("mp_maxrounds")
})

::PVEDebugDamage <- false
RegisterCommand("!dbgdmg", function(player, args){
	::PVEDebugDamage <- !PVEDebugDamage
	ClientPrint(player, 3, "changing damage debug state to: " + (PVEDebugDamage ? "ENABLED" : "DISABLED"))
}, "toggle damage debug")
RegisterEvent("player_hurt", function(params){
	if (PVEDebugDamage) {
		local p = GetPlayerFromUserID(params.userid)
		local a = GetPlayerFromUserID(params.attacker)
		local d = params.damageamount
		local h = params.health
		local r = params.priority
		local b = "bonuseffect" in params ? params.bonuseffect : 4
		if (p && !p.IsFakeClient()) {
			ClientPrint(p, 3, format("%s: %d -> %d (%d) [%d] %s", params.attacker != 0 ? NetProps.GetPropString(a, "m_szNetname") : "[WORLD]", d, h, r, b, b == 0 ? "[CRIT]" : (b == 1 ? "[MINICRIT]" : "")))
		}
	}
})

# todo: use this toggle in the correct spot
::PVEModifyHalloweenBossVariables <- true
RegisterEvent("teamplay_round_start", function(params) {
	if (PVEDisabled || !PVEModifyHalloweenBossVariables) return
	RunDelayed(function(){Convars.SetValue("tf_halloween_bot_min_player_count", 1)})
	RunDelayed(function(){Convars.SetValue("tf_merasmus_min_player_count", 1)})
	RunDelayed(function(){Convars.SetValue("tf_merasmus_health_per_player", Convars.GetInt("tf_merasmus_health_per_player") / 10 / 5)})
	RunDelayed(function(){Convars.SetValue("tf_halloween_bot_health_per_player", Convars.GetInt("tf_halloween_bot_health_per_player") / 10 / 2)})
	RunDelayed(function(){Convars.SetValue("tf_halloween_bot_min_player_count", 1)})
	RunDelayed(function(){Convars.SetValue("tf_merasmus_min_player_count", 1)})
	RunDelayed(function(){Convars.SetValue("tf_merasmus_health_per_player", Convars.GetInt("tf_merasmus_health_per_player") / 10 / 5)})
	RunDelayed(function(){Convars.SetValue("tf_halloween_bot_health_per_player", Convars.GetInt("tf_halloween_bot_health_per_player") / 10 / 2)})
})

::RevertableCvars <- []
::PVESetCVar <- function(name, value) {
	RevertableCvars.push( { name=name value=Convars.GetStr(name) } )
	Convars.SetValue(name, value)
}
::PVERevertCVars <- function() {
	while (RevertableCvars.len()>0) {
		local cvar = RevertableCvars.pop()
		Convars.SetValue(cvar.name, cvar.value)
	}
}

# initialize some convars for PVE
::PVEInitCVars <- function() {
	if (PVEMaxRounds==-1) ::PVEMaxRounds <- Convars.GetInt("mp_maxrounds")
	# general config
	Convars.SetValue("tf_bot_taunt_victim_chance", 100)
	Convars.SetValue("tf_avoidteammates_pushaway", 0)
	Convars.SetValue("mp_autoteambalance", 0)
	Convars.SetValue("mp_teams_unbalance_limit", 0)
	Convars.SetValue("mp_forceautoteam", 1)
	Convars.SetValue("tf_bot_reevaluate_class_in_spawnroom", 0)
	Convars.SetValue("tf_bot_keep_class_after_death", 1)
	Convars.SetValue("tf_bot_spawn_use_preset_roster", 0)
	Convars.SetValue("mp_disable_respawn_times", 1)
	Convars.SetValue("sv_alltalk", 1)
	Convars.SetValue("mp_scrambleteams_auto", 0) # disable team scramble messing everything up
	Convars.SetValue("tf_powerup_mode_dominant_multiplier", 999999) # I'd be impressed if they hit that threshhold
	Convars.SetValue("tf_powerup_mode_imbalance_consecutive_min_players", 102) # Disable team swapping in mannpower
	if (Convars.GetInt("tf_powerup_mode")) Convars.SetValue("tf_flag_caps_per_round", 3) # hack (dont drag out mannpower maps)
	Convars.SetValue("tf_bot_offense_must_push_time", 0) # fix broken deathmatch behavior for normal bots

	if (PVEDisableRandomness) {
		Convars.SetValue("tf_weapon_criticals", 0)
		Convars.SetValue("tf_use_fixed_weaponspreads", 1)
	}

	# preset specific
	Convars.SetValue("tf_bot_difficulty", PVECurrentClass.difficulty)
	Convars.SetValue("tf_bot_force_class", PVECurrentClass.classname)

	if (PVECancelPlayerWait) {
		RunDelayedWait(30)
		RunDelayed(function() { Convars.SetValue("mp_waitingforplayers_cancel", 1) })
	}
	if (PVEForceMedieval != null) {
		PVEToggleMedieval(PVEForceMedieval)
	} else if (PVEAllowPresetToForceMedieval && ("medieval" in PVECurrentClass && PVECurrentClass.medieval != null)) {
		PVEToggleMedieval(PVECurrentClass.medieval)
	} else {
		PVERevertMedieval()
	}
}

########################
# PLAYER/BOT UTILITIES #
########################
::ClassIDToClassName <- function(id) {
	switch (id) {
		case 0: return "undefined"
		case 1: return "scout"
		case 2: return "sniper"
		case 3: return "soldier"
		case 4: return "demoman"
		case 5: return "medic"
		case 6: return "heavyweapons"
		case 7: return "pyro"
		case 8: return "spy"
		case 9: return "engineer"
		case 10: return "civilian"
		case 11: return ""
		case 12: return "random"
		default: return id.tostring()
	}
}
::ClassNameToClassID <- function(name) {
	switch (name.tolower()) {
		case "undefined": return 0
		case "scout": return 1
		case "sniper": return 2
		case "soldier": return 3
		case "demo":
		case "demoman": return 4
		case "medic": return 5
		case "heavy":
		case "heavyweapons": return 6
		case "pyro": return 7
		case "spy": return 8
		case "engi":
		case "engineer": return 9
		case "Civilian": return 10
		# case "": return 11
		case "Random": return 12
		default: return name
	}
}
::TeamIDToTeamName <- function(id) {
	switch (id) {
		case -2: return "any"
		case -1: return "invalid"
		case 0: return "undefined"
		case 1: return "spectator"
		case 2: return "red"
		case 3: return "blue"
		case 4: return "team_count" # these should not appear / be used
		case 5: return "autoassign" # these should not appear / be used
		default: return id.tostring()
	}
}
::TeamNameToTeamID <- function(name) {
	switch (name.tolower()) {
		case "any": return -2
		case "invalid": return -1
		case "undefined": return 0
		case "spectator": return 1
		case "red": return 2
		case "blue": return 3
		case "team_count": return 4 # these should not appear / be used
		case "autoassign": return 5 # these should not appear / be used
		default: return name.tostring()
	}
}
::GetPreferrablyABotButOtherwiseAnyPlayerByHandle <- function(prioritize_realplayers = false) {
	local player
	for (local i = 1; i <= MaxPlayers; i++)
	{
		local p = PlayerInstanceFromIndex(i)
		if (!p) continue
		if (!player) player = p
		if ((p.IsFakeClient() && !prioritize_realplayers) || (!p.IsFakeClient() && prioritize_realplayers)) {
			return p
		}
	}
	return player
}
::MoveTeam <- function(player) {
	if (PVEDisabled || ("PVEMoveTeamDisabled" in this && PVEMoveTeamDisabled)) return
	if (player.IsFakeClient()) {
		if (player.GetTeam() != PVEBotTeam) {
			player.ForceChangeTeam(PVEBotTeam, false)
			player.ForceRegenerateAndRespawn()
			#RunDelayedForPlayer(player, function(){
			#	player.SetTeam(PVEBotTeam)
			#})
		}
	} else {
        #local id = NetProps.GetPropString(player, "m_szNetworkIDString")
		#foreach (validid in SteamIDWhitelist) {
		#	# if ( id == validid ) return # allow admins in red
		#}
		if (player.GetTeam() == PVEBotTeam) {
			player.ForceChangeTeam(PVEHumanTeam, false)
			player.ForceRegenerateAndRespawn()
			#player.ForceChangeTeam(1, false)
			#RunDelayedForPlayer(player, function(){
			#	player.SetTeam(PVEHumanTeam)
			#})
		}
	}
}
::MoveTeamAll <- function() {
	ForeachPlayer(MoveTeam)
}

::GetBotCount <- function() {
	local count = 0
	for (local i = 1; i <= MaxPlayers; i++)
	{
		local player = PlayerInstanceFromIndex(i)
		if (player && player.IsFakeClient()) count++
	}
	return count
}
::GetHumanCount <- function() {
	local count = 0
	for (local i = 1; i <= MaxPlayers; i++)
	{
		local player = PlayerInstanceFromIndex(i)
		if (player && !player.IsFakeClient()) count++
	}
	return count
}
::GetKillstreakAttributes <- function() {
	return [
		["killstreak tier", 3],
		["killstreak effect", RandomInt(2002, 2008)], // 2003
		["killstreak idleeffect", RandomInt(1, 7)], // 2
	]
}
# add killstreak effect to all currently equipped weapons
RegisterCommand("!aks", function(player, args){
	for (local slot = 0; slot < 8; slot++) {
		foreach(attribute in GetKillstreakAttributes())
			WeaponSlotAddAttribute(player, slot, attribute[0], attribute[1])
	}
}, "- add killstreak effect to all current weapons")

# checks elements in an array for a weight property and selects randomly based
# on weights
::SelectWeighted <- function(array) {
	if (typeof(array) != "array") return array
	local maxweight = 0
	foreach (item in array) {
		maxweight += (typeof(item)=="table" && "weight" in item ? item.weight : 1)
	}
	# do not raise exceptions on empty arrays
	if (maxweight == 0)
		return null
	local selection = RandomFloat(0, maxweight)
	local currweight = 0
	foreach (item in array) {
		currweight += (typeof(item)=="table" && "weight" in item ? item.weight : 1)
		if (selection <= currweight) {
			#print("W: ")
			#print(currweight)
			#print(", S: ")
			#print(selection)
			#print(", M:")
			#printl(maxweight)
			return item
		}
	}
}

::ApplyNetprop <- function(entity, prop) {
	if ("index" in prop) {
		switch (typeof(prop.value)) {
			case "bool":
				NetProps.SetPropBoolArray(entity, prop.name, prop.value, prop.index)
				break
			case "integer":
				NetProps.SetPropIntArray(entity, prop.name, prop.value, prop.index)
				break
			case "float":
				NetProps.SetPropFloatArray(entity, prop.name, prop.value, prop.index)
				break
			case "string":
				NetProps.SetPropStringArray(entity, prop.name, prop.value, prop.index)
				break
			default:
				printl("CAN NOT SET VALUE " + prop.name + " OF TYPE " + typeof(prop.value))
		}
	} else {
		switch (typeof(prop.value)) {
			case "bool":
				NetProps.SetPropBool(entity, prop.name, prop.value)
				break
			case "integer":
				NetProps.SetPropInt(entity, prop.name, prop.value)
				break
			case "float":
				NetProps.SetPropFloat(entity, prop.name, prop.value)
				break
			case "string":
				NetProps.SetPropString(entity, prop.name, prop.value)
				break
			default:
				printl("CAN NOT SET VALUE " + prop.name + " OF TYPE " + typeof(prop.value))
		}
	}
}

::PVEPresetDistribution <- []
::PVEInitializeBotSetup <- function() {
	::PVEPresetDistribution.clear()
	if ("metapreset" in PVECurrentClass && PVECurrentClass.metapreset && PVECurrentClass.metapreset.len() != 0) {
		local meta = PVECurrentClass.metapreset
		foreach(part in meta) if ("ratio" in part) part.count <- (PVEBotCount * part.ratio).tointeger()
		foreach(part in meta) if (!("count" in part)) part.count <- PVEBotCount
		for (local i = 0; i < PVEBotCount; i++) {
			local count = 0
			foreach(part in meta) {
				count += part.count
				if (i < count) {
					PVEPresetDistribution.push(part.chances)
					break
				}
			}
		}
	}
	if ("convars" in PVECurrentClass)
		foreach (cvar in PVECurrentClass.convars)
			PVESetCVar(cvar.name, cvar.value)
	ForeachBot(function(b) {
		RunDelayed(function(){
			PVEApplyPresetBasedOnBotID(b)
		})
	})
}

RegisterEvent("player_connect", function(params) {
	if (!PVERunning || params.bot == 0) return
		RunNextStep(function(){
		local player = GetPlayerFromUserID(params.userid)
		if (!player || !player.IsValid() || !player.IsFakeClient()) return
		local scope = UTILGetScriptScope(player)
		local botid = GetBotCount() - 1
		scope.botid <- botid
		PVEApplyPresetBasedOnBotID(player)
	})
})

::PVEApplyPresetBasedOnBotID <- function(player) {
	if (!player || !player.IsValid() || !player.IsFakeClient()) return
	local scope = UTILGetScriptScope(player)
	local botid = scope.botid
	local c = PVECurrentClass
	if (PVEPresetDistribution.len() > botid) {
		local n = SelectWeighted(PVEPresetDistribution[botid])
		if (typeof(n) == "table") n = n.name
		c = PVEClassOptions[n]
	}
	if (PVEAllowSpecialClassBot && player == GetPreferrablyABotButOtherwiseAnyPlayerByHandle() &&
		("specialbot" in PVECurrentClass && PVECurrentClass.specialbot && PVECurrentClass.specialbot != ""))
		c = PVEClassOptions[PVECurrentClass.specialbot]

	scope.preset <- c

	if ("namechoices" in c && c.namechoices.len() != 0) {
		NetProps.SetPropString(player, "m_szNetname", "") # prevent message about name change in chat
		SetFakeClientConVarValue(player, "name", c.namechoices[RandomInt(0, c.namechoices.len() - 1)])
	}
	if ("bloodtype" in c) {
		NetProps.SetPropInt(player, "m_bloodColor", c.bloodtype)
	}
	local temp = player.GetPlayerClass() # ignore for sniper, spy and engi
	if ("mission" in c && c.mission != -1) {
		UTILBotSetMissionSafe(player, c.mission, true)
	} else if (FixMePVEForceMissionType && temp != 2 && temp != 8 && temp != 9)
		UTILBotSetMissionSafe(player, FixMePVEForceMissionType, true)
	if ("weapon_restriction" in c) {
		player.AddWeaponRestriction(c.weapon_restriction)
	}
	if ("behavior" in c) {
		player.SetBehaviorFlag(c.behavior)
	}
	if ("bot_attributes" in c) {
		player.AddBotAttribute(c.bot_attributes)
	} /* else if (PVEBotTeam == TEAM_DEFEND) {
		player.AddBotAttribute(Constants.FTFBotAttributeType.PRIORITIZE_DEFENSE)
	} */
	if ("fakecvars" in c) {
		foreach (var in c.fakecvars)
			SetFakeClientConVarValue(player, var.name, var.value)
	}
	if ("netprops" in c) {
		foreach (prop in c.netprops) {
			ApplyNetprop(player, prop)
		}
	}

	RunDelayedForPlayer(player, function(){
		RemoveAllItems(player, true)
		player.RemoveAllObjects(false)
	})
	RunDelayedForPlayer(player, function(){ ForceChangeClass(player, ClassNameToClassID(c.classname)) })
}

::EquipBot <- function(player, delayed = true) {
	# TEMP CRASH FIX (Only equip Bots if a round is running, not while waiting for players, spawning, etc.)
	if (IsInWaitingForPlayers() || GetRoundState() != 4) return
	player.SetNextRegenTime(Time() + 20) # dont allow usage of resupply lockers after respawning (prevent reequip loops)
	local c = PVECurrentClass
	local scope = UTILGetScriptScope(player)
	if (!("PVE_DEATH_COUNT" in scope)) scope.PVE_DEATH_COUNT <- 0
	local deaths = scope.PVE_DEATH_COUNT
	if ("preset" in scope) c = scope.preset;
	local run_now_or_delayed = function(f) {
		if (PVEAllowDelayedEquip && delayed) {
			if (PVEExtremeEquipDelay) {
				RunDelayed(f)
			} else {
				RunDelayedForPlayer(player, f)
			}
		} else {
			f()
		}
	}
	if (PVEDisabled) return;
	if (!GivePlayerWeaponRecycle)
		RemoveAllItems(player, false, true)
	local temp = function(){
		if (!player || !player.IsValid()) return;
		local run_now_or_delayed = function(f) {
			if (PVEAllowDelayedEquip && delayed) {
				RunDelayedForPlayer(player, f)
			} else {
				f()
			}
		}
		#run_now_or_delayed(function(){
			foreach (s, n in ["primaries" "secondaries" "melees"]) {
				# upvalue fix
				local slot = s
				local name = n
				if (name in c && c[name].len() != 0) {
					local selected = SelectWeighted(c[name])
					local attributebuffer = []
					if (typeof(selected) == "table" && "attributes" in selected)
						attributebuffer = selected.attributes
					GiveWeapon(player, typeof(selected) == "table" ? selected.id : selected, attributebuffer)
				}
			}
		#})
		run_now_or_delayed(function(){
			for (local slot = 0; slot < 8; slot++) {
				foreach(attribute in GetKillstreakAttributes())
					WeaponSlotAddAttribute(player, slot, attribute[0], attribute[1])
				if (PVEDisableRandomness || (PVEDisableBotCrits && player.IsFakeClient()))
					WeaponSlotAddAttribute(player, slot, "crit mod disabled", 0)
				if (!PVEAllowThriller)
					WeaponSlotAddAttribute(player, slot, "special taunt", 1)
			}
			// equip primary if applicable
			local preferred_slot = (player.GetPlayerClass() == 8) ? 2 : 0
			local new_weapon = null
			// fall back to secondary
			for (local i = 0; i < MAX_WEAPONS; i++){
				local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
				if (heldWeapon == null || heldWeapon.GetSlot() != 1) continue
				new_weapon = heldWeapon
				break
			}
			for (local i = 0; i < MAX_WEAPONS; i++){
				local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
				if (heldWeapon == null || heldWeapon.GetSlot() != preferred_slot)continue
				new_weapon = heldWeapon
				break
			}
			player.Weapon_Switch(new_weapon)
		})
		if (PVEGiveBotsCosmetics && "cosmetics" in c && c.cosmetics.len() > 0 && ((!("wearables" in scope)) || scope.wearables.len() == 0))
			run_now_or_delayed(function(){
				foreach (cosmetic in c.cosmetics)
					if (scope.PVE_DEATH_COUNT == deaths && RandomFloat(0, 1) <= ("chance" in cosmetic ? cosmetic.chance : 1.0))
						GivePlayerCosmetic(player, cosmetic)
			})
		if ("attributes" in c)
			run_now_or_delayed(function(){
				foreach (attribute in c.attributes) {
					local a = attribute
					if (typeof(a) == "string") a = { name = a }
					player.RemoveCustomAttribute(a.name)
					player.AddCustomAttribute(a.name, "value" in a ? a.value : 1, "duration" in a ? a.duration : -1)
					continue
					if (player.GetCustomAttribute(a.name, -98765.43210) != ("value" in a ? a.value : 1)) {
						player.RemoveCustomAttribute(a.name)
						player.AddCustomAttribute(a.name, "value" in a ? a.value : 1, "duration" in a ? a.duration : -1)
					}
				}
				if ("maxhealth" in c && c.maxhealth != 0) {
					player.RemoveCustomAttribute("max health additive bonus")
					player.AddCustomAttribute("max health additive bonus", c.maxhealth - player.GetMaxHealth(), -1)
				}
				local h = player.GetMaxHealth()
				if ("damageonce" in c && c.damageonce) h -= 1
				player.SetHealth(h)
			})
		if ("conditions" in c) {
			#run_now_or_delayed(function(){
				foreach (condition in c.conditions) {
					local t = condition
					if (typeof(t) == "integer") t = {type = t}
					player.RemoveCondEx(t.type, true)
					player.AddCondEx(t.type, "duration" in t ? t.duration : -1, null)
				}
			#})
		}
		RunNextStep(function(){
			if (!player || !player.IsValid()) return;
			if ("model" in c && c.model != "")
				player.SetCustomModelWithClassAnimations(c.model)
			else
				player.SetCustomModel("")
		})
		# these functions only work on TF bots (but can be called immediately)
		if (player.IsFakeClient()) {
			local temp = player.GetPlayerClass() # ignore for sniper, spy and engi
			if ("mission" in c && c.mission != -1) {
				UTILBotSetMissionSafe(player, c.mission, true)
			} else if (FixMePVEForceMissionType && temp != 2 && temp != 8 && temp != 9){
				UTILBotSetMissionSafe(player, FixMePVEForceMissionType, true)
			} else {
				UTILBotSetMissionSafe(player, 0, true)
			}
			if ("weapon_restriction" in c) {
				player.AddWeaponRestriction(c.weapon_restriction)
			}
			player.ClearBehaviorFlag(0xFFFF) # clear all flags
			if ("behavior" in c) {
				player.SetBehaviorFlag(c.behavior)
			}
			if ("bot_attributes" in c) {
				player.AddBotAttribute(c.bot_attributes)
			} /*else if (PVEBotTeam == TEAM_DEFEND) {
				player.AddBotAttribute(Constants.FTFBotAttributeType.PRIORITIZE_DEFENSE)
			}*/
			if ("fakecvars" in c) {
				foreach (var in c.fakecvars)
					SetFakeClientConVarValue(player, var.name, var.value)
			}
			if ("netprops" in c) {
				foreach (prop in c.netprops) {
					ApplyNetprop(player, prop)
				}
			}
		}
	}
	if (PVESlightDelayedEquip)
		run_now_or_delayed(temp)
	else
		temp()
}
RegisterEvent("player_spawn", function(params) {
	if (PVEDisabled) return;
	local player = GetPlayerFromUserID(params.userid)
	if (PVEForceBotSpawnLocationDisabled || !player || !player.IsValid() || player.GetTeam() != PVEBotTeam )
		return
	local spawnpoint = SelectWeighted(PVEForceBotSpawnLocation)
	if (spawnpoint) {
		player.SetAbsOrigin(typeof(spawnpoint) == "table" ? spawnpoint.pos : spawnpoint)
	}
	if (!player.IsFakeClient()) {
		RunDelayedForPlayer(player, function(){
			player.Regenerate(true)
		})
	}
})

::RemoveBots <- function() {
	RunCommand("tf_bot_kick all")
	Convars.SetValue("tf_bot_quota", 0)
	Convars.SetValue("tf_bot_auto_vacate", true)
}

::PVEAddBotsSilent <- false # experimental
::AddBots <- function() {
	local quota = Convars.GetInt("tf_bot_quota")
	if (quota != PVEBotCount) {
		# this would mess with mvm but since it is never called when mvm is active, it should be fine.
		if (PVEAddBotsSilent && quota < PVEBotCount) {
			for (local i=0; i < (PVEBotCount - quota); i++) {
				local i = i # create local variable to prevent upvalue issues
				RunInNSeconds(i*0.1, function(){
					local gr = Entities.FindByClassname(null, "tf_gamerules")
					local mm = IsInMedievalMode() # m_bPlayingMedieval
					local mvm = IsMannVsMachineMode() # m_bPlayingMannVsMachine
					local spells = IsUsingSpells() # m_bIsUsingSpells
					NetProps.SetPropBool(gr, "m_bIsUsingSpells", false)
					NetProps.SetPropBool(gr, "m_bPlayingMedieval", true)
					NetProps.SetPropBool(gr, "m_bPlayingMannVsMachine", true)
					RunCommand("tf_bot_add unconnected"+i.tostring())
					NetProps.SetPropBool(gr, "m_bPlayingMedieval", mm)
					NetProps.SetPropBool(gr, "m_bIsUsingSpells", spells)
					NetProps.SetPropBool(gr, "m_bPlayingMannVsMachine", mvm)
					Convars.SetValue("tf_bot_quota", PVEBotCount)
					Convars.SetValue("tf_bot_quota_mode", "normal")
					Convars.SetValue("tf_bot_auto_vacate", false)
				})
			}
		}
		Convars.SetValue("tf_bot_quota", PVEBotCount)
		Convars.SetValue("tf_bot_quota_mode", "normal")
		Convars.SetValue("tf_bot_auto_vacate", false)
	}
}

# limit to 50 bots by default (40 if less are required)
::PVEBotLimit <- MaxClients() > 50 ? 50 : MaxClients() - 1
::PVELessBotLimit <- MaxClients() > 40 ? 40 : MaxClients() - 2
::MaxPlayers <- MaxClients().tointeger()
::PVEHumanCount <- 0
::PVEBotCount <- 0
::PVEBotCountOverride <- 0

::PVECalcHumanBotCount <- function() {
	local vmp = Convars.GetInt("sv_visiblemaxplayers")
	local mp = vmp > 0 ? vmp : MaxPlayers
	# adjust bot count on local servers
	if (MaxPlayers < 25) {
		::PVEHumanCount <- 4
	} else if (MaxPlayers < 33) {
		::PVEHumanCount <- 6
	} else {
		::PVEHumanCount <- 12
	}
	if (PVEIncreaseHumanCount || ("forcebotdecrease" in PVECurrentClass && PVECurrentClass.forcebotdecrease))
		::PVEHumanCount <- PVEHumanCount * 2
	::PVEBotCount <- MaxPlayers - PVEHumanCount
	if (PVEBotLimit != 0 && PVEBotCount > PVEBotLimit) ::PVEBotCount <- PVEBotLimit
	if (PVEIncreaseHumanCount || ("forcebotdecrease" in PVECurrentClass && PVECurrentClass.forcebotdecrease) && PVELessBotLimit != 0 && PVEBotCount > PVELessBotLimit) ::PVEBotCount <- PVELessBotLimit
	if (PVEBotCountOverride) ::PVEBotCount <- PVEBotCountOverride
}

::PVECurrentClass <- null
::PVESetClassDefault <- function(classname, player=null) {
	::PVEOverrideClass <- classname
	::PVEDefaultClass <- classname
	::PVEDefaultIntelClass <- classname
	PVELoadClassConfig(classname, player)
	RunDelayedWait(2)
	RunDelayed(function(){
		RunDelayedWait(2)
		RunDelayed(function(){
			if (!("PVEOverrideClass" in this) || PVEOverrideClass != classname) {
				::PVEOverrideClass <- classname
				::PVEDefaultClass <- classname
				::PVEDefaultIntelClass <- classname
				PVELoadClassConfig(classname, player)
			}
		})
	})
}
::PVELoadClassConfig <- function(classname, player=null) {
	if (PVEDebugPrint)
		printl("LOADING PRESET: " + classname)
	if (classname != "disable" && !PVEForceDisable) {
		if (classname in PVEClassOptions) {
			::PVECurrentClass <- PVEClassOptions[classname]
			if (!PVEInitialized) {
				if (player != null) {
					ClientPrint(player, 3, "[PVE] PVE has not been initialized yet.")
					ClientPrint(player, 3, "[PVE] Please initialize PVE by running !pve init.")
				}
				return
			}
			::PVEDisabled <- false
			Convars.SetValue("mp_humans_must_join_team", TEAM_NAMES[PVEHumanTeam])
		} else {
			printl("THE PRESET " + classname + " DOES NOT EXIST")
			if (player) {
				ClientPrint(player, 3, "[PVE] the preset " + classname + " does not exist.")
				ClientPrint(player, 3, "[PVE] Use `!pve list` to see all available presets.")
			}
			return
		}
	} else {
		RemoveBots()
		::PVERunning <- false
		Convars.SetValue("mp_humans_must_join_team", "any")
		# run delayed because of missing event handler after script reload
		RunDelayed(function(){
			Convars.SetValue("mp_forceautoteam", 0)
		})
		::PVEDisabled <- true
	}
	PVECalcHumanBotCount()
	ForeachBot(function(p) {
		RemoveAllItems(p, true)
		p.RemoveAllObjects(false)
	})
	::PVEState <- 0
	if (PVEShowBotHealth)
		NetProps.SetPropInt(Entities.FindByClassname(null, "monster_resource"), "m_iBossHealthPercentageByte", 0)
}

# pve team mirror mode -> humans red, bots blu
::PVEMirror <- function(mirrored) {
	local change = false
	if (mirrored) {
		if (PVEHumanTeam != TEAM_DEFEND) change = true
		::PVEHumanTeam <- TEAM_DEFEND
		::PVEBotTeam <- TEAM_ATTACK
	} else {
		if (PVEHumanTeam != TEAM_ATTACK) change = true
		::PVEHumanTeam <- TEAM_ATTACK
		::PVEBotTeam <- TEAM_DEFEND
	}
	if (change && !PVEDisabled) {
		RunNextStep(MoveTeamAll)
	}
}

::PVEJustCountUp <- false
RegisterCommand("!tcu", function (player, args) {
	::PVEJustCountUp <- !PVEJustCountUp
}, "force timer to count up")

####################
# PVE CHAT COMMAND #
####################
RegisterCommand("!pve", function(player, args){
	if (args.len()>1) {
		if (args[1]=="init") {
			if (PVERunning) {

			} else if (PVEForceDisable) {
				if (PVEForceDisableReason) {
					ClientPrint(player, 3, "PVE has been disabled on " + GetMapName() + " with the following reason: ")
					ClientPrint(player, 3, "\x07CCCCCC\"\x07FFFF00" + PVEForceDisableReason + "\x07CCCCCC\"")
				}
				else ClientPrint(player, 3, "PVE has been disabled on " + GetMapName() + " to prevent crashes.")
				ClientPrint(player, 3, "If you are sure the map works, change the config.")
				ClientPrint(player, 3, "If you are unsure, change the map.")
			} else {
				::PVERunning <- true
				::PVEDisabled <- false
				::PVEState <- 0
				RemoveBots()
				AddThinkToEnt(Entities.FindByClassname(null, "tf_player_manager"), "PVEMainLoop")
				Convars.SetValue("mp_humans_must_join_team", TEAM_NAMES[PVEHumanTeam])
				#MoveTeamAll() # is this needed?
				if (!PVEInitialized) {
					::PVEInitialized <- true
					if (PVELocalInitResetGame)
						Convars.SetValue("mp_restartgame", 5)
					else if (PVELocalInitPrepareMap){
						if (!IsInWaitingForPlayers())
							PVESetup({})
						ForeachPlayer(function(p) {
							MoveTeam(p)
							PVEPlayerPostInit({userid=GetPlayerUserID(p)})
						})
					}
				}
			}
			return
		} else if (args[1] == "list") {
			foreach (name, preset in PVEClassOptions) {
				ClientPrint(player, 3, format("%s [%s]", name, preset.classname))
			}
			return
		} else if (args[1] == "morehumans") {
			if (args.len()>2) {
				::PVEIncreaseHumanCount <- StringIsTruthy(args[2])
				PVECalcHumanBotCount()
			} else {
				ClientPrint(player, 3, args[0] + args[1] + " ! Missing parameter [bool] (currently " + (PVEIncreaseHumanCount ? "true)" : "false)"))
			}
			return
		} else if (args[1] == "healthbar") {
			if (args.len()>2) {
				::PVEShowBotHealth <- StringIsTruthy(args[2])
				if (!PVEShowBotHealth) {
					NetProps.SetPropInt(Entities.FindByClassname(null, "monster_resource"), "m_iBossHealthPercentageByte", 0)
				}
			} else {
				ClientPrint(player, 3, args[0] + args[1] + " ! Missing parameter [bool] (currently " + (PVEShowBotHealth ? "true)" : "false)"))
			}
			return
		} else if (args[1] == "botcount") {
			if (args.len()>2) {
				::PVEBotCountOverride <- args[2].tointeger()
				PVECalcHumanBotCount()
			} else {
				ClientPrint(player, 3, args[0] + args[1] + format(" ! Missing parameter [int] (currently %d)", PVEBotCountOverride))
			}
			return
		} else if (args[1] == "delayequip") {
			if (args.len()>2) {
				switch (args[2]) {
					case "0":
						::PVESlightDelayedEquip <- false
						::PVEAllowDelayedEquip <- false
						break
					case "1":
						::PVESlightDelayedEquip <- true
						::PVEAllowDelayedEquip <- false
						break
					case "2":
						::PVESlightDelayedEquip <- false
						::PVEAllowDelayedEquip <- true
						break
					case "3":
						::PVESlightDelayedEquip <- true
						::PVEAllowDelayedEquip <- true
						break
					default:
						ClientPrint(player, 3, "INVALID ARG, expected flags (1:slight, 2:full, 3:both)")
				}
			} else {
				ClientPrint(player, 3, args[0] + args[1] + " ! Missing parameter [int]")
			}
			return
		} else if (args[1] == "join") {
			local s = UTILGetScriptScope(player)
			s.__PVE_TEAMJOIN_VALID__ <- true
			player.SetTeam(PVEBotTeam)
			return
		}
		if (args.len()>2)
			PVEClassOptions[args[1]].classname = args[2]
		if (args.len()>3)
			PVEClassOptions[args[1]].difficulty = args[3].tointeger()
		PVELoadClassConfig(args[1], player)
	} else {
		ClientPrint(player, 3, args[0] + " ! Missing parameter [action/presetname]")
		//ClientPrint(player, 3, "Special actions:")
		ClientPrint(player, 3, "init - start pve if not currently active")
		ClientPrint(player, 3, "disable - disable pve if currently active")
		ClientPrint(player, 3, "list - list all current presets")
		//ClientPrint(player, 3, "morehumans [0/1] - increase human count")
		//ClientPrint(player, 3, "healthbar [0/1] - show cumulative healthbar")
		ClientPrint(player, 3, "botcount [integer] - force a certain amount of bots to be in game")
		ClientPrint(player, 3, "join - join the bot team")
	}
}, "[configname] - forcefully change bot config")

RegisterCommand("!mirror", function(player, args) {
	if (args.len()>1) {
		PVEMirror(StringIsTruthy(args[1]))
	} else {
		ClientPrint(player, 3, args[0] + " " + " ! Missing parameter [mirror (bool)]")
	}
}, " [ bool ] - toggle mirror mode")
RegisterCommand("!restart", function(player, args) {
	Convars.SetValue("mp_restartgame", 5)
}, " - Restart the current round")
RegisterCommand("!kb", function(player, args) {
	#ForeachBot(function(p) { p.TakeDamageCustom(null, null, null, Vector(), Vector(), p.GetHealth() * 64, 16 + 32 + 4096, 6) })
	ForeachBot(function(p) {
		# clear bonk
	    for (local i = 0; i < 131; i++) p.RemoveCondEx(i, true);
	    p.TakeDamage(p.GetHealth() * 64, 16 + 32 + 4096, null)
	})
}, " - Kill all bots")
RegisterCommand("!rb", function(player, args) {
	ForeachBot(function(p) { UTILRespawn(p) })
}, " - Respawn all bots")
RegisterCommand("!maintenance", function(player, args) {
	if (args.len()>1) {
		::PVEMaintenanceMode <- StringIsTruthy(args[1])
	} else {
		ClientPrint(player, 3, args[0] + " ! Missing parameter [bool] (currently " + (PVEMaintenanceMode ? "true)" : "false)"))
	}
}, " [bool] - Toggle maintenance mode")
RegisterCommand("!maintenancemsg", function(player, args) {
			if (args.len()>1) {
				::PVEMaintenanceMessage <- args[1]
				for (local i = 3; i < args.len(); i++) ::PVEMaintenanceMessage <- PVEMaintenanceMessage + " " + args[i]
			} else {
				ClientPrint(player, 3, args[0] + " ! Missing parameter [string] (currently `" + PVEMaintenanceMessage "`")
			}
}, " [string] - Update maintenance message")
RegisterCommand("!nmg", function(player, args){
	printl("Regenerating Navmesh")
	::PVEForceDisable <- true
	::PVEJustCountUp <- true
	PVELoadClassConfig("disable")
	RunCommandWithCheats("nav_generate")
	::PVEMaintenanceMode <- true
	::PVEMaintenanceMessage <- "Generating navmesh for " + GetMapName() + ", please wait.\nThis might cause some lag, the map will reload when finished."
}, " - forcefully generate navmesh ( requires `sv_allow_point_servercommand always` )")
RegisterCommand("!hts", function(player, args){
	printl("Setting timescale to " + (args.len() > 1 ? args[1].tostring() : "[INVALID INPUT]"))
	if (args.len() > 1) {
		RunCommand("host_timescale " + args[1])
	} else {
		ClientPrint(player, 3, "\xFF0000MISSING PARAMETER \xFFFFFF[timescale] ( requires `sv_allow_point_servercommand always` )")
	}
}, "[timescale] - set host timescale")
RegisterCommand("!changelevel", function(player, args){
	printl("CHANGING MAP")
	if (args.len() > 1) {
		RunCommand("changelevel " + args[1])
	} else {
		ClientPrint(player, 3, "\xFF0000MISSING PARAMETER \xFFFFFF[mapname]")
	}
}, "[MAPNAME] - change map ( requires `sv_allow_point_servercommand always` )")

########################
# PVE UPDATE FUNCTIONS #
########################
::PVEUpdateTick <- true
::PVEUpdate <- function() {
	::PVEUpdateTick <- !PVEUpdateTick
	if (PVEUpdateTick) return
	PVECheckOptions()
	if (PVEShowBotHealth)
		PVEUpdateHealthbar()
}

::PVECheckOptions <- function() {
	if (Convars.GetStr("mp_humans_must_join_team") == TEAM_NAMES[PVEBotTeam]) {
		# the server changes this to red after round end on team switch
		Convars.SetValue("mp_humans_must_join_team", TEAM_NAMES[PVEHumanTeam])
		MoveTeamAll()
	} else if (PVEOldPresetVoteSystem) {
		if (Convars.GetInt("mp_autoteambalance") != 0) {
			PVELoadClassConfig(PVEVoteOption1)
			Convars.SetValue("mp_autoteambalance", 0)
		} else if (Convars.GetInt("tf_classlimit") != 0) {
			PVELoadClassConfig(PVEVoteOption2)
			Convars.SetValue("tf_classlimit", 0)
		} else if (Convars.GetInt("mp_maxrounds") != PVEMaxRounds) {
			PVELoadClassConfig(PVEVoteOption3)
			Convars.SetValue("mp_maxrounds", PVEMaxRounds)
		}
	}
}
RegisterEvent("teamplay_round_win", function(params) {
	if (PVEDisabled) return
	local gamerules = Entities.FindByClassname(null, "tf_gamerules")
	RunNextStep(function(){
		NetProps.SetPropBool(gamerules, "m_bSwitchTeams", false)
		NetProps.SetPropBool(gamerules, "m_bScrambleTeams", false)
	})
})
# experimental
::PVEUpdateHealthbar <- function() {
	local health = 0
	local maxhealth = 0
	for (local i = 1; i <= MaxPlayers; i++) {
		local p = PlayerInstanceFromIndex(i)
		if (p && p.GetTeam() == PVEBotTeam) {
			health += p.GetHealth()
			maxhealth += p.GetMaxHealth()
		}
	}
	local health_bar = Entities.FindByClassname(null, "monster_resource") // Get the health bar entity.
	if (health_bar){
		if (health && maxhealth)
			NetProps.SetPropInt(health_bar, "m_iBossHealthPercentageByte", 255 * health / maxhealth)
		else
			NetProps.SetPropInt(health_bar, "m_iBossHealthPercentageByte", 1)
	}
}
::PVEClassAmmoCounts <- [
	[0   0   0   0 0 0 0], // undefined
	[0  32  36 100 1 1 0], // scout
	[0  25  75 100 1 0 0], // sniper
	[0  20  32 100 1 1 0], // soldier
	[0  16  24 100 1 1 0], // demo
	[0 150 150 100 0 0 0], // medic
	[0 200  32 100 1 1 0], // heavy
	[0 200  32 100 1 0 0], // pyro
	[0  20  24 100 0 1 0], // spy
	[0  32 200 200 0 0 0], // engineer
	[0   0   0   0 0 0 0], // civilian
]
::PVERemoveItemsUsingMedievalMode <- false
::PVERemoveItemsUsingMedievalModeFallback <- false
::PVERespawnMedieval <- function(p, respawn_in_place = false) {
	local scope = UTILGetScriptScope(p)
	local c = ("preset" in scope) ? ClassNameToClassID(scope.preset.classname) : p.GetPlayerClass()
	local fake = p.IsFakeClient()
	local gr = Entities.FindByClassname(null, "tf_gamerules")
	local mm = IsInMedievalMode() # m_bPlayingMedieval
	local spells = IsUsingSpells() # m_bIsUsingSpells
	local respawnfn = respawn_in_place ? function(){p.Regenerate(true)} : function(){p.ForceRegenerateAndRespawn()}
	if (spells && fake) NetProps.SetPropBool(gr, "m_bIsUsingSpells", false) # no spells for bots
	# using the civilian requires changing the player file of the civilian to engineer
	# if this is not done, he will just try to collect ammo
	if (PVERemoveItemsUsingMedievalModeFallback) {
		NetProps.SetPropBool(gr, "m_bPlayingMedieval", true)
		respawnfn()
		NetProps.SetPropBool(gr, "m_bPlayingMedieval", mm)
	} else {
		p.SetPlayerClass(10)
		NetProps.SetPropInt(p, "m_Shared.m_iDesiredPlayerClass", 10)
		respawnfn()
		p.SetPlayerClass(c)
		NetProps.SetPropInt(p, "m_Shared.m_iDesiredPlayerClass", c)
	}
	if (spells && fake) NetProps.SetPropBool(gr, "m_bIsUsingSpells", spells) # reenable spells for everybody else

	RunNextStep(function(){
		if (p && p.IsValid()) {
			# give a tf_weapon_builder for spy/engie
			# do this 1 step later so they do not pull it out immedieately (prevent object increase)
			if (!mm && p.GetPlayerClass() > 7) GivePlayerWeaponByID(p, p.GetPlayerClass() == 9 ? 28 : 735)
			# refill ammo from civilian values
			if (!PVERemoveItemsUsingMedievalModeFallback) for (local i=0; i < 7; i++) {
				NetProps.SetPropIntArray(p, "m_iAmmo", PVEClassAmmoCounts[c][i], i)
			}
			if (p.IsFakeClient() && !p.IsAmmoFull()) {
				if (PVEDebugPrint)
					printl("ammo is broken, falling back to medieval mode")
				::PVERemoveItemsUsingMedievalModeFallback <- true
				RunNextStep(function(){
					if (p && p.IsValid()) {
						# give ammo on spawn
						p.AddCustomAttribute("ammo regen", 5, 5.1)
					}
				})
			}
		}
	})
}
::UTILRespawn <- function(player) {
	if (PVERemoveItemsUsingMedievalMode) {
		PVERespawnMedieval(player)
	} else {
		player.ForceRegenerateAndRespawn()
	}
}
::PVEProcessRespawnQueue <- function(){
	if (PVEDeadPlayers.len() <= 0) return;
	local p = PVEDeadPlayers.pop()
	if (!p || !p.IsValid()) return
	if (PVEBotsShouldImmediateRespawn() && p.IsFakeClient()) {
		# only respawn after round if allowed by config
		if (GetRoundState() < 5 || PVEBotsAllowImmediateRespawnAfterRound) {
			UTILRespawn(p)
		}
	} else if (p.GetTeam() == PVEBotTeam && PVERedImmediateRespawn) {
		p.ForceRegenerateAndRespawn()
	} else if (p.GetTeam() == PVEHumanTeam && PVEBluImmediateRespawn) {
		p.ForceRegenerateAndRespawn()
	}
}
RegisterEvent("Update", function(params) {
	while (PVEDeadPlayers.len() > 0) PVEProcessRespawnQueue()
})

::PVEDeadPlayers <- []
RegisterEvent("player_death", function(params) {
	# ignore dead ringer feign
	if (PVEDisabled || ("death_flags" in params && ((params.death_flags & 32) != 0))) return;
	local player = GetPlayerFromUserID(params.userid)
	# only remove cosmetics if cosmetics can be applied
	if (!player) return;
	# remove cosmetics to prevent duplication
	# NOTE: Clearing for all players would result in a refund loop ending in a crash
	if (!GivePlayerWeaponRecycle && player.IsFakeClient())
		RemoveAllItems(player, true, true)
	PVEDeadPlayers.insert(0, player)
	local scope = UTILGetScriptScope(player)
	if (!("PVE_DEATH_COUNT" in scope)) scope.PVE_DEATH_COUNT <- 0
	scope.PVE_DEATH_COUNT += 1
	NetProps.SetPropBool(player, "m_Shared.m_bInUpgradeZone", false) # temp for if "!up" is enabled once again
})

::PVEBotsShouldImmediateRespawn <- function() {
	if ("immediate_respawn" in PVECurrentClass) return PVECurrentClass.immediate_respawn
	return false
}
RegisterCommand("!ir", function(player, args) {
	::PVERedImmediateRespawn <- !PVERedImmediateRespawn
	ClientPrint(player, 3, PVERedImmediateRespawn ? "enabled" : "disabled")
}, "toggle immediate respawn")
RegisterCommand("!ir2", function(player, args) {
	::PVEBluImmediateRespawn <- !PVEBluImmediateRespawn
	ClientPrint(player, 3, PVEBluImmediateRespawn ? "enabled" : "disabled")
}, "toggle immediate respawn (humans)")

RegisterCommand("!dbsp", function(player, args) {
	if (args.len()>1){
		PVECurrentClass.primaries <- [{
			id = args[1].tointeger()
		}]
	} else {
		ClientPrint(player, 3 , "missing parameter [primary]")
	}
}, "bot set primary")
RegisterCommand("!dbss", function(player, args) {
	if (args.len()>1){
		PVECurrentClass.secondaries <- [{
			id = args[1].tointeger()
		}]
	} else {
		ClientPrint(player, 3 , "missing parameter [secondary]")
	}
}, "bot set secondary")
RegisterCommand("!dbsm", function(player, args) {
	if (args.len()>1){
		PVECurrentClass.melees <- [{
			id = args[1].tointeger()
		}]
	} else {
		ClientPrint(player, 3 , "missing parameter [melee]")
	}
}, "bot set melee")

##################################
# PVE PLAYER POST SPAWN HANDLERS #
##################################
::PVEPlayerPostInit <- function(params) {
	if (!PVERunning) return;
	PVEEquipHumansAsBotsFn(params)
	PVEBuildInSpawnFn(params)
	PVEBuildOnBotsFn(params)
	PVEEquipBot(params)
	PVEApplyPlayerNetprops(params)
}

# force player netpros to certain values
# (NOT AFFECTED BY METAPRESETS)
::PVEApplyPlayerNetprops <- function(params) {
	if (PVEDisabled) return;
	local player = GetPlayerFromUserID(params.userid)
	if (!player || !player.IsValid() || player.IsFakeClient() || player.GetTeam() != PVEHumanTeam) return
	RunDelayedForPlayer(player, function(){
		if ("player_netprops" in PVECurrentClass) {
			foreach (prop in PVECurrentClass.player_netprops) {
				ApplyNetprop(player, prop)
			}
		}
		if ("player_attributes" in PVECurrentClass) {
			foreach (attribute in PVECurrentClass.player_attributes) {
				local a = attribute
				if (typeof(a) == "string") a = { name = a }
				player.RemoveCustomAttribute(a.name)
				player.AddCustomAttribute(a.name, "value" in a ? a.value : 1, "duration" in a ? a.duration : -1)
				continue
				if (player.GetCustomAttribute(a.name, -98765.43210) != ("value" in a ? a.value : 1)) {
					player.RemoveCustomAttribute(a.name)
					player.AddCustomAttribute(a.name, "value" in a ? a.value : 1, "duration" in a ? a.duration : -1)
				}
			}
		}
		if ("player_conditions" in PVECurrentClass) {
			foreach (condition in PVECurrentClass.player_conditions) {
				local t = condition
				if (typeof(condition) == "integer") t = {type = condition}
				player.RemoveCondEx(t.type, true)
				player.AddCondEx(t.type, "duration" in t ? t.duration : -1, null)
			}
		}
		if ("player_weapon_attributes" in PVECurrentClass) {
			foreach (wslot in PVECurrentClass.player_weapon_attributes) {
				foreach (attribute in wslot.attributes)
					WeaponSlotAddAttribute(player, wslot.slot, attribute.name, attribute.value)
			}
		}
		if (!PVEAllowThriller)
			for (local slot = 0; slot < 8; slot++)
				WeaponSlotAddAttribute(player, slot, "special taunt", 1)
	})
	//if (player != null && player.IsValid() && !player.IsFakeClient() && player.GetTeam() == PVEHumanTeam)
	#printl(player)
	if ("player_weapon_netprops" in PVECurrentClass) {
		foreach (wslot in PVECurrentClass.player_weapon_netprops) {
			foreach (prop in wslot.netprops)
				ApplyNetprop(WeaponSlotGet(player, wslot.slot), prop)
		}
	}
}

::PVESetupObjectNetprops <- function() {
	if ("object_netprops" in PVECurrentClass) {
		foreach (ent_type in PVECurrentClass.object_netprops) {
			for (local e = null; e = Entities.FindByClassname(e, ent_type.classname);) {
				foreach (prop in ent_type.netprops) {
					ApplyNetprop(e, prop)
				}
			}
		}
	}
}
RegisterEvent("teamplay_round_start", function(params) {
	if (!PVERunning) return
	PVESetupObjectNetprops()
})

# executed after spawn / after resupply locker has been touched
RegisterEvent("post_inventory_application", PVEPlayerPostInit)

::PVEEquipBot <- function(params)
{
	if (PVEDisabled) return;
	local player = GetPlayerFromUserID(params.userid)
	if (player != null && player.IsFakeClient())
	{
		EquipBot(player)
	}
}

# allow human players to blend in with the bots
# (NOT AFFECTED BY METAPRESETS)
::PVEEquipHumansAsBotsFn <- function(params) {
	if (!PVETreatNonCosmeticRedPlayersAsBots || ("PVEMPActive" in getroottable() && PVEMPActive)) return;
	if (PVEDisabled) return
	local player = GetPlayerFromUserID(params.userid);
	if (!player) return;
	if (player.GetTeam() == PVEBotTeam && !player.IsFakeClient()) {
		for (local wearable = player.FirstMoveChild(); wearable != null; wearable = wearable.NextMovePeer())
		{
			if (wearable.GetClassname() == "tf_wearable") {
				local id = NetProps.GetPropInt(wearable, "m_AttributeManager.m_Item.m_iItemDefinitionIndex")
				local id_in_current_cosmetics = false
				if ("cosmetics" in PVECurrentClass)
					foreach (cosmetic in PVECurrentClass.cosmetics)
						if (typeof(cosmetic) == "table" ? cosmetic.id == id : cosmetic == id) id_in_current_cosmetics = true
				if (!id_in_current_cosmetics)
					return
			}
		}
		EquipBot(player, false)
	}
}

# allow humans to build in spawn
::PVEBuildInSpawnFn <- function(params) {
	if (!PVEAllowBuildInSpawn) return;
	local player = GetPlayerFromUserID(params.userid);
	if (!player) return;
	if (player.IsFakeClient() || player.GetPlayerClass() != 9) return # check for engi
	for (local i = 0; i < MAX_WEAPONS; i++) {
        local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
        if (heldWeapon == null)
            continue
		if (heldWeapon.GetClassname() != "tf_weapon_builder")
			continue
		local scope = UTILGetScriptScope(heldWeapon)
		local try_build = false
		scope["think_pve_build_in_spawn"] <- function() {
			# dont check every tick if not active (a slight delay when in spawn should be ok)
			if (player.GetActiveWeapon() != self) return 0.2;
			# only make the sentry look like it is buildable if the owner is in a spawnroom
			local player_in_spawn = NetProps.GetPropInt(player, "m_Shared.m_iSpawnRoomTouchCount") > 0
			if (player_in_spawn) {
				local object = NetProps.GetPropEntity(self, "m_hObjectBeingBuilt")
				if (object){
					NetProps.SetPropBool(object, "m_bServerOverridePlacement", true)
				}
			}
            local buttons = NetProps.GetPropInt(player, "m_nButtons");
			if ((buttons & Constants.FButtons.IN_ATTACK) != 0) {
				# deactivate all spawnrooms on our team
				for (local entity; entity = Entities.FindByClassname(entity, "func_respawnroom");) {
					if (entity.GetTeam() != self.GetTeam()) continue;
					entity.AcceptInput("ToggleActive", "", null, null)
				}
				# try to place again
				self.PrimaryAttack()
				# reactivate all spawnrooms on our team
				for (local entity; entity = Entities.FindByClassname(entity, "func_respawnroom");) {
					if (entity.GetTeam() != self.GetTeam()) continue;
					entity.AcceptInput("ToggleActive", "", null, null)
				}
			}
			return -1
		}
		AddThinkToEnt(heldWeapon, "think_pve_build_in_spawn")
	}
}
::PVEAllowBuildOnBots <- false # EXPERIMENTAL!!!
# allow humans to place sappers on bots
::PVEBuildOnBotsFn <- function(params) {
	if (!PVEAllowBuildOnBots) return;
	local player = GetPlayerFromUserID(params.userid);
	if (!player) return;
	if (player.IsFakeClient() || player.GetPlayerClass() != 8) return # check for spy
	for (local i = 0; i < MAX_WEAPONS; i++) {
        local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
        if (heldWeapon == null)
            continue
		if (heldWeapon.GetClassname() != "tf_weapon_builder")
			continue
		local scope = UTILGetScriptScope(heldWeapon)
		local try_build = false
		scope["think_pve_build_on_players"] <- function() {
			local object = NetProps.GetPropEntity(self, "m_hObjectBeingBuilt")
			if (object) {
				NetProps.SetPropBool(object, "m_bDisposableBuilding", true)
			}

            local buttons = NetProps.GetPropInt(player, "m_nButtons");
			if (player.GetActiveWeapon() != self) {
				try_build = false
				return
			}
			if (try_build) {
				# ForeachBot(function(b) {b.SetIsMiniBoss(true)})
				# setting m_bPlayingMannVsMachine for a longer time crashes the game
				# but flashing it should be fine
				self.AddAttribute("robo sapper", 0, -1)
				#NetProps.SetPropInt(self, "m_iObjectMode", 1) # MODE_SAPPER_ANTI_ROBOT
				local gr = Entities.FindByClassname(null, "tf_gamerules")
				NetProps.SetPropBool(gr, "m_bPlayingMannVsMachine", true)
				self.PrimaryAttack()
				NetProps.SetPropBool(gr, "m_bPlayingMannVsMachine", false)
				#NetProps.SetPropInt(self, "m_iObjectMode", 0) # MODE_SAPPER_ANTI_ROBOT
				try_build = false
				RunNextStep(function(){
					NetProps.SetPropIntArray(player, "m_iAmmo", 5, 2) # TF_AMMO_GRENADES2
					player.Weapon_Switch(heldWeapon)
				})
				NetProps.SetPropIntArray(player, "m_iAmmo", 5, 2) # TF_AMMO_GRENADES2
				player.Weapon_Switch(self)
				self.AddAttribute("robo sapper", 1, -1)
			} else if ((buttons & Constants.FButtons.IN_ATTACK) != 0) {
				if (self.GetAttribute("robo sapper", 0) != 0) {
					NetProps.SetPropIntArray(player, "m_iAmmo", 5, 2) # TF_AMMO_GRENADES2
					player.Weapon_Switch(self)
					try_build = true
					RunNextStep(function(){
						NetProps.SetPropIntArray(player, "m_iAmmo", 5, 2) # TF_AMMO_GRENADES2
						player.Weapon_Switch(heldWeapon)
					})
				}
			}
		}
		AddThinkToEnt(heldWeapon, "think_pve_build_on_players")
	}
}
# allow humans to stay bots (if they somehow become one)
::PVEAllowHumansInBotTeam <- false
# reset the player model on team change to prevent visual bugs
RegisterEvent("player_team", function(params){
	if (PVEDisabled) return
	local player = GetPlayerFromUserID(params.userid);
	if (player && player.IsValid() && !player.IsFakeClient()) {
		if (params.team == PVEHumanTeam) {
			# reset the player model if the player is not a bot
			# (would break vsh and zi (+vip maybe) but these modes break already)
			# this is no problem as the model is only changed if
			# PVETreatNonCosmeticRedPlayersAsBots is true
			# TODO: find a better place to reset player models
			player.SetCustomModel("")
			# remove all items/cosmetics on team switch too
			RemoveAllItems(player, true)
			RunDelayedForPlayer(player, function(){
				player.Regenerate(true)
			})
		} else if (params.autoteam == 1) {
			# force every human to be autoteamed correctly
			# (this prevents wrong team associations on initial joins)
			MoveTeam(player)
			RunNextStep(function(){ MoveTeam(player) }) # there is a reason this is delayed
		} else if (params.team == PVEBotTeam) {
			local s = UTILGetScriptScope(player)
			if (!("__PVE_TEAMJOIN_VALID__" in s && s.__PVE_TEAMJOIN_VALID__)) {
				if (!PVEAllowHumansInBotTeam) {
					RunNextStep(function(){ MoveTeam(player) })
				}
			}
		}
	}
})

# move bots to correct team on spawn and continue to add bots until done
::PVEAllowBotsInNonBotTeam <- false
RegisterEvent("player_spawn", function(params)
{
	if (PVEDisabled) return
	local player = GetPlayerFromUserID(params.userid)
	if (player && player.IsFakeClient() && !PVEAllowBotsInNonBotTeam)
	{
		MoveTeam(player)
		AddBots()
	}
})

#################
# PVE MAP SETUP #
#################

# are we playing control points
if (!("PVEWasCp" in getroottable())){ # keep value between reloads
	::PVEWasCp <- NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") == 2
} else {
	::PVEWasCp <- PVEWasCp || NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") == 2
}

::PVESetupOnce <- false
# required by cp_freaky_fair
::PVEMapMirrored <- false
::PVESetup <- function(params)
{
	if ("full_reset" in params) ::PVEStartTime <- Time()
	if (!PVEInitialized || IsInWaitingForPlayers() || GetRoundState() <= 1) return;
	if (PVEResetBotsOnRoundStart) {
		ForeachBot(function(p) {
			UTILRespawn(p)
		})
	}
	local flag_count = 0
	local flag_blu = null
	for (local entity; entity = Entities.FindByClassname(entity, "Item_teamflag");) {
		flag_count++
		if (entity.GetTeam() == (PVEDisableCtfREDSwapTeam ? TEAM_DEFEND : TEAM_ATTACK)) {
			flag_blu = entity
		}
	}
	# disable blu flag
	if (PVEDisableCtfRED && flag_count > 1 && flag_blu) EntFireByHandle(flag_blu, "ForceResetAndDisableSilent", "", 0.0, null, null)
	local is_koth = false
	for (local entity; entity = Entities.FindByClassname(entity, "team_round_timer");) {
		if (entity.GetName() == "zz_blue_koth_timer" || entity.GetName() == "zz_red_koth_timer") {
			is_koth = true
			break;
		}
	}
	local temp = 0
	for (local e; e = Entities.FindByClassname(e, "team_control_point");){
		temp += 1
	}
	if (temp == 1) is_koth = true;
	if (PVEWasCp && !is_koth && !PVEMedievalEnabledByDefault && !IsAttackDefenseMode() && !IsInArenaMode()) {
		# prevent red wins on 3/5cp maps
		local multiround = false
		for (local entity; entity = Entities.FindByClassname(entity, "team_control_point_master");) {
			entity.KeyValueFromInt("cpm_restrict_team_cap_win", 1)
		}
		for (local entity; entity = Entities.FindByClassname(entity, "team_control_point_round");) {
			entity.KeyValueFromInt("cpr_restrict_team_cap_win", 2)
			multiround = true
		}
		#for (local e; e = Entities.FindByClassname(e, "trigger_capture_area");) {
		#	EntFireByHandle(e, "SetTeamCanCap", "2 0", 10.0, null, null)
		#}
		# only change points to red if there is a single round (e.g.) not on hydro/dustbowl
		if (!multiround && PVENextPointCapForceLinear) RunDelayed(function() {
			::MapReplaceUnlockedPoint <- null
			local lowest_index = 999
			local lowest_point = null
			local highest_index = -1
			local highest_point = null
			local points = {}
			for (local e; e = Entities.FindByClassname(e, "team_control_point");) {
				#printl(e)
				#print("group:")
				#print(NetProps.GetPropInt(e, "m_iCPGroup"))
				#print("index:")
				local index = NetProps.GetPropInt(e, "m_iPointIndex")
				if (index < lowest_index) {
					lowest_index = index
					lowest_point = e
				}
				if (index > highest_index) {
					highest_index = index
					highest_point = e
				}
				points[index] <- e
				#e.KeyValueFromInt("point_default_owner", TEAM_RED)
				#e.DispatchSpawn()
				EntFireByHandle(e, "setowner", "3", 6 - index * 0.1, e, e)
				EntFireByHandle(e, "setowner", "2", 6.1 - index * 0.1, e, e)
				/*
				# locking only works from 5 seconds into the match and upward
				if (PVENextPointCapForceLinear) {
					#(e, "SetUnlockTime", "1", 10 - index * 0.1, e, e)
					EntFireByHandle(e, "setlocked", "1", 13 - index * 0.1, e, e)
				}
				*/
			}
			/*
			if (!PVESetupOnce)
				RegisterEvent("teamplay_point_unlocked", function(params) {
					for (local e; e = Entities.FindByClassname(e, "team_control_point");) {
						if (e == MapReplaceUnlockedPoint) continue
						if (params.cp == NetProps.GetPropInt(e, "m_iPointIndex") && PVEFakeSetupTimeStart != 0) {
							if (PVENextPointCapForceLinear)
								EntFireByHandle(e, "setlocked", "1", 0, e, e)
						}
					}
				})
			*/
			# script EntFire("func_areaportal", "Open", "", 0, null)
			if (lowest_point == highest_point) {

			} else if (lowest_point && lowest_point.GetTeam() == PVEHumanTeam) {
				for (local i = highest_index-1; i >= lowest_index; i--) {
					local current = points[i]
					local next = points[i+1]
					if (!PVESetupOnce) {
						PVELockPointForTeam(current.GetName(), PVEBotTeam)
						#PVELockPointForTeam(next.GetName(), PVEBotTeam)
						PVEAddRequiredHumanPointCapture(next.GetName(), current.GetName())
					}
				}
				PVEClearRequiredHumanPointCapture(lowest_point.GetName())
			} else if (highest_point && highest_point.GetTeam() == PVEHumanTeam) {
				for (local i = lowest_index; i < highest_index; i++) {
					local next = points[i]
					local current = points[i+1]
					if (!PVESetupOnce) {
						PVELockPointForTeam(current.GetName(), PVEBotTeam)
						#PVELockPointForTeam(next.GetName(), PVEBotTeam)
						PVEAddRequiredHumanPointCapture(next.GetName(), current.GetName())
					}
				}
				PVEClearRequiredHumanPointCapture(highest_point.GetName())
			} else {
				//printl("TEST")
			}

			::PVESetupOnce <- true
			/*
			if (PVENextPointCapForceLinear && lowest_point && lowest_point.GetTeam() == TEAM_ATTACK) {
				EntFireByHandle(lowest_point, "setlocked", "0", 20, lowest_point, lowest_point)
				::MapReplaceUnlockedPoint <- lowest_point
			}
			if (PVENextPointCapForceLinear && highest_point && highest_point.GetTeam() == TEAM_ATTACK){
				::PVEMapMirrored <- true
				EntFireByHandle(highest_point, "setlocked", "0", 20, highest_point, highest_point)
				::MapReplaceUnlockedPoint <- highest_point
			}
			// */
			# this respawns bots after point modifications on maps without
			# setup time (only symmetrical cp maps) so they can use forward spawns
			RunInNSeconds(7, function() {
				local has_timer = false
				for (local e = null; e = Entities.FindByClassname(e, "team_round_timer");) {
					has_timer = true
					if (NetProps.GetPropInt(e, "m_nSetupTimeLength") != 0) continue
					has_timer = false
					break
				}
				if (!has_timer) {
					ForeachBot(function(p) {
						RunDelayed(function(){
							UTILRespawn(p)
						})
					})
				}
			})
		})
	}
	if (PVEPayloadSpeedLimit == -1 || NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") != 3) { # TF_GAMETYPE_ESCORT

	} else if (PVEPayloadSpeedLimit != null && PVEPayloadSpeedLimit != 0) {
		for (local e = null; e = Entities.FindByClassname(e, "func_tracktrain");) {
			if (NetProps.GetPropString(e, "m_iszSoundStart") != "Cart.RollStart") continue;
			NetProps.SetPropFloat(e, "m_flAccelSpeed", PVEPayloadSpeedLimit.accelspeed)
			NetProps.SetPropFloat(e, "m_maxSpeed", PVEPayloadSpeedLimit.maxspeed)
		}
	} else if ("payload_speed_limit" in PVECurrentClass && PVECurrentClass.payload_speed_limit != null) {
		for (local e = null; e = Entities.FindByClassname(e, "func_tracktrain");) {
			if (NetProps.GetPropString(e, "m_iszSoundStart") != "Cart.RollStart") continue;
			NetProps.SetPropFloat(e, "m_flAccelSpeed", PVECurrentClass.payload_speed_limit.accelspeed)
			NetProps.SetPropFloat(e, "m_maxSpeed", PVECurrentClass.payload_speed_limit.maxspeed)
		}
	}
}
RegisterEvent("teamplay_setup_finished", PVESetup)
RegisterEvent("teamplay_round_start", PVESetup)

RegisterEvent("teamplay_point_captured", function(params) {
	if (PVEInitialized && PVEResetBotsOnCapturedPoint)
		ForeachBot(function(p) {
	    	for (local i = 0; i < 131; i++) p.RemoveCondEx(i, true);
			p.TakeDamage(999999, 8192 + 1048576 + 16777216, p)
		})
})
RegisterEvent("teamplay_round_win", function(params) {
	if (PVEInitialized && PVEClearBotItemsOnRoundEnd) {
		ForeachBot(function(p) {
			RemoveAllItems(p, true)
			p.RemoveAllObjects(false)
		})
	}
})

RegisterEvent("teamplay_point_captured", function(params) {
	if (!PVEInitialized) return;
	local is_koth = false
	for (local entity; entity = Entities.FindByClassname(entity, "team_round_timer");) {
		if (entity.GetName() == "zz_blue_koth_timer" || entity.GetName() == "zz_red_koth_timer") {
			is_koth = true
			break;
		}
	}
	/*
	if (PVEWasCp && !IsInKothMode() && !PVEMedievalEnabledByDefault && !IsAttackDefenseMode() && NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") == 2) { # TF_GAMETYPE_CP
		#printl(params.cp)
		for (local e; e = Entities.FindByClassname(e, "team_control_point");) {
			if (params.cp == NetProps.GetPropInt(e, "m_iPointIndex")) {
				#rint(e)
				EntFireByHandle(e, "SetTeamCanCap", "2 0", 0.1, e, e)
				EntFireByHandle(e, "SetLocked", "1", 0.2, e, e)
				ForeachBot(function(b){ b.RemoveAllObjects(true) })
			}
		}
	}
	*/
	local temp = 0
	for (local e; e = Entities.FindByClassname(e, "team_control_point");){
		temp += 1
	}
	if (temp == 1) is_koth = true;
	if (PVEWasCp && !is_koth && PVENextPointCapForceLinear && !PVEMedievalEnabledByDefault && !IsAttackDefenseMode() && !IsInArenaMode()) {
		local foundbiggerindex = false
		for (local e; e = Entities.FindByClassname(e, "team_control_point");) {
			local index = NetProps.GetPropInt(e, "m_iPointIndex")
			if (PVEBlockNextPointCapDelay != 0) {
				EntFireByHandle(e, "setlocked", "1", 1, e, e)
				if (!PVEMapMirrored && params.cp+1==index) {
					EntFireByHandle(e, "SetUnlockTime", format("%d", PVEBlockNextPointCapDelay), 1, e, e)
					foundbiggerindex = true
				} else if (PVEMapMirrored && params.cp-1==index) {
					EntFireByHandle(e, "SetUnlockTime", format("%d", PVEBlockNextPointCapDelay), 1, e, e)
					foundbiggerindex = true
				}
			} else {
				if (!PVEMapMirrored && params.cp+1==index) {
					EntFireByHandle(e, "setlocked", "0", 0, e, e)
					foundbiggerindex = true
				} else if (PVEMapMirrored && params.cp-1==index) {
					EntFireByHandle(e, "setlocked", "0", 0, e, e)
					foundbiggerindex = true
				}
				else
					EntFireByHandle(e, "setlocked", "1", 0, e, e)
			}
		}
		if (!foundbiggerindex) {
			Entities.FindByClassname(null, "team_control_point_master").KeyValueFromInt("cpm_restrict_team_cap_win", 2)
			#EntFireByHandle(e, "setowner", "3", 1, e, e)
			#EntFireByHandle(e, "setowner", "2", 2, e, e)
		}
	} else {
		Entities.FindByClassname(null, "team_control_point_master").KeyValueFromInt("cpm_restrict_team_cap_win", 2)
	}
})

# HALLOWEEN BOSSES / TRUCES
# prevent bots from attacking humans during truces
# this does not do much (todo: remove?)
::PVEDoNotAggroOnHealthbarFlags <- 1023 # ignore everything
if (PVEDoNotAggroOnHealthbar) RegisterEvent("Update", function(params){
	if (!PVEDoNotAggroOnHealthbar) return
	local boss_active = NetProps.GetPropInt(Entities.FindByClassname(null, "monster_resource"), "m_iBossHealthPercentageByte") != 0
	if (boss_active && !PVEShowBotHealth) ForeachBot(function(p) { p.SetBehaviorFlag(PVEDoNotAggroOnHealthbarFlags) })
	else ForeachBot(function(p) { p.ClearBehaviorFlag(PVEDoNotAggroOnHealthbarFlags) })
})

##########################
# PVE TIMER MODIFICATION #
##########################
::PVEStartTime <- Time()
::PVEDisplayTime <- Time()
::PVETimerRef <- null
::PVEAddTimer <- false # forcefully create a timer if it does not exist
::PVETimerRefStepSize <- 0
RegisterEvent("teamplay_round_start", function(params) {
	if ("full_reset" in params && params.full_reset != 0) ::PVEDisplayTime <- Time()
	if (PVEAddTimer) {
		local t = Entities.FindByClassname(null, "team_round_timer")
		if (!t || !t.IsValid()) {
			t = Entities.CreateByClassname("team_round_timer")
			t.DispatchSpawn()
		}
	}
})
RegisterEvent("teamplay_setup_finished", function(params) {
	::PVEDisplayTime <- PVEDisplayTime + NetProps.GetPropInt(PVETimerRef, "m_nSetupTimeLength")
})
RegisterEvent("Update", function(params) {
	if (!(PVERunning || PVEJustCountUp) || IsInWaitingForPlayers() || GetRoundState() != 4 /* GR_STATE_RND_RUNNING */) return
	# only count up if attacking
	# -> this allows defending humans to win
	if (PVEHumanTeam == TEAM_DEFEND) return;
	if (!PVETimerRef || !PVETimerRef.IsValid()) {
		::PVETimerRef <- Entities.FindByClassname(null, "team_round_timer")
		for (local i = 0; i < PVETimerRefStepSize; i++)
			::PVETimerRef <- Entities.FindByClassname(PVETimerRef, "team_round_timer")
		#::PVESetupTime = NetProps.GetPropInt(PVETimerRef, "m_nSetupTimeLength")
		return
	}
	# NOTE: these checks probably are not required every tick
	# TODO: move to a teamplay_round_start event hook?
	if (NetProps.GetPropBool(PVETimerRef, "m_bIsDisabled")) {
		if (PVEAddTimer) {
			EntFireByHandle(PVETimerRef, "Enable", "1", 0.0, null, null)
			EntFireByHandle(PVETimerRef, "SetTime", "0.1", 0.0, null, null)
		} else {
			::PVETimerRef <- Entities.FindByClassname(PVETimerRef, "team_round_timer")
		}
		#printl("DISABLED")
		return
	}
	if (PVETimerRef.GetName() == "zz_" + TEAM_NAMES[PVEHumanTeam] + "_koth_timer" || PVETimerRef.GetName() == "zz_teamplay_waiting_timer") {
		::PVETimerRef <- Entities.FindByClassname(PVETimerRef, "team_round_timer")
		return
	}
	if (NetProps.GetPropInt(PVETimerRef, "m_nState") == 0) # in setup
		return;
	if (!NetProps.GetPropBool(PVETimerRef, "m_bShowInHUD")) # actually show time remaining
		EntFireByHandle(PVETimerRef, "ShowInHUD", "1", 0.0, null, null)
	# do not update timer with 0 seconds
	#if (Time() - PVEDisplayTime <= 1) return;
	local t = format("%d", Time() - PVEDisplayTime)
	EntFireByHandle(PVETimerRef, "Pause", "0", 0.0, null, null)
	EntFireByHandle(PVETimerRef, "SetTime", t, 0.0, null, null)
	EntFireByHandle(PVETimerRef, "SetMaxTime", t, 0.0, null, null)
	#::PVETimerRef <- null
})

::PVEMaintenanceMode <- false
::PVEMaintenanceMessage <- "This Server is currently undergoing maintenance."
RegisterEvent("Update", function (params) {
	if (PVEMaintenanceMode)
		MSGALL(PVEMaintenanceMessage)
})

############
# PVE MAIN #
############
::PVERunning <- false
::PVEState <- 0
::PVEDisabled <- false
::PVEInitialized <- PVEIsOnDedicatedServer
::PVELastBotCount <- 0
::PVEBotCountReached <- false
::PVEMainLoop <- function() {
	if (!PVERunning) return
	if (GetHumanCount() == 0) {
		::PVERunning <- false
		::PVEState <- 0
		::PVELastBotCount <- 0
		::PVEMaintenanceMode <- false
		::PVEJustCountUp <- false
		if (PVEDebugPrint)
			printl("PAUSING [PVEDROPBOTS]")
		NetProps.SetPropString(self, "m_iszScriptThinkFunction", "")
		RemoveBots()
		//PVEMirror(false)
		//::PVEClassCheckInitialized <- false
		# Reset map after a minute of inactivity
		#EntFireByHandle(PVETimerRef, "Continue", "1", 0.0, null, null)
		#EntFireByHandle(PVETimerRef, "SetTime", "60", 0.0, null, null)
		#EntFireByHandle(PVETimerRef, "SetMaxTime", "60", 0.0, null, null)
		return
	}
	local bc = GetBotCount()
	if (PVEState == 3 && bc == PVEBotCount) {
		::PVEBotCountReached <- true
		// do not check for the other conditions if everything has been initialized already
		PVEUpdate()
	} else if (PVEState == 0) {
		::PVEBotCountReached <- false
		::PVEState <- 1
		::PVELastBotCount <- 0
		if (PVEDebugPrint)
			printl("STARTING")
		PVERevertCVars()
		PVEInitCVars()
	} else if (PVEState == 1) {
		::PVEState <- 3
		if (PVEDebugPrint)
			printl("ADD [PVEADDBOTS]")
		PVEInitializeBotSetup()
	} /* else if (PVEState == 2 && bc == PVEBotCount){
		printl("FINALIZING [PVEEQUIPBOTS]")
		::PVEState <- 3
		PVESetupObjectNetprops()
		try { # maybe the upgrade system is not defined
			PVEAddUpgradeFN()
			PVERemoveUpgradeFN()
		} catch (_e){}
	} else if (PVEState == 2 && bc >= PVELastBotCount) {
		# failsafe to prevent bots breaking
		::PVELastBotCount <- bc
	} */ else if (PVEState != 3) {
		if (PVEDebugPrint)
			printl("INVALID STATE [PVEDROPBOTS]")
		RemoveBots()
		::PVELastBotCount <- 0
		::PVEState <- 0
		::PVERunning <- false
		NetProps.SetPropString(self, "m_iszScriptThinkFunction", "")
	} else {
		AddBots()
	}
}
# initialize PVE once the first player spawns
# todo / fixme: why is this on pia instead of player_spawn with a nonzero team?
RegisterEvent("post_inventory_application", function(params)
{
	if (PVEDisabled || PVERunning || PVEForceDisable) return;
	local p = GetPlayerFromUserID(params.userid)
	# prevent bots joining while in class select without any players on the map
	if (!p || !p.IsValid() || !p.IsPlayer() || p.IsFakeClient() || !p.IsAlive())
		return
	::PVERunning <- true
	AddThinkToEnt(Entities.FindByClassname(null, "tf_player_manager"), "PVEMainLoop")
	RemoveBots()
})

# do not autostart pve on listen servers
if (!PVEIsOnDedicatedServer || PVEForceDisable) PVELoadClassConfig("disable")
else ::PVEDisabled <- false

::SM_CHECK <- true && (PVEIsOnDedicatedServer && Convars.GetStr("sourcemod_version") != null)
# replacement for common sourcemod commands in chat
if (!SM_CHECK) RegisterEvent("player_say", function(params) {
    local userid = params["userid"]
    local user = GetPlayerFromUserID(userid)
    local text = params["text"]
    local args = split(params["text"], " ")
    local command = args[0]
	switch (command.tolower()) {
		case "/help":
		case "/helpmenu":
		case "/menu":
		case "!help":
		case "!helpmenu":
		case "!menu":
			ClientPrint(user, 3, "\x07FFFF00[HELP]")
			#ClientPrint(user, 3, "This server does not use sourcemod.")
			ClientPrint(user, 3, "To change maps, use the vote menu (where you kick people).")
			#ClientPrint(user, 3, "!taunt works somewhat")
			ClientPrint(user, 3, "You can buy upgrades at resupply cabinets.")
			ClientPrint(user, 3, "Upgrades are refunded automatically on class change.")
			ClientPrint(user, 3, "If you cant see upgrades in the menu, please ensure you allow downloading all custom map files in the multiplayer settings.")
			#ClientPrint(user, 3, "Use !refund to refund all bought upgrades")
			break
		case "/map":
		case "!map":
		case "rtv":
		case "/rtv":
		case "!rtv":
		case "/vote":
		case "!vote":
		case "/nominate":
		case "!nominate":
		case "/nextmap":
		case "!nextmap":
		//case "!changelevel":
			#ClientPrint(user, 3, "\x07FF0000This command is not supported.")
			ClientPrint(user, 3, "\x07FFFF00To change the map, open the \x07FFFFFFvote menu \x07FFFF00from the pause menu")
			ClientPrint(user, 3, "\x07AAAA00(where you kick people)")
			break;
		/*
		case "!rtd":
		case "/rtd":
			ClientPrint(user, 3, "\x07FF0000This command is not supported.")
			ClientPrint(user, 3, "\x07FFFF00May come soon (tm)")
			break;
		*/
		case "/taunt":
		case "!taunt":
			if (args.len() > 1) {
				switch (args[1]) {
					case "1":
					case "Conga":
						ForceTaunt(user, 1118)
						break
					case "2":
					case "kick":
						ForceTaunt(user, 1157)
						break
					case "3":
					case "mannrobics":
						ForceTaunt(user, 1162)
						break
					default:
						try {
							ForceTaunt(user, args[1].tointeger())
						} catch (err) {
							ClientPrint(user, 3, "Invalid Taunt ID: " + args[1])
						}
						break
				}
			} else {
				ClientPrint(user, 3, "currently supported taunts:")
				ClientPrint(user, 3, "1: conga")
				ClientPrint(user, 3, "2: Kazotsky Kick")
				ClientPrint(user, 3, "3: Mannrobics")
				ClientPrint(user, 3, "To taunt, write `" + args[0] + "` [NUMBER] in chat")
				ClientPrint(user, 3, "Where [NUMBER] is the number of the taunt you want to use")
				ClientPrint(user, 3, "Alternatively [NUMBER] can be the item definition ID of the taunt you want to use")
				ClientPrint(user, 3, "https://wiki.alliedmods.net/Team_Fortress_2_Item_Definition_Indexes")
			}
			break
		case "!motd":
		case "/motd":
			RunClientCommand(user, "show_motd")
			break
		case "!tp":
		case "/tp":
		case "!thirdperson":
		case "/thirdperson":
			EntFireByHandle(user, "SetForcedTauntCam", "1", 0.0, user, user)
			break
		case "!fp":
		case "/fp":
		case "!firstperson":
		case "/firstperson":
			EntFireByHandle(user, "SetForcedTauntCam", "0", 0.0, user, user)
			RunClientCommand(user, "firstperson")
			break
		#case "!upgrade": # dont conflict with !upgrade command
		case "/upgrade":
		case "!upgrades":
		case "/upgrades":
		case "!up":
		case "/up":
		case "!rtu":
		case "/rtu":
			# todo: make this work in actual games
			if (PVEIsOnDedicatedServer) break;
			RunDelayedForPlayer(user, function() {})
			RunDelayedForPlayer(user, function(){
				NetProps.SetPropBool(user, "m_Shared.m_bInUpgradeZone", false)
			})
			RunDelayedForPlayer(user, function() {})
			RunDelayedForPlayer(user, function(){
				NetProps.SetPropBool(user, "m_Shared.m_bInUpgradeZone", true)
			})
			break
		case "!refund":
		case "/refund":
			// check for use in future, this may be abusable
			if (PVEIsOnDedicatedServer) break;
			try {
				if (PVEShouldUpgradesBeEnabled()) {
					#for (local i = 1; i <= 9; i++) {
					#	RunDelayedForPlayer(user, function() { ForceChangeClass(user, i) })
					#	RunDelayedForPlayer(user, function() { user.GrantOrRemoveAllUpgrades(true, true) })
					#}
					#RunDelayedForPlayer(user, function() { user.SetCurrency(PVECurrencyOnSpawn) })
					user.GrantOrRemoveAllUpgrades(true, false)
					user.GrantOrRemoveAllUpgrades(true, true)
					user.SetCurrency(PVECurrencyOnSpawn)
					ClientPrint(user, 3, "Your upgrades have been refunded.")
				}
			} catch (e) {
				// just in case PVEShouldUpgradesBeEnabled is not defined
			}
			break
	}
}); /* # TODO: ENABLE else if (Convars.GetStr("engipve_version") != null && Convars.GetStr("engipve_version") != "") {
	// sourcemod and the official 1ku plugins are both installed, better disable
	PVELoadClassConfig("disable")
	::PVEForceDisable <- true
	::PVEForceDisableReason <- "official 1ku plugin detected"
}*/

# experimental: overwrite ClearGameEventCallbacks to prevent VScript maps from
# 				causing conflicts with this script
#(not that experimental anymore, this just works (except on vsh/zi))
if (PVEExperimentalTryVScriptMaps) {
	local OldClear = ClearGameEventCallbacks
	::ClearGameEventCallbacks <- function(actually_clear=false) {
		if (actually_clear) {
			try {
				OldClear(true)
			} catch (e) {
				OldClear()
			}
		}
	}
}

if (PVEDebugPrint) {
	RegisterEvent("teamplay_round_win", function(params) {
		if (!PVEDebugPrint) return;
		printl("[PVEROUNDWIN] " + PVEGetTimestamp())
		foreach (k,v in params) {
			print("[PVEROUNDWININFO] ")
			print(k)
			print(" : ")
			printl(v)
		}
	})
}

if (PVEIsOnDedicatedServer) {
	::SteamIDSteamIDs <- {}
	// on join message checked by steamid
	::SteamIDInfoMessage <- []
	::SteamIDInfoEnabled <- true
	RegisterEvent("player_team", function(params){
		# ignore all events where players are not disconnected or connected
		if (!params.disconnect && params.oldteam != 0) return
		local p = GetPlayerFromUserID(params.userid)
		if (!p || !p.IsValid() || p.IsFakeClient()) return
		local steamid = NetProps.GetPropString(p, "m_szNetworkIDString")
		SteamIDSteamIDs[steamid] <- false
	})
	RegisterEvent("post_inventory_application", function(params){
		if (!SteamIDInfoEnabled || PVEState != 3 || !PVEBotCountReached || IsInWaitingForPlayers()) return;
		local p = GetPlayerFromUserID(params.userid)
		# ignore fake players
		if (!p || !p.IsValid() || p.IsFakeClient()) return
		local steamid = NetProps.GetPropString(p, "m_szNetworkIDString")
		if (!(steamid in SteamIDSteamIDs) || !SteamIDSteamIDs[steamid]) {
			SteamIDSteamIDs[steamid] <- true
			foreach (line in SteamIDInfoMessage) {
				ClientPrint(p, 3, line)
			}
		}
	})
}

RegisterCommand("!reload", function(player,args){
	RunCommand("script_execute " + split(__FILE__, ".", true)[0])
}, "reloads all scripts")

# Add info about PVE being disabled if it has not been disabled for nav_generate
if (PVEIsOnDedicatedServer && PVEForceDisable && !PVEMaintenanceMode) {
	RegisterEvent("player_spawn", function(params){
		if (PVEIsOnDedicatedServer && PVEForceDisable && !PVEMaintenanceMode) {
			::PVEMaintenanceMode <- true
			::PVEMaintenanceMessage <- "PVE has been disabled on this map.\nPlease enable it in the config or change the map."
		}
	})
}

# experimental: mvm upgrades in PVE
# TODO: rebalance
if (true) {
	if (!("mvm" in PVEClassOptions)) PVEClassOptions.mvm <- PVEClassOptions[PVEDefaultClass]
	# setup
	::PVEMvmUpgrades <- null
	::PVERefundOnClassChange <- true
	::PVEQuickbuildWhileSetup <- true
	::PVEExtendSetupTime <- false
	::PVECurrencyOnSpawn <- 4000 # 999999 # 4000 # 1000
	::PVECurrencyOnKill <- 4 # 5 # 15
	::PVECurrencyOnDestruction <- 3
	::PVECurrencyOnAssist <- 2 # 5
	::PVECurrencyOnDeath <- 0 # 50
	::PVECurrencyOnPayload <- 1 # 3
	::PVECurrencyFactor <- 1
	::PVEMvmSetupTimeFactor <- 90
	::PVEMvmSetupTimeIsAbsolute <- false
	::PVEMvmTimeGainLimitFactor <- 0
	::PVEAllowUpgradeHealthTrickery <- true
	::PVEShouldUpgradesBeEnabled <- function() {
		if (IsInWaitingForPlayers()) return false
		if (PVEMvmUpgrades != null) return PVEMvmUpgrades
		if (PVERunning && ("allow_upgrades" in PVECurrentClass)) return PVECurrentClass.allow_upgrades
		return PVEInitialized #!PVEIsOnDedicatedServer # temp, may change to false in the future
	}
	# scale currency ammounts differently per player class
	::PVEUpgradeCurrencyFactorPerClass <- [/* undefined */ 1
		/* scout */ 2 /* sniper */ 1 /* soldier */ 1 /* demoman */ 1
		/* medic */ 1 /* heavyweapons */ 1 /* pyro */ 1 /* spy */ 1 /* engineer */ 1
		/* civilian */ 1
	]
	# give currency ammounts differently per player class
	::PVEUpgradeCurrencyGiveFactorPerClass <- [/* undefined */ 1
		/* scout */ 2 /* sniper */ 1 /* soldier */ 1 /* demoman */ 1
		/* medic */ 1 /* heavyweapons */ 1 /* pyro */ 1 /* spy */ 1 /* engineer */ 1
		/* civilian */ 1
	]
	::PVEGiveCurrency <- function(ammount, player = null) {
		local ammunt_to_give = ammount * PVECurrencyFactor * PVEUpgradeCurrencyGiveFactorPerClass[(player && player.IsValid()) ? player.GetPlayerClass() : 0]
		ForeachPlayer(function(p) {
			p.SetCurrency(p.GetCurrency() + ammunt_to_give * PVEUpgradeCurrencyFactorPerClass[p.GetPlayerClass()])
		})
		::PVECurrencyOnSpawn <- PVECurrencyOnSpawn + ammunt_to_give
	}
	# multistage map money fix
	::PVESetCurrencyOnceChecked <- []
	::PVESetCurrencyOnce <- function(p) {
		if (!p || !p.IsValid() || p.IsFakeClient() || !PVEShouldUpgradesBeEnabled()) return;
		foreach (player in PVESetCurrencyOnceChecked) if (p == player) return
		PVESetCurrencyOnceChecked.push(p)
		p.SetCurrency(PVECurrencyOnSpawn * PVEUpgradeCurrencyFactorPerClass[p.GetPlayerClass()])
	}
	# clear disconnected players from currency list
	RegisterEvent("player_disconnect", function(params) {
		local p = GetPlayerFromUserID(params.userid)
		for (local i = 0; i < PVESetCurrencyOnceChecked.len(); i++) {
			if (PVESetCurrencyOnceChecked[i] == p) {
				PVESetCurrencyOnceChecked.remove(i)
				return
			}
		}
	})

	RegisterEvent("post_inventory_application", function(params) {
		if ( /* params.team == 0 && */ PVEShouldUpgradesBeEnabled()) PVESetCurrencyOnce(GetPlayerFromUserID(params.userid))

		# refund upgrades on class change
		if (PVEShouldUpgradesBeEnabled() && PVERefundOnClassChange /* && params.team == PVEHumanTeam */) {
			local p = GetPlayerFromUserID(params.userid)
			if (!(p && p.IsValid() && !p.IsFakeClient() && p.GetTeam() == PVEHumanTeam)) return
			local s = UTILGetScriptScope(p)
			if (!("__PVE_REFUND_ITEM_LIST__" in s)) {
				s.__PVE_REFUND_ITEM_LIST__ <- []
			} else for (local i = 0; i < MAX_WEAPONS; i++) {
				local heldWeapon = NetProps.GetPropEntityArray(p, "m_hMyWeapons", i)
				if (heldWeapon && heldWeapon.IsValid() && s.__PVE_REFUND_ITEM_LIST__.find(heldWeapon) == null)
					RunDelayedForPlayer(p, function(){
						ClientPrint(p, 4, "Your upgrades have been refunded.")
						p.GrantOrRemoveAllUpgrades(true, true)
						p.GrantOrRemoveAllUpgrades(true, false)
						p.SetCurrency(PVECurrencyOnSpawn * PVEUpgradeCurrencyFactorPerClass[p.GetPlayerClass()])
					})
			}
			s.__PVE_REFUND_ITEM_LIST__.clear()
			for (local i = 0; i < MAX_WEAPONS; i++) {
				local heldWeapon = NetProps.GetPropEntityArray(p, "m_hMyWeapons", i)
				if (heldWeapon && heldWeapon.IsValid())
					s.__PVE_REFUND_ITEM_LIST__.push(heldWeapon)
			}
		}
	})

	::PVEUpgradeMobsterFix <- false
	::PVEUpgradeIncludeSpawnrooms <- false
	::PVEMadeUpgradestations <- []
	::PVEAddUpgradeFN <- function(params={}) {
		if (!PVEShouldUpgradesBeEnabled()) return
		ForceEnableUpgrades(2)

		# only set up upgradestations if none exist already
		# this is a fix specifically for the mobster vip mode
		if (!Entities.FindByClassname(null, "func_upgradestation")){
			local spawnrooms = []
			if (PVEUpgradeIncludeSpawnrooms)
				for (local e; e = Entities.FindByClassname(e, "func_respawnroom");)
					spawnrooms.push(e)

			local func_regenerates = []
			for (local e; e = Entities.FindByClassname(e, "func_regenerate");) {
				func_regenerates.push(e)
			}

			# the vip mobster mode replaces upgradestations with custom triggers
			if (PVEUpgradeMobsterFix) {
				for (local e; e = Entities.FindByClassname(e, "trigger_multiple");) {
					if ("OnCustomRegen" in UTILGetScriptScope(e)) func_regenerates.push(e)
				}
			}

			local stations_to_spawn = []
			foreach (e in func_regenerates) {
				for (local spawnroom; spawnroom = Entities.FindInSphere(spawnroom, e.GetCenter(), 1.0);) {
					if (spawnroom.GetClassname() == "func_respawnroom") {
						for (local i=0; i < spawnrooms.len(); i++) {
							if (spawnrooms[i] == spawnroom) {
								spawnrooms.remove(i)
								break;
							}
						}
					}
				}
				stations_to_spawn.push(e)
			}
			stations_to_spawn.extend(spawnrooms)
			foreach (e in stations_to_spawn) {
				local r = Entities.CreateByClassname("func_upgradestation")
				r.SetSize(e.GetBoundingMins(), e.GetBoundingMaxs())
				r.SetOrigin(e.GetOrigin())
				r.SetAbsAngles(e.GetAbsAngles())
				PrecacheModel(e.GetModelName())
				r.SetModel(e.GetModelName())
				r.SetTeam(e.GetTeam())
				r.DispatchSpawn()
				PVEMadeUpgradestations.push(r)
			}
		}
		ForeachHuman(function(p) {
			PVESetCurrencyOnce(p)
		})
	}
	RegisterEvent("teamplay_round_start", function(params) {
		if (PVEDisabled) return;
		if (PVEExtendSetupTime)
			for (local e; e = Entities.FindByClassname(e, "team_round_timer");) {
				if (NetProps.GetPropInt(e, "m_nSetupTimeLength") > 0) {
					print(e)
					if (PVEMvmSetupTimeIsAbsolute)
						NetProps.SetPropInt(e, "m_nSetupTimeLength", PVEMvmSetupTimeFactor)
					else
						NetProps.SetPropInt(e, "m_nSetupTimeLength", NetProps.GetPropInt(e, "m_nSetupTimeLength") * PVEMvmSetupTimeFactor)
					EntFireByHandle(e, "SetTime", NetProps.GetPropInt(e, "m_nSetupTimeLength").tostring(), 0.0, null, null)
					::PVETimerRef <- null
				}
			}
	})
	::PVERemoveUpgradeFN <- function(params={}) {
		if (PVEShouldUpgradesBeEnabled()) return
		PVESetCurrencyOnceChecked.clear()
		ForceEnableUpgrades(0)
		#for (local e; e = Entities.FindByClassname(e, "func_upgradestation");)
		foreach (e in PVEMadeUpgradestations)
			if (e && e.IsValid()) e.Kill()
		PVEMadeUpgradestations.clear()
		ForeachPlayer(function(p) {
			p.GrantOrRemoveAllUpgrades(true, true)
		})
	}
	RegisterEvent("teamplay_round_start", PVEAddUpgradeFN)
	RegisterEvent("Setup", PVEAddUpgradeFN)
	# currency management
	RegisterEvent("player_death", function(params) {
		if (!PVEShouldUpgradesBeEnabled()) return
		local dead, killer, assister
		if ("userid" in params) dead = GetPlayerFromUserID(params.userid)
		if ("attacker" in params) killer = GetPlayerFromUserID(params.attacker)
		if ("assister" in params) assister = GetPlayerFromUserID(params.assister)
		if (dead==killer) return
		if (killer && killer.IsValid()) PVEGiveCurrency(PVECurrencyOnKill, killer)
		if (dead && dead.IsValid()) PVEGiveCurrency(PVECurrencyOnDeath, dead)
		if (assister && assister.IsValid()) PVEGiveCurrency(PVECurrencyOnAssist, assister)
	})
	RegisterEvent("object_destroyed", function(params) {
		if (!PVEShouldUpgradesBeEnabled()) return
		local killer, assister
		if ("team" in params && params.team != PVEBotTeam) return
		if ("attacker" in params) killer = GetPlayerFromUserID(params.attacker)
		if ("assister" in params) assister = GetPlayerFromUserID(params.assister)
		if (killer && killer.IsValid()) PVEGiveCurrency(PVECurrencyOnDestruction, killer)
		if (assister && assister.IsValid()) PVEGiveCurrency(PVECurrencyOnAssist, assister)
	})
	RegisterEvent("payload_pushed", function(params) {
		if (!PVEShouldUpgradesBeEnabled()) return
		local player = GetPlayerFromUserID(params.pusher)
		if (!player || !player.IsValid()) return
		PVEGiveCurrency(PVECurrencyOnPayload * params.distance, player)
	})
	# commands
	RegisterCommand("!upgrade", function(player, args) {
		::PVEMvmUpgrades <- !PVEShouldUpgradesBeEnabled()
		ClientPrint(player, 3, "changing upgrade state to: " + (PVEMvmUpgrades ? "ENABLED" : "DISABLED"))
		PVEAddUpgradeFN()
		PVERemoveUpgradeFN()
	})
	RegisterCommand("!dbgupgrade", function(player, args) {
		player.AddCurrency(99999999)
		if (args.len() > 1)
			RunFunctionWithCheats(function() {
				player.GrantOrRemoveAllUpgrades(false, true)
			})
	})
	::PVEInformAboutUpgradesAtCabinets <- true
	RegisterEvent("player_spawn", function(params){
		if (PVEShouldUpgradesBeEnabled() && PVEInformAboutUpgradesAtCabinets) {
			local p = GetPlayerFromUserID(params.userid)
			if (p && p.IsValid() && !p.IsFakeClient()) {
				ClientPrint(p, 4, "Upgrades are available at resupply cabinets.")
			}
		}
	})
	RegisterEvent("teamplay_pre_round_time_left", function(params) {
		if (!PVERunning) return
		local fastbuild = Convars.GetInt("tf_fastbuild")
		if (PVEQuickbuildWhileSetup && fastbuild == 0) {
			Convars.SetValue("tf_fastbuild", 1)
			Convars.SetValue("tf_cheapobjects", 1)
		} else if (PVEQuickbuildWhileSetup && (fastbuild != 0 || PVEInSetup)) {
			foreach (classname in ["obj_sentrygun", "obj_dispenser", "obj_teleporter"]) {
				for (local e; e = Entities.FindByClassname(e, classname);) {
					NetProps.SetPropInt(e, "m_iHighestUpgradeLevel", 3)
					if (classname == "obj_dispenser") NetProps.SetPropInt(e, "m_iAmmoMetal", 400)
				}
			}
			# this causes warnings about script lag (oh well... it does not hurt)
			ForeachPlayer(function(p) {
				if (p.GetTeam() == PVEBotTeam) return
				local w = p.GetActiveWeapon()
				if (w && w.IsValid() && w.GetSlot() < 3) p.Regenerate(true)
			})
		}
	})
	RegisterEvent("teamplay_setup_finished", function(params){
		if (PVEQuickbuildWhileSetup && Convars.GetInt("tf_fastbuild") != 0) {
			Convars.SetValue("tf_fastbuild", 0)
			Convars.SetValue("tf_cheapobjects", 0)
		}
	})
	RegisterEvent("teamplay_timer_time_added", function(params) {
		if (PVEDisabled) return;
		local timer = EntIndexToHScript(params.timer)
		local was_paused = NetProps.GetPropBool(timer, "m_bTimerPaused")
		if (!was_paused)
			EntFireByHandle(timer, "Pause", "1", 0, timer, timer)
		RunDelayed(function() {
			local time = NetProps.GetPropFloat(timer, "m_flTimeRemaining")
			EntFireByHandle(timer, "SetTime", (time - params.seconds_added * PVEMvmTimeGainLimitFactor).tostring(), 0, timer, timer)
			if (!was_paused)
				EntFireByHandle(timer, "Resume", "1", 0.5, timer, timer)
		})
	})

	// prevent using the upgrade menu to heal sentries / self
	RegisterEvent("post_inventory_application", function(params) {
		if (PVEDisabled || PVEAllowUpgradeHealthTrickery) return;
		local p = GetPlayerFromUserID(params.userid)
		if (!p || !p.IsValid() || p.IsFakeClient()) return;
		local s = UTILGetScriptScope(p)
		local c = p.GetCurrency()
		if (!("REGENLASTCURRENCY" in s)) s.REGENLASTCURRENCY <- c
		if (NetProps.GetPropBool(p, "m_Shared.m_bInUpgradeZone") && s.REGENLASTCURRENCY != c){
			// prevent regen if outside a spawnroom
			if (NetProps.GetPropInt(p, "m_Shared.m_iSpawnRoomTouchCount") == 0) {
				local h = p.GetHealth()
				RunNextStep(function(){ p.SetHealth(h) })
			}
			// do not change existing building health
			for (local e; e = Entities.FindByClassname(e, "obj_*");) {
				if (NetProps.GetPropEntity(e, "m_hBuilder") == p) {
					local upvalue_fix = e // make local variable against upvalues
					local bh = upvalue_fix.GetHealth()
					local mh = upvalue_fix.GetMaxHealth()
					RunNextStep(function(){
						//mh = upvalue_fix.GetMaxHealth() < mh ? upvalue_fix.GetMaxHealth() : mh
						upvalue_fix.SetHealth(bh)
						//upvalue_fix.SetHealth(mh > bh ? bh : mh)
						upvalue_fix.SetMaxHealth(mh)
					})
				}
			}
		}
		s.REGENLASTCURRENCY = c
	})
	RegisterCommand("!mvm", function(player, args){
		if (args.len() > 1) {
			if (args[1] == "disable") {
				::PVEMvmUpgrades <- null
				::PVEResetBotsOnCapturedPoint <- false
				::PVEResetBotsOnRoundStart <- false
				::PVEQuickbuildWhileSetup <- false
				::PVEExtendSetupTime <- false
				::PVEFakeSetupLockPoints <- false
				::PVEMvmSetupTimeIsAbsolute <- false
				::PVEMvmTimeGainLimitFactor <- 0
				PVERemoveUpgradeFN()
				PVEMirror(false)
				PVELoadClassConfig(PVEDefaultClass)
				Convars.SetValue("mp_restartgame", 5)
				ClientPrint(player, 3, "MVM Disabled")
				return
			}
			if (args[1] in PVEClassOptions){
				ClientPrint(player, 3, "MVMPreset: " + args[1])
				PVEClassOptions.mvm <- PVEClassOptions[args[1]]
				if (!PVEInitialized) ::PVEInitialized <- true
			} else {
				ClientPrint(player, 3, "MVMError: " + args[1] + " does not exist")
			}
		}
		ClientPrint(player, 3, "Enableing MVM like mode")
		::PVEMvmUpgrades <- true
		::PVECurrencyOnSpawn <- 30000 # 3000
		::PVECurrencyOnKill <- 25
		::PVECurrencyOnAssist <- 10
		::PVECurrencyOnDeath <- 100 # this may be dumb
		::PVEMvmTimeGainLimitFactor <- 0.5
		# this may be dumber
		::PVEResetBotsOnCapturedPoint <- !IsInKothMode()
		::PVEResetBotsOnRoundStart <- true
		::PVEQuickbuildWhileSetup <- true
		::PVEExtendSetupTime <- true
		::PVEFakeSetupLockPoints <- true
		::PVEMvmSetupTimeIsAbsolute <- true

		#PVEAddUpgradeFN()
		PVELoadClassConfig("mvm")
		PVEMirror(true)
		Convars.SetValue("mp_restartgame", 5)
		RunDelayed(function(){
			ClientPrint(null, 3, "mvm-like enabled.")
		})
	}, " (presetname='mvm' / disable) - enable / disable mvmlike mode")

	::PVEToggleUpgrades <- function() {
		::PVEMvmUpgrades <- !PVEShouldUpgradesBeEnabled()
		printl("changing upgrade state to " + (PVEMvmUpgrades ? "ENABLED" : "DISABLED"))
		PVEAddUpgradeFN()
		PVERemoveUpgradeFN()
	}
}

# fake setup (5cp / koth / ctf) (for all maps without a setup timer)
if (true) {
	::PVEInSetup <- false
	::PVEFakeSetupTimeStart <- 0
	::PVEFakeSetupLockPoints <- false
	::__TEMP_STEP__ <- 0
	::__BLU_FILTERS_TEMP__ <- []
	::__FAKE_SETUP_DISABLED_CAPTURE_AREAS__ <- []
	::__CLEAR_CAPTURE_AREAS__ <- function() {
		foreach (area in __FAKE_SETUP_DISABLED_CAPTURE_AREAS__) {
			if (area && area.IsValid()) {
				EntFireByHandle(area, "Enable", "1", 0, area, area)
				NetProps.SetPropBool(area, "m_bDisabled", false)
				EntFireByHandle(area, "Enable", "1", 0, area, area)
				RunNextStep(function(){
					EntFireByHandle(area, "Enable", "1", 0, area, area)
					NetProps.SetPropBool(area, "m_bDisabled", false)
					EntFireByHandle(area, "Enable", "1", 0, area, area)
				})
			}
		}
		__FAKE_SETUP_DISABLED_CAPTURE_AREAS__.clear()
	}
	RegisterEvent("teamplay_point_unlocked", function(params) {
		if (PVEFakeSetupTimeStart != 0 && PVEFakeSetupLockPoints) RunNextStep(function(){
			for (local e; e = Entities.FindByClassname(e, "trigger_capture_area");) {
				if (!NetProps.GetPropBool(e, "m_bDisabled")) {
					EntFireByHandle(e, "Disable", "1", 0, e, e)
					NetProps.SetPropBool(e, "m_bDisabled", true)
					EntFireByHandle(e, "Disable", "1", 0, e, e)
					RunNextStep(function(){
						EntFireByHandle(e, "Disable", "1", 0, e, e)
						NetProps.SetPropBool(e, "m_bDisabled", true)
						EntFireByHandle(e, "Disable", "1", 0, e, e)
					})
					__FAKE_SETUP_DISABLED_CAPTURE_AREAS__.push(e)
				}
			}
		})
	})
	::__CLEAR_BLU_FILTERS__ <- function() {
		foreach (filter in __BLU_FILTERS_TEMP__) {
			# if the team number is not 5, it has been changed from something other than the script
			if (filter && filter.IsValid() && filter.GetTeam() == 5) filter.SetTeam(TEAM_ATTACK)
		}
		# this is dumb, there needs to be a smarter way of fixing spawn door triggers
		for (local e; e = Entities.FindByClassname(e, "trigger_*");) {
			# fix megaton killing everybody after fake setup (only re-toggle active triggers)
			if (!NetProps.GetPropBool(e, "m_bDisabled")) {
				EntFireByHandle(e, "Toggle", "", 0.0, null, null)
				EntFireByHandle(e, "Toggle", "", 0.1, null, null)
			}
		}
		//ForeachHuman(function(p){p.ForceRegenerateAndRespawn()})
		# reuse the array
		__BLU_FILTERS_TEMP__.clear()
	}
	RegisterEvent("teamplay_round_start", function(params) {
		if (PVEForceEnableFakeSetup) {
			for (local e = null; e = Entities.FindByClassname(e, "team_round_timer"); ) {
				if (NetProps.GetPropInt(e, "m_nState") == 0) # timer in setup
					EntFireByHandle(e, "SetTime", "1", 0, e, e)
			}
		} else {
			for (local e; e = Entities.FindByClassname(e, "team_round_timer");) {
				if (NetProps.GetPropInt(e, "m_nSetupTimeLength") > 0) {
					return
				}
			}
		}
		if (PVEEnableFakeSetup && PVEFakeSetupTime != 0) {
			::PVEFakeSetupTimeStart <- Time()
		}
		__CLEAR_BLU_FILTERS__()
		__CLEAR_CAPTURE_AREAS__()
	})
	::__FAKE_SETUP_UPDATE_STEP_INTERVAL__ <- 60 // 66 tps (check a little more than once per second)
	RegisterEvent("Update", function(params) {
		if (PVEDisabled || IsInWaitingForPlayers()) return;
		if (__TEMP_STEP__ > 0) {
			__TEMP_STEP__--
			return
		} else {
			__TEMP_STEP__ = __FAKE_SETUP_UPDATE_STEP_INTERVAL__
		}
		local fakesetuptimeend = PVEFakeSetupTimeStart + (PVEMvmSetupTimeIsAbsolute ? PVEMvmSetupTimeFactor : PVEFakeSetupTime * (PVEExtendSetupTime ? PVEMvmSetupTimeFactor : 1))
		if (PVEFakeSetupTimeStart != 0 && fakesetuptimeend > Time()) {
			if ("OnGameEvent_teamplay_pre_round_time_left" in CollectedFunctionTable)
				CollectedFunctionTable.OnGameEvent_teamplay_pre_round_time_left({})
			MSGALL(format("Setup: %d seconds left%s", (fakesetuptimeend - Time()).tointeger(), PVEFakeSetupPlayerStun != 0 ? "\nBecause of a lack of doors you can't move now." : ""))
			if (PVEFakeSetupLockDoors && __BLU_FILTERS_TEMP__.len() == 0)
				foreach (filter in ["filter_activator_tfteam" "filter_activator_team"])
					for (local e; e = Entities.FindByClassname(e, filter);) {
						#print(e)
						#printl(e.GetTeam())
						if (e.GetTeam() == TEAM_ATTACK) {
							e.SetTeam(5)
							__BLU_FILTERS_TEMP__.push(e)
						}
					}
			if (PVEFakeSetupLockPoints && __FAKE_SETUP_DISABLED_CAPTURE_AREAS__.len() == 0)
				for (local e; e = Entities.FindByClassname(e, "trigger_capture_area");) {
					if (!NetProps.GetPropBool(e, "m_bDisabled")) {
						EntFireByHandle(e, "Disable", "1", 0, e, e)
						NetProps.SetPropBool(e, "m_bDisabled", true)
						__FAKE_SETUP_DISABLED_CAPTURE_AREAS__.push(e)
					}
				}
			if (PVEFakeSetupPlayerStun != 0)
				for (local i = 1; i <= MaxPlayers; i++) {
					local p = PlayerInstanceFromIndex(i)
					if (!p || !p.IsValid() || p.GetTeam() != TEAM_ATTACK) continue
					p.StunPlayer((__FAKE_SETUP_UPDATE_STEP_INTERVAL__) * 0.05, PVEFakeSetupPlayerStun, 33, p)
				}
		} else if (PVEFakeSetupTimeStart != 0) {
			::PVEFakeSetupTimeStart <- 0
			__CLEAR_BLU_FILTERS__()
			__CLEAR_CAPTURE_AREAS__()
			MSGALL(format("BEGIN"))
			if (PVEQuickbuildWhileSetup && Convars.GetInt("tf_fastbuild") != 0) {
				Convars.SetValue("tf_fastbuild", 0)
				Convars.SetValue("tf_cheapobjects", 0)
			}
			# there are no multistage maps without setup time so changing the
			# display time here is not an issue for calculating the total time
			::PVEDisplayTime <- Time()
		}
	})
}

RegisterCommand("!wc", function(player, args) {
	RunCommand("mp_waitingforplayers_cancel 1")
}, " - cancel waitingforplayers")
RegisterCommand("!rcon", function(player, args) {
	if (args.len() == 1) {
		ClientPrint(player, 3, "missing command")
	}
	local cmd = args[1]
	for (local i = 2; i < args.len(); i++) {
		cmd = cmd + " " + args[i]
	}
	RunCommand(cmd)
}, " [cmd] - run cmd in server console")
RegisterCommand("!rconch", function(player, args) {
	if (args.len() == 1) {
		ClientPrint(player, 3, "missing command")
	}
	local cmd = args[1]
	for (local i = 2; i < args.len(); i++) {
		cmd = cmd + " " + args[i]
	}
	RunCommandWithCheats(cmd)
}, " [cmd] - run cmd with cheats")

# this waits with server hibernation to prevent issues with reconnecting clients
# e.g. the map resets while somebody is still trying play
::SourceTVRecording <- false

# Is SourceTV enabled and not autorecording?
// SourceTV causes crashes on maps with moving observer cameras...
// they dont check for null pointers before recalculating camera postitions so this is not fixable via vscript
// because of this the autodemo feature is disabled until I figure out a fix for this
// affected maps: citadel (on collapse), odyssey (on arm movement), all competitive maps (the victory screen camera moves), maybe more...
// todo: disable hibernation changes as they dont seem to affect anything anymore... (would this cause issues on windows?)
::SourceTVManualAutoRecord <- false // PVEIsOnDedicatedServer && Convars.GetBool("tv_enable") && !Convars.GetBool("tv_autorecord") && Convars.GetInt("tv_maxclients") == 0
if (SourceTVRecording && PVEIsOnDedicatedServer) {
	::TVLastLeftTime <- 0

	# allow hibernation after map load
	RunCommand("tf_allow_server_hibernation 1")

	# wait for this long until hibernation(seconds)
	::__SERVER_HIBERNATE_WAIT_TIME__ <- 60

	RegisterEvent("player_spawn", function(params){
		if (params.team == 0) return
		# prevent hibernation once players join
		if (Convars.GetInt("tf_allow_server_hibernation") != 0) {
			RunCommand("tf_allow_server_hibernation 0")
			if (SourceTVManualAutoRecord) {
				local time = {}
				LocalTime(time)
				local mapname = GetMapName()
				# workshop maps begin with "workshop/" so split at "/"
				if (split(mapname, "/", true)[0] == "workshop") mapname = "workshop_" + split(mapname, "/", true)[1]
				local displayname = ""
				foreach (part in split(mapname, ".", true)) displayname += "-" + part
				::PVETimestampTick <- NetProps.GetPropInt(Entities.FindByClassname(null, "soundent"), "m_nSimulationTick")
				RunCommand(format("tv_record demos/auto-%04d%02d%02u-%02d%02d%02d%s.dem", time.year, time.month, time.day, time.hour, time.minute, time.second, displayname))
			}
		}
	})
	RegisterEvent("player_connect", function(params) {
		# do not try to re-enable hibernation while somebody is playing
		if (TVLastLeftTime != 0) {
			::TVLastLeftTime <- 0
		}
	})
	RegisterEvent("player_disconnect", function(params) {
		RunNextStep(function(){
			if (GetHumanCount() == 0 && TVLastLeftTime == 0) {
				::TVLastLeftTime <- Time()
			}
		})
	})
	# re-enable hibernation once everybody has been gone for a while
	RegisterEvent("Update", function(params){
		if (TVLastLeftTime != 0 && TVLastLeftTime + __SERVER_HIBERNATE_WAIT_TIME__ < Time()) {
			::TVLastLeftTime <- 0
			RunCommandDelayed("tf_allow_server_hibernation 1")
			if (SourceTVManualAutoRecord) {
				RunCommand("tv_stoprecord")
			}
			#RunCommand("mp_restartgame_immediate 1")
			#if ("Setup" in CollectedFunctionTable) CollectedFunctionTable.Setup({}) # this breaks mvm maps using the current system
		}
	})
}

RegisterCommand("!bsb", function(player, args) {
	try {
		ForeachBot(function(b){b.SetBehaviorFlag(args[1].tointeger())})
	} catch (e) {
		ClientPrint(player, 3, e.tostring())
	}
}, " [TFBOT_BEHAVIOR] - set bot behavior flags (once) (all bots)")
RegisterCommand("!bcb", function(player, args) {
	try {
		ForeachBot(function(b){b.ClearBehaviorFlag(args[1].tointeger())})
	} catch (e) {
		ClientPrint(player, 3, e.tostring())
	}
}, " [TFBOT_BEHAVIOR] - clear bot behavior flags (once) (all bots)")
RegisterCommand("!bsm", function(player, args) {
	try {
		ForeachBot(function(b){UTILBotSetMissionSafe(b, args[1].tointeger(), true)})
	} catch (e) {
		ClientPrint(player, 3, e.tostring())
	}
}, " [ETFBotMissionType] - set bot mission (once) (all bots)\n[NONE;SEEK_AND_DESTROY;DESTROY_SENTRIES;SNIPER;SPY;ENGINEER;REPROGRAMMED]")

RegisterCommand("!dbgfm", function(player, args) {
	try {
		ForeachBot(function(b){UTILBotSetMissionSafe(b, args[1].tointeger(), true)})
		::FixMePVEForceMissionType <- args[1].tointeger()
	} catch (e) {
		ClientPrint(player, 3, e.tostring())
	}
}, " [ETFBotMissionType] - set bot mission (permanent) (all bots)")

# stealth team swap (this is way too dumb)
# this does not update some network variables so it breaks :(
# just use "pve join" (this here idea may be replaced with something dumber in the future)
if (false) {
	RegisterEvent("player_changeclass", function(params) {
		local p = GetPlayerFromUserID(params.userid)
        local id = NetProps.GetPropString(user, "m_szNetworkIDString")
		local allowed = false
		foreach (validid in SteamIDWhitelist) {
			if ( id == validid) allowed = true
		}
		if (!allowed) return
		#if (!p || !p.IsValid() || p.IsFakeClient() || !PVERunning) return
		#if (params["class"] != 8) return # spy only
		RunDelayedForPlayer(p, function() {
			RunDelayedForPlayer(p, function() {
				RunDelayedForPlayer(p, function() {
					local buttons = NetProps.GetPropInt(p, "m_nButtons");
					/* move left forwards and right*/
					if (buttons == 1544) {
						p.ForceChangeTeam(PVEBotTeam, true)
						p.ForceRegenerateAndRespawn()
					}
				})
			})
		})
	})
}

# todo: make preset specific? (or just remove again)
# probably do the latter if you are still unsure, it has been over a month now
# + equipping a new grappling hook every resupply might have a negative impact on edict counts or the refund system
::PVEGiveGrapple <- false
if (PVEGiveGrapple) RegisterEvent("post_inventory_application", function(params) {
	if (!PVEGiveGrapple) return;
	Convars.SetValue("tf_grapplinghook_enable", true)
	local p = GetPlayerFromUserID(params.userid)
	if (!p || !p.IsValid()) return
	if (p.IsFakeClient()) {
		// remove existing weapon in same slot
		for (local i = 0; i < MAX_WEAPONS; i++)
		{
			local heldWeapon = NetProps.GetPropEntityArray(p, "m_hMyWeapons", i)
			if (heldWeapon == null)
				continue
			if (heldWeapon.GetSlot() != 5)
				continue
			heldWeapon.Destroy()
			NetProps.SetPropEntityArray(p, "m_hMyWeapons", null, i)
			break
		}
	} else if (!Convars.GetBool("tf_grapplinghook_enable")) {
		GivePlayerWeaponByID(p, 1152)
	}
})

RegisterEvent("teamplay_round_start", function(params) {
	local old_atk = TEAM_ATTACK
	local old_def = TEAM_DEFEND
	local old_bots = PVEBotTeam
	local old_humans = PVEHumanTeam
	local atk = 0
	local def = 0
	#local botteam = null
	for (local team = null; team = Entities.FindByClassname(team, "tf_team");) {
		local role = NetProps.GetPropInt(team, "m_iRole")
		switch (role) {
			case 0: break; # TEAM_ROLE_NONE
			case 1: def = NetProps.GetPropInt(team, "m_iTeamNum"); break; # TEAM_ROLE_DEFENDERS
			case 2: atk = NetProps.GetPropInt(team, "m_iTeamNum"); break; # TEAM_ROLE_ATTACKERS
			default: break; # NUM_TEAM_ROLES
		}
		#if (team.GetTeam() == PVEBotTeam) botteam = team;
	}
	if (PVESupportPlTeamSwaps && def != 0 && atk != 0) {
		::TEAM_ATTACK <- atk
		::TEAM_DEFEND <- def
	} else if (PVESupportPlTeamSwaps && def != 0) {
		::TEAM_ATTACK <- def == 3 ? 2 : 3
		::TEAM_DEFEND <- def
	} else if (PVESupportPlTeamSwaps && atk != 0) {
		::TEAM_ATTACK <- atk
		::TEAM_DEFEND <- atk == 2 ? 3 : 2
	} else {
		::TEAM_ATTACK <- TEAM_BLU
		::TEAM_DEFEND <- TEAM_RED
		#NetProps.SetPropInt(botteam, "m_iRole", 1)
	}
	if (PVESupportPlTeamSwaps && (old_atk != TEAM_ATTACK || old_def != TEAM_DEFEND)) {
		# humans and bots should always be attack or defend, otherwise we have
		# a serious issue
		if (old_bots == old_atk) ::PVEBotTeam <- TEAM_ATTACK
		if (old_bots == old_def) ::PVEBotTeam <- TEAM_DEFEND
		if (old_humans == old_atk) ::PVEHumanTeam <- TEAM_ATTACK
		if (old_humans == old_def) ::PVEHumanTeam <- TEAM_DEFEND
		MoveTeamAll()
	}
	// assign roles for all maps
	for (local team = null; team = Entities.FindByClassname(team, "tf_team");) {
		if (NetProps.GetPropInt(team, "m_iTeamNum") == TEAM_DEFEND) NetProps.SetPropInt(team, "m_iRole", 1)
		if (NetProps.GetPropInt(team, "m_iTeamNum") == TEAM_ATTACK) NetProps.SetPropInt(team, "m_iRole", 2)
	}
})

if (true) {
	# UNCLETOPIA CTF CHANGES
	::PVEShouldUncletopiaCTFChangesBeEnabled <- function() {
		# TF_GAMETYPE_CTF
		local is_ctf = NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") == 1
		if (!is_ctf) return
		local enable = "uncletopia_ctf" in PVECurrentClass && PVECurrentClass.uncletopia_ctf
		if (PVEUncletopiaCTFChanges != null) return PVEUncletopiaCTFChanges
		return enable
	}
	::PVEIntelHandle <- null
	::PVELastTimeCaptured <- 0
	RegisterEvent("teamplay_round_start", function(params) {
		RunNextStep(function(){
			for (local e; e = Entities.FindByClassname(e, "item_teamflag");) {
				if (e.GetTeam() == PVEBotTeam) {
					::PVEIntelHandle <- e
				}
			}
		})
	})
	::PVEUncletopiaCTFBuffTime <- 20
	::PVEUncletopiaCTFBuffTimeIncrease <- 5
	RegisterEvent("Update", function(params) {
		if (!PVERunning || !PVEIntelHandle || !PVEIntelHandle.IsValid() || !PVEShouldUncletopiaCTFChangesBeEnabled()) return
		if (PVELastTimeCaptured + PVEUncletopiaCTFBuffTime > Time()) { # flag has been stolen in the last 20 seconds
			ForeachBot(function(b){
				b.AddCondEx(5, 0.25, b) # TF_COND_INVULNERABLE
				b.AddCondEx(11, 0.25, b) # TF_COND_CRITBOOSTED
				b.AddCondEx(32, 0.25, b) # Speed boost
			})
		} else if (NetProps.GetPropInt(PVEIntelHandle, "m_nFlagStatus") == 1) {
			# TF_FLAGINFO_STOLEN
			ForeachBot(function(b){ b.AddCondEx(11, 0.25, b) }) # TF_COND_CRITBOOSTED
		}
	})
	RegisterEvent("teamplay_flag_event", function(params) {
		if (!PVERunning || !PVEIntelHandle || !PVEIntelHandle.IsValid() || !PVEShouldUncletopiaCTFChangesBeEnabled()) return
		if (params.team != PVEBotTeam) return
		switch (params.eventtype) {
			case 2: # TF_FLAGEVENT_CAPTURE
				ForeachBot(function(b){
					b.AddCondEx(5, PVEUncletopiaCTFBuffTime, b) # TF_COND_INVULNERABLE
					b.AddCondEx(11, PVEUncletopiaCTFBuffTime, b) # TF_COND_CRITBOOSTED
					b.AddCondEx(32, PVEUncletopiaCTFBuffTime, b) # Speed boost
					::PVELastTimeCaptured <- Time()
				})
			case 5: # TF_FLAGEVENT_RETURNED
				EntFireByHandle(PVEIntelHandle, "ForceResetAndDisableSilent", "", 0, null, null)
				EntFireByHandle(PVEIntelHandle, "Enable", "", 1.5, null, null)
				break;
			case 4: # TF_FLAGEVENT_DROPPED
				EntFireByHandle(PVEIntelHandle, "ForceReset", "", 0, null, null)
				break;
			case 1: # TF_FLAGEVENT_PICKUP
			case 3: # TF_FLAGEVENT_DEFEND
			default: # IDK
				break;
		}
	})

	# UNCLETOPIA SPY CAPBLOCK
	::LastCapTime <- 0
	::BlockedSpies <- []
	::PVEGetSpyCapblock <- function() {
		local is_cp = PVEWasCp && (!IsInKothMode()) && (!PVEMedievalEnabledByDefault)
		local enable = ("uncletopia_capblock" in PVECurrentClass) && is_cp
		if (PVEUncletopiaSpyCapblock != null) return PVEUncletopiaSpyCapblock
		return enable ? PVECurrentClass.uncletopia_capblock : 0
	}
	RegisterEvent("teamplay_round_start", function(params) {
		BlockedSpies.clear()
	})
	RegisterEvent("Update", function(params) {
		local capblock_time = PVEGetSpyCapblock()
		if (!PVERunning || capblock_time == 0) return
		if (LastCapTime != 0) {
			ForeachHuman(function(p) {
				if (p.GetPlayerClass() == 8)
					ClientPrint(p, 4, format("Capturing points is not allowed for Spies for the next %d seconds", LastCapTime + capblock_time - Time()))
			})
			#ClientPrint(null, 4, format("Capturing points is not allowed for Spies for the next %d seconds", LastCapTime + capblock_time - Time()))
			if (LastCapTime + capblock_time < Time()) {
				ForeachHuman(function(p) {
					if (p.GetPlayerClass() == 8)
						ClientPrint(p, 4, "")
				})
				foreach (p in BlockedSpies) {
					p.RemoveCustomAttribute("increase player capture value")
				}
				::LastCapTime <- 0
				return
			}
			foreach (p in BlockedSpies) {
				p.AddCustomAttribute("increase player capture value", -1, 1)
				#ClientPrint(p, 4, format("Capturing points is not allowed for Spies for the next %d seconds", LastCapTime + capblock_time - Time()))
			}
		}
	})
	RegisterEvent("controlpoint_starttouch", function(params) {
		local p = PlayerInstanceFromIndex(params.player)
		if (!p || !p.IsValid() || p.GetPlayerClass() != 8) return
		if (BlockedSpies.find(p) == null) {
			BlockedSpies.append(p)
		}
	})
	RegisterEvent("controlpoint_endtouch", function(params) {
		local p = PlayerInstanceFromIndex(params.player)
		if (!p || !p.IsValid()) return
		local i = BlockedSpies.find(p)
		if (i != null) {
			BlockedSpies.remove(i)
			ClientPrint(p, 4, "")
			# p.RemoveCustomAttribute("increase player capture value") // this should not be required
		}
	})
	RegisterEvent("teamplay_point_captured", function(params) {
		if (params.team == PVEHumanTeam) ::LastCapTime <- Time()
	})
}

# revive tests
if (true) {
	RegisterCommand("!revive", function(player, args) {
		::PVEAllowPlayerRevive <- !PVEAllowPlayerRevive
		ClientPrint(player, 3, format("::PVEAllowPlayerRevive <- %s", PVEAllowPlayerRevive.tostring()))
	})
	::PVEAllowPlayerRevive <- false
	RegisterEvent("player_spawn", function(params) {
		if (!PVEAllowPlayerRevive) return;
		local player = GetPlayerFromUserID(params.userid)
		for (local e; e = Entities.FindByClassname(e, "entity_revive_marker");) {
			#print(e)
			#print(e.GetOwner())
			#printl(NetProps.GetPropEntity(player, "m_hOwner"))
			if (e.GetOwner() == player) e.Kill()
		}
		NetProps.SetPropEntity(player, "m_hReviveMarker", null)
	})
	RegisterEvent("player_death", function(params) {
		if (!PVEAllowPlayerRevive) return;
		# ignore dead ringer feign
		if (("death_flags" in params && ((params.death_flags & 32) != 0))) return;
		local player = GetPlayerFromUserID(params.userid)
		# do not apply to bots
		if (!player || !player.IsValid() ||player.IsFakeClient()) return;
		# create marker
		local marker = Entities.CreateByClassname("entity_revive_marker")
		NetProps.SetPropEntity(marker, "m_hOwner", player)
		marker.SetOwner(player)
		marker.SetAbsAngles(player.GetAbsAngles())
		marker.SetAbsOrigin(player.GetOrigin() + Vector(0, 0, 50))
		marker.DispatchSpawn()
		NetProps.SetPropEntity(marker, "m_hOwner", player)
		marker.SetOwner(player)
		marker.SetTeam(player.GetTeam())
		marker.SetBodygroup(1, player.GetPlayerClass() - 1)
		NetProps.SetPropEntity(player, "m_hReviveMarker", marker)
		# TEMP: update again (does not fix some (a lot of) issues with parenting)
		RunDelayedForPlayer(player, function(){
			NetProps.SetPropEntity(marker, "m_hOwner", player)
			marker.SetOwner(player)
			marker.SetTeam(player.GetTeam())
			marker.SetBodygroup(1, player.GetPlayerClass() - 1)
			NetProps.SetPropEntity(player, "m_hReviveMarker", marker)
		})
	})
}

RegisterCommand("!start", function(player, args) {
	for (local e = null; e = Entities.FindByClassname(e, "team_round_timer"); ) {
		if (NetProps.GetPropInt(e, "m_nState") == 0) # timer in setup
			EntFireByHandle(e, "SetTime", "1", 0, e, e)
	}
	if (PVEFakeSetupTimeStart != 0) {
		::PVEFakeSetupTimeStart <- 1
	}
}, " - skips setup time")

# CollectEventSetup() # this is no longer required using the newest event system

RegisterCommand("!dbgw1", function(player, args) {
	GivePlayerWeapon(player, "tf_weapon_rocketlauncher", 18)
	RunDelayedForPlayer(player, function(){
		#WeaponSlotAddAttribute(player, 0, "clip size bonus", 9999)
		WeaponSlotAddAttribute(player, 0, "maxammo primary increased", 9999)
		WeaponSlotAddAttribute(player, 0, "damage bonus", 9999)
		WeaponSlotAddAttribute(player, 0, "max health additive penalty", 9999999)
		WeaponSlotAddAttribute(player, 0, "health drain", 9999999)
		WeaponSlotAddAttribute(player, 0, "restore health on kill", 9999999)
		WeaponSlotAddAttribute(player, 0, "ammo regen", 100)
		WeaponSlotAddAttribute(player, 0, "fire rate penalty", 0.25)
		WeaponSlotAddAttribute(player, 0, "Reload time decreased", 0.01)
		WeaponSlotAddAttribute(player, 0, "critboost on kill", 5)
	})
}, " - give debug weapon 1")
RegisterCommand("!dbgw2", function(player, args) {
	GivePlayerWeapon(player, "tf_weapon_pipebomblauncher", 20)
	RunDelayedForPlayer(player, function(){
		WeaponSlotAddAttribute(player, 1, "maxammo secondary increased", 9999)
		WeaponSlotAddAttribute(player, 1, "increase player capture value", 10)
		WeaponSlotAddAttribute(player, 1, "max pipebombs increased", 64)
		WeaponSlotAddAttribute(player, 1, "damage bonus", 9999)
		WeaponSlotAddAttribute(player, 1, "max health additive penalty", 9999999)
		WeaponSlotAddAttribute(player, 1, "health drain", 9999999)
		WeaponSlotAddAttribute(player, 1, "restore health on kill", 9999999)
		WeaponSlotAddAttribute(player, 1, "ammo regen", 100)
		WeaponSlotAddAttribute(player, 1, "fire rate penalty", 0.25)
		WeaponSlotAddAttribute(player, 1, "Reload time decreased", 0.01)
		WeaponSlotAddAttribute(player, 1, "critboost on kill", 5)
	})
}, " - give debug weapon 2")

::PVEInitialEquipForceDelayed <- false
RegisterEvent("teamplay_round_active", function(params) {
	# I dont know why but equipping with a delay while hooking this event
	# causes an endless loop
	// todo: the loop is in the event system but clean this up still
	if (PVEDisabled || IsInWaitingForPlayers()) return;
	if (PVEDebugPrint)
		printl("INITIAL EQUIP")
	local entbuffer = []
	for (local e; e = Entities.FindByClassname(e, "tf_we*");) {
		entbuffer.push(e)
	}
	foreach (cosmetic in entbuffer) {
		if (cosmetic && cosmetic.IsValid() && cosmetic.GetOwner() && cosmetic.GetOwner().IsPlayer() && cosmetic.GetOwner().IsFakeClient())
			cosmetic.Kill()
	}
	local regen = function(b){
		if (b && b.IsValid()){
			if (PVERemoveItemsUsingMedievalMode) {
				PVERespawnMedieval(b)
			} else {
				b.Regenerate(true)
			}
		}
	}
	// respawn bots after point ownership modification
	RunInNSeconds(1, function(){ # THIS CRASHES IF CALLED IN WAITINGFORPLAYERS!
		ForeachBot(function(b) {
			if (PVEInitialEquipForceDelayed) RunDelayed(function() {
				regen(b);
			}); else regen(b)
		})
	})
})

::CPMRequireReset <- false
::PVEAddRequiredHumanPointCapture <- function(point_to_add_to, point_to_add) {
	#printf("%s requires %s\n", point_to_add_to, point_to_add)
	function temp(params) {
		if (PVEDisabled) return;
		::CPMRequireReset <- true
		RunDelayed(function(){
			for (local e; e = Entities.FindByClassname(e, "team_control_point");) {
				if (e.GetName() == point_to_add_to) {
					e.KeyValueFromString("team_previouspoint_3_0", point_to_add)
					e.KeyValueFromString("team_previouspoint_3_1", "")
					e.KeyValueFromString("team_previouspoint_3_2", "")
				}
			}
		})
	}
	RegisterEvent("teamplay_round_start", temp)
	temp({})
}
::PVEClearRequiredHumanPointCapture <- function(point_to_add_to) {
	#printf("clearing %s\n", point_to_add_to)
	function temp(params) {
		if (PVEDisabled) return;
		::CPMRequireReset <- true
		RunDelayed(function(){
			for (local e; e = Entities.FindByClassname(e, "team_control_point");) {
				if (e.GetName() == point_to_add_to) {
					e.KeyValueFromString("team_previouspoint_3_0", point_to_add_to)
					e.KeyValueFromString("team_previouspoint_3_1", "")
					e.KeyValueFromString("team_previouspoint_3_2", "")
				}
			}
		})
	}
	RegisterEvent("teamplay_round_start", temp)
	temp({})
}
::PVELockPointForTeam <- function(point_to_lock, team_to_lock_for) {
	#printf("locking %s for %s", point_to_lock, ["NEUTRAL", "SPECTATOR", "RED", "BLU"][team_to_lock_for])
	local registered = false
	function temp(params) {
		if (PVEDisabled) return;
		::CPMRequireReset <- true
		RunDelayed(function(){
			for (local e; e = Entities.FindByClassname(e, "team_control_point");) {
				local pointname = e.GetName()
				#printl(pointname)
				if (e.GetName() == point_to_lock) {
					# lock for defending team
					e.KeyValueFromString("team_previouspoint_" + team_to_lock_for.tostring() + "_0", "")
					e.KeyValueFromString("team_previouspoint_" + team_to_lock_for.tostring() + "_1", "")
					e.KeyValueFromString("team_previouspoint_" + team_to_lock_for.tostring() + "_2", "")
					# set team to defending team
					e.KeyValueFromInt("point_default_owner", team_to_lock_for)
					e.DispatchSpawn()

					# fix visuals (this took way too much effort)
					RunInNSeconds(8, function(){
							# control point outputs
							foreach (output in ["OnRoundStartOwnedByTeam" "OnOwnerChangedToTeam" "OnCapTeam"]) {
								local o = output + (team_to_lock_for - 1).tostring()
								#print(EntityOutputs.HasOutput(e, o))
								local count = EntityOutputs.GetNumElements(e, o)
								#print(e)
								#print(o)
								#print(":")
								#printl(count)
								for (local i=0; i < count; i++) {
									local table = {}
									EntityOutputs.GetOutputTable(e, o, table, i)
									EntFire(table.target, table.input, table.parameter, table.delay, e)
									#printf("%s %s %s %d %s\n", table.target, table.input, table.parameter, table.delay, e.tostring())
								}
						}
						# capture area outputs
						for (local ent = null; ent = Entities.FindByClassname(ent, "trigger_capture_area");){
							local cap_point_name = NetProps.GetPropString(ent, "m_iszCapPointName")
							if (cap_point_name == pointname) {
								foreach (output in ["OnStartCap" "OnStartTeam" + (team_to_lock_for - 1).tostring() "OnEndCap" "OnCapTeam" + (team_to_lock_for - 1).tostring()]) {
									local o = output
									#print(EntityOutputs.HasOutput(ent, o))
									local count = EntityOutputs.GetNumElements(ent, o)
									#print(ent)
									#print(o)
									#print(":")
									#printl(count)
									for (local i=0; i < count; i++) {
										local table = {}
										EntityOutputs.GetOutputTable(ent, o, table, i)
										EntFire(table.target, table.input, table.parameter, table.delay, ent)
										#printf("%s %s %s %d %s\n", table.target, table.input, table.parameter, table.delay, ent.tostring())
									}
								}
							}
						}
					})
					#registered = true;
					break;
				}
			}
		})
	}
	RegisterEvent("teamplay_round_start", temp)
	temp({})
}
# todo: do not just re-round-spawn the cpm
# modify the netprops of the objective resource directly instead!
# m_iPreviousPoints!!!
RegisterEvent("teamplay_round_active", function(params) {
	RunDelayed(function(){
		if (CPMRequireReset) {
			EntFire("team_control_point_master", "RoundSpawn", "", 0, null)
		}
	})
})

::WaitingForPlayersHasWarned <- false
// band aid fix for maps getting stuck in waiting for players
RegisterEvent("player_spawn", function(params) {
	local p = GetPlayerFromUserID(params.userid)
	if (params.team == 0 || !p.IsAlive()) return;
	if (IsInWaitingForPlayers()) {
		RunInNSeconds(35, function(){
			if (GetHumanCount() > 0 && IsInWaitingForPlayers()) {
				if (!WaitingForPlayersHasWarned) {
					printl("WaitingForPlayers should have ended by now, changing maps in a bit if the problem persists.")
					ClientPrint(null, 3, "Waiting for players for longer than expected, this should not happen.")
					ClientPrint(null, 3, "The server will change maps soon.")
					::WaitingForPlayersHasWarned <- true
				}
				RunInNSeconds(30, function(){
					if (GetHumanCount() > 0 && IsInWaitingForPlayers()) {
						RunCommand("randommap")
					}
				})
			}
		})
	}
})

# TEMP
::ApplyBase1kuPreset <- function(_ignore1=null,_ignore2=null) {
	::PresetAppliedBase1ku <- true # do not toggle twice
	#::GivePlayerWeaponRecycle <- true # still too unstable
	::PVERemoveItemsUsingMedievalMode <- true # newest spawncamp item equip stuff
	::PVEAllowUpgradeHealthTrickery <- false # do not allow to heal sentry using upgrades
	::PVEForceMedieval <- null # TEMP: LET MEDIEVAL MODE BE ACTIVE IF THE MAP EXPECTS IT
	::PVEAddBotsSilent <- true // prevent join messages flooding the chat
	Convars.SetValue("tf_medieval_autorp", false)

	# class specific debuffs
	RegisterEvent("post_inventory_application", function(params){
		if (PVEDisabled) return;
		RunNextStep(function(){
			local player = GetPlayerFromUserID(params.userid);
			if (!player || player.IsFakeClient()) return;
			for (local i = 0; i < MAX_WEAPONS; i++) {
				local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
				if (heldWeapon == null || !heldWeapon.IsValid())
					continue
				if (player.GetPlayerClass() == 8 && (heldWeapon.GetClassname() == "tf_weapon_sapper" || heldWeapon.GetClassname() == "tf_weapon_builder")){
					heldWeapon.AddAttribute("sapper health penalty", 0.01, -1) # allow bots to one shot sappers
				}
			}

			# todo: half shield duration
			if (false && player.GetPlayerClass() == 5 && Mv1kUChangesEnabled) {
				player.AddCustomAttribute("increase buff duration", 0.6, -1) # default is 1.2 for medic shield
			}
		})
	})

	RegisterEvent("teamplay_round_start", function(params) {
		# IDEA: let bots always have crits in medieval mode (does not work)
		if (false && PVEMedievalEnabledByDefault) {
			#PVEClassOptions.dane_extra.mission <- 3
			PVEClassOptions.dane_extra.bot_attributes <-
				Constants.FTFBotAttributeType.ALWAYS_CRIT +
				Constants.FTFBotAttributeType.AGGRESSIVE
			PVEClassOptions.dane_extra.player_weapon_attributes <- [
				{ slot = 0 attributes = [{ name = "crit mod disabled" value = 0} ]}
				{ slot = 1 attributes = [{ name = "crit mod disabled" value = 0} ]}
				{ slot = 2 attributes = [{ name = "crit mod disabled" value = 0} ]}
				{ slot = 3 attributes = [{ name = "crit mod disabled" value = 0} ]}
				{ slot = 4 attributes = [{ name = "crit mod disabled" value = 0} ]}
				{ slot = 5 attributes = [{ name = "crit mod disabled" value = 0} ]}
				{ slot = 6 attributes = [{ name = "crit mod disabled" value = 0} ]}
				{ slot = 7 attributes = [{ name = "crit mod disabled" value = 0} ]}
			]
		}
	})

	# ::ENTKILL_RAGDOLLCOUNT <- -1 # temp: allow all ragdolls
	::PVEDisableBotCrits <- false
	#::PVEAllowDelayedEquip <- false
	if (!PVEDisabled || _ignore1 != null) {
		::PVEDisabled <- false
		PVESetClassDefault(Mv1kUChangesEnabled ? "dane_extra" : "dane")
		RemoveBots()
		AddThinkToEnt(Entities.FindByClassname(null, "tf_player_manager"), "PVEMainLoop")
		Convars.SetValue("mp_humans_must_join_team", TEAM_NAMES[PVEHumanTeam])
	}

	::SteamIDInfoEnabled <- true
	::PVEInformAboutUpgradesAtCabinets <- false
	if (Convars.GetBool("sv_vote_issue_changelevel_allowed") && Convars.GetBool("sv_vote_issue_nextlevel_allowed"))
		SteamIDInfoMessage.push("\x07FFFFFFUse the vote menu (where you can kick people) to select the next map.")

	# changes for experts (1kU speedrunners)
	::PVEQuickbuildWhileSetup <- false
	::PVECurrencyOnSpawn <- 800
	::PVECurrencyOnKill <- 4 # 5 # 15
	::PVECurrencyOnDestruction <- 2 # 3
	::PVECurrencyOnAssist <- 1 # 5
	::PVECurrencyOnDeath <- 0 # 50
	::PVECurrencyOnPayload <- 1 # 3
	::ENTITIES_NETPROPNEQ <- []
	ENTITY_TYPES.extend(["tf_dropped_weapon" "tf_ammo_pack" /* "instanced_scripted_scene" "tf_ragdoll" */])

	# CUSTOM UPGRADE FILES NEED TO BE SYNCED TO THE CLIENTS, OTHERWISE THEY DON'T WORK!!!
	// this causes an empty upgrade menu in some cases, so leave it disabled for now
	# WORKSHOP MAPS BREAK UPGRADES
	if (true /*&& !startswith(GetMapName(), "workshop")*/) {
		if (NetProps.GetPropString(Entities.FindByClassname(null, "tf_gamerules"), "m_pszCustomUpgradesFile") == "")
			EntFire("tf_gamerules", "SetCustomUpgradesFile", "scripts/items/1ku_upgrades_006.txt", 0, null)
	}

	/* # THIS MESSES WITH IsAttackDefenseMode
	RegisterEvent("teamplay_round_start", function(params) {
		if (PVEDisabled) return;
		for (local e; e=Entities.FindByClassname(e, "team_control_point_master");) {
			NetProps.SetPropBool(e, "m_bSwitchTeamsOnWin", false)
		}
		#if (IsInKothMode())
		#	EntFire("team_round_timer", "SetTime", "10", 1, null)
	})
	*/

	# buff for every point capped
	::PVEPointCapBuffTime <- 25
	RegisterEvent("teamplay_point_captured", function(params) {
		if (PVEDebugPrint)
			printf("[PVECurrencyDebug] %i on point capture\n", PVECurrencyOnSpawn)
		if (PVEDisabled || IsInKothMode()) return;
		if (!PVEScrambled && Mv1kUChangesEnabled) ForeachBot(function(b){
			b.AddCondEx(5, PVEPointCapBuffTime, b) # TF_COND_INVULNERABLE
			b.AddCondEx(11, PVEPointCapBuffTime, b) # TF_COND_CRITBOOSTED
			b.AddCondEx(32, PVEPointCapBuffTime, b) # speed boost
		})
		if (PVEClassOptions.dane_extra.maxhealth < 650) // stitched together solution for now (TODO: cleanup)
			PVEClassOptions.dane_extra.maxhealth += 25 # health increase

		# TF_GAMETYPE_ESCORT
		if (Mv1kUChangesEnabled && NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") != 3)
			PVEGiveCurrency(375, null) # todo: balance extra currency

		/*
		# TEMP; DO NOT PUT ON SERVER
		# very dumb balance concept to prevent the bots being overran
		// also breaks because of RunInNSteps
		RunInNSteps(10, function(){
			if (GetRoundState() == 4) { # only do something in normal gameplay
				ProcessCommand(GetPreferrablyABotButOtherwiseAnyPlayerByHandle(), "!bomb", ["!bomb"])
				if (!IsInKothMode()) ForeachBot(function(b){b.RemoveAllObjects(false)}) # the point moves, do not maintain sentry
			}
		})
		*/
	})
	RegisterEvent("teamplay_flag_event", function(params) {
		if (params.eventtype != 2 /*TF_FLAGEVENT_CAPTURE*/) return
		if (PVEDebugPrint)
			printf("[PVECurrencyDebug] %i on flag capture\n", PVECurrencyOnSpawn)
		if (PVEDisabled) return;
		if (PVEClassOptions.dane_extra.maxhealth < 650) // stitched together solution for now (TODO: cleanup)
			PVEClassOptions.dane_extra.maxhealth += 25 # health increase
		PVEGiveCurrency(375, null) # todo: balance extra currency
	})

	RegisterEvent("player_builtobject", function(params) {
		if (PVEDisabled) return;
		local e = EntIndexToHScript(params.index)
		local owner = NetProps.GetPropEntity(e, "m_hBuilder")
		if (PVEScrambled ? owner.IsFakeClient() : e.GetTeam() == PVEBotTeam){
			if (Mv1kUChangesEnabled) // fastbuild
				NetProps.SetPropInt(e, "m_iHighestUpgradeLevel", 3)
			// no teleporters for bots
			if (e.GetClassname() == "obj_teleporter" && (!PVEUpgradeMobsterFix && !PVEScrambled && (!owner || !owner.IsValid() || !owner.IsPlayer() || owner.IsFakeClient()))) {
				e.Kill()
			} else {
				// NetProps.SetPropInt(e, "m_iAmmoMetal", 400) // this does no longer work
				for (local next, current = e.FirstMoveChild(); current != null; current = next){
					// Store the next handle
					next = current.NextMovePeer()
					if (current.GetClassname() == "vgui_screen") {
						NetProps.SetPropBool(current, "m_bForcePurgeFixedupStrings", true)
						current.Kill()
					}
				}
			}
		}
	})

	/* ENTITY COUNT FIX FOR MAP RESTARTS */
	RegisterEvent("post_inventory_application", function(params) {
		if (PVEDisabled) return;
		# clear any leftovers not caught by medieval equip
		foreach (classname in ["tf_weapon_pda_engineer_*" "tf_weapon_pistol" "tf_weapon_spellbook"]) for (local e; e = Entities.FindByClassname(e, classname);) {
			local owner = e.GetOwner()
			if (!owner || !owner.IsValid() || !owner.IsPlayer() || owner.IsFakeClient()) {
				e.Kill()
			}
		}
	})
	RegisterEvent("teamplay_round_win", function(params) {
		if (Mv1kUChangesEnabled) ::PVEUncletopiaCTFBuffTime <- PVEUncletopiaCTFBuffTimeIncrease + 10
	})
	/*
	// this has been superceded by the MapReset event handler
	// but A-Posing bots are funny so it will only stay commented out for now
	RegisterEvent("teamplay_round_win", function(params) {
		if (PVEDisabled) return;
		local cosmeticbuffer = []
		for (local e; e = Entities.FindByClassname(e, "tf_we*");) {
			cosmeticbuffer.push(e)
		}
		foreach (cosmetic in cosmeticbuffer) {
			#printl(cosmetic)
			#printl(cosmetic.GetOwner())
			if (cosmetic && cosmetic.IsValid() && cosmetic.GetOwner() && cosmetic.GetOwner().IsPlayer() && cosmetic.GetOwner().IsFakeClient())
				cosmetic.Kill()
		}
	})
	*/

	# bad patch but sometimes the bots do not want to cooperate
	# -> force all bots to respawn on the next point immediately once one point
	# is captured (this fixes pathing issues + backcapping)
	if (!IsInKothMode() && !PVEMedievalEnabledByDefault && !IsAttackDefenseMode() && PVEWasCp) { # TF_GAMETYPE_CP
		::PVENextPointCapForceLinear <- true
		::PVEBlockNextPointCapDelay <- 0
		# PVEClassOptions.dane_extra.bot_attributes <- Constants.FTFBotAttributeType.PRIORITIZE_DEFENSE
	}
	# TEMP, maybe enable soon?
	# more money on non pl maps
	if (false && NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") != 3) {
		::PVECurrencyFactor <- 2
	}

	# todo: find a balance before activating this
	if (false) {
		# toggle bot scramble based on a min player count
		::PVEScrambleTeamsThreshhold <- 66 # 20 # very high for now, do not enable accidentally
		RegisterEvent("player_connect", function(params) {
			RunNextStep(function(){
				if (GetHumanCount() >= PVEScrambleTeamsThreshhold)
					Convars.SetValue("mp_scrambleteams_auto", 1)
			})
		})
		RegisterEvent("player_disconnect", function(params) {
			RunNextStep(function(){
				if (GetHumanCount() < PVEScrambleTeamsThreshhold)
					Convars.SetValue("mp_scrambleteams_auto", 0)
			})
		})
	}
	RunCommand("mp_maxrounds 0")
	::PVEGoToRandomMapOnGameOver <- false
	#::PVEClearBotItemsOnRoundEnd <- true

	RunDelayed(function(){
		#::PVEDoNotAggroOnHealthbar <- true
		::PVEDoNotAggroOnHealthbarFlags <- 512 # only ignore sentries in mv1ku
		RunCommand("mp_maxrounds 0")
		::PVEGoToRandomMapOnGameOver <- false
		#::PVEClearBotItemsOnRoundEnd <- true
	})

	::PVEPointCaptureTimeOverwrite <- 15 # should be enough for now, 30 otherwise
	::PVEModifyCaptureTimes <- true
	RegisterEvent("teamplay_round_start", function(params) {
		if (PVEDisabled || !PVEModifyCaptureTimes) return;
		# Game mode specific changes to increase difficulty
		EntFire("team_train_watcher", "SetTrainRecedeTimeAndUpdate", "10", 10, null)

		# this is from the tf2 wiki
		// Must set this when the map resets only, otherwise the scaling compounds between rounds
		// If this is set elsewhere, it may not work as the m_flCapTime gets reset.
		if (params.full_reset && PVEWasCp && !IsInKothMode() && PVEPointCaptureTimeOverwrite > 0)
		{
			for (local ent = null; ent = Entities.FindByClassname(ent, "trigger_capture_area");)
			{
				local cap_point_name = NetProps.GetPropString(ent, "m_iszCapPointName")
				NetProps.SetPropFloat(ent, "m_flCapTime", PVEPointCaptureTimeOverwrite)
				// If we do not fire this event, then cap time total does not propagate to the client
				// and the UI will be buggy and show the control point capping quicker then it should
				// and then "popping" back after the server updates the client.
				ent.AcceptInput("SetControlPoint", cap_point_name, null, null)
			}
		}
		# \ https://developer.valvesoftware.com/wiki/Team_Fortress_2/Scripting/VScript_Examples#Change_how_long_it_takes_to_capture_a_control_point
	})
	::PVEAreaCache <- []
	::PVEAreaCacheCenter <- null
	::PVEAreaCacheRadius <- null
	::PVEAreaFnCalledOnce <- false
	# cache last result (for slightly better performance?)
	::PVEGetAreasInRadiusCached <- function(center, radius) {
		if (center == null) return;
		if (!PVEAreaFnCalledOnce) {
			::PVEAreaFnCalledOnce <- true
			Convars.SetValue("tf_bot_engineer_max_sentry_travel_distance_to_point", 15000)
		}
		if (center == PVEAreaCacheCenter && radius == PVEAreaCacheRadius)
			return PVEAreaCache
		::PVEAreaCacheCenter <- center
		::PVEAreaCacheRadius <- radius
		local areas = {}
		NavMesh.GetNavAreasInRadius(center, radius, areas)
		PVEAreaCache.clear()
		foreach (k, v in areas)
			PVEAreaCache.push(v)
		return PVEAreaCache
	}
	::PVEGetRandomAreaInRadius <- function(center, radius) {
		local area = SelectWeighted(PVEGetAreasInRadiusCached(center, radius))
		if (DbgPointDisp)
			DebugDrawCircle(area.GetCenter(), Vector(0, 255, 0), 1, 16, true, 15)
		return area
	}
	::PVEAssignHomesToBotsInArea <- function(center, radius) {
		if (DbgPointDisp)
			DebugDrawCircle(center, Vector(0, 255, 0), 1, radius, true, 20)
		local areaarray = PVEGetAreasInRadiusCached(center, radius)
		ForeachBot(function(b) {
			local area = SelectWeighted(areaarray)
			if (DbgPointDisp)
				DebugDrawCircle(area.GetCenter(), Vector(0, 255, 255), 1, 16, true, 15)
			b.SetHomeArea(area)
		})
	}
	::PVEResetHomes <- function() {
		# reset the sentry check so the bots work as usual again
		Convars.SetValue("tf_bot_engineer_max_sentry_travel_distance_to_point", 2500)
		::PVEAreaFnCalledOnce <- false

		# actually reset the bots' home areas
		ForeachBot(function(b) {
			b.SetHomeArea(null)
		})
	}
	# give the clean up system time to break everything
	RegisterEvent("teamplay_round_start", function(params) {
		# fix "func_areaportalwindow"s closing after round restarts
		EntFire("func_areaportalwindow", "SetFadeStartDistance", "10000", 6, null)
		EntFire("func_areaportalwindow", "SetFadeEndDistance", "10000", 6, null)
		EntFire("func_areaportal", "Open", "", 6, null)
	})
	RunDelayed(function(){
		switch (GetMapName()) {
			# TODO: this needs serious improvements
			case "cp_hadal":
				PVEAddRequiredHumanPointCapture("cp_E", "cp_C")
				RegisterEvent("teamplay_round_start", function(params) {
					::ISVSH <- false
					EntFire("elevator", "kill", "", 6, null)
					::PVEForceBotSpawnLocation <- null
					::PVEPointCapCount <- 0
					RunDelayed(function(){
						PVEResetHomes()
						ForeachBot(function(b) { UTILRespawn(b)  })
					})
				})
				RegisterEvent("teamplay_setup_finished", function(params) {
					ForeachBot(function(b) { UTILRespawn(b) })
					RunNextStep(function(){
						ForeachBot(function(b) { b.SetAbsOrigin(Vector(-1700, -600, 400)) })
					})
				})
				::PVEPointCapCount <- 0
				RegisterEvent("teamplay_point_captured", function(params) {
					::PVEPointCapCount <- PVEPointCapCount + 1
					switch (PVEPointCapCount) {
						case 1:
							::PVEForceBotSpawnLocation <- Vector(150, -330, 480);
							break;
						case 2:
							::ISVSH <- true
							::PVEPointCenter <- Vector(-800, 1600, 500)
							ForeachBot(function(b){
								b.RemoveAllObjects(true)
							})
							::PVEForceBotSpawnLocation <- Vector(-577, 500, 577);
							break;
						case 3:
							::PVEPointCenter <- Vector(350, 500, 500)
							::PVEForceBotSpawnLocation <- [Vector(-577, 500, 577) Vector(0, 0, 577)];
							break;
					}
				})
				break;
			case "cp_steel":
				PVEAddRequiredHumanPointCapture("final_cap_flag", "cap_d_flag")
				::DBGFirstCap <- true
				RegisterEvent("teamplay_round_start", function(params) {
					::PVEForceBotSpawnLocation <- null
					::DBGFirstCap <- true
				})
				RegisterEvent("teamplay_point_captured", function(params) {
					if (DBGFirstCap)
						::PVEForceBotSpawnLocation <- Vector(400,-1024,-125)
					else
						::PVEForceBotSpawnLocation <- null
					::DBGFirstCap <- false
				})
				break
			case "cp_egypt_final":
				// todo: add Uncletopia1kuAccurate patch for stage2
				// whatever that does exactly
				::PVERoundCount <- 0
				RegisterEvent("teamplay_round_start", function(params) {
					if (params.full_reset)
						::PVERoundCount <- 0
					else
						::PVERoundCount <- PVERoundCount + 1
				})
				RegisterEvent("teamplay_setup_finished", function(params) {
					switch (PVERoundCount) {
						case 2:
							RunDelayed(function() {
								ForeachBot(function(b) {
									UTILRespawn(b)
								})
							})
							RunDelayed(function() {
								ForeachBot(function(b) {
									b.SetAbsOrigin(Vector(0, 5555, 1000))
								})
							})
							break;
					}
				})
				break;
			case "cp_sulfur":
				# TODO: register all points in navmesh
				PVEAddRequiredHumanPointCapture("cp_main", "cp_3")
				RegisterEvent("teamplay_point_captured", function (params) {
					RunDelayed(function(){
						NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingKoth", false)
					})
					RunDelayed(function(){
						EntFire("team_round_timer", "SetMaxTime", "9999999", 1, null)
						EntFire("team_round_timer", "SetTime", "9999999", 1, null)
						EntFire("team_round_timer", "Pause", "", 1, null)
						EntFire("team_round_timer", "enable", "", 1, null)
					})
					for (local entity; entity = Entities.FindByClassname(entity, "team_control_point_master");) {
						entity.KeyValueFromInt("cpm_restrict_team_cap_win", 1)
					}
				})
				::PVEPointsCapped <- 0
				RegisterEvent("teamplay_round_start", function(params) {
					::ISVSH <- false
					RunDelayed(function(){
						PVEResetHomes()
						ForeachBot(function(b){UTILRespawn(b)})
					})
					::PVEPointsCapped <- 0
					::PVEForceBotSpawnLocation <- Vector(-600, -300, 70)
				})
				RegisterEvent("teamplay_point_captured", function(params) {
					::PVEPointsCapped <- PVEPointsCapped + 1
					switch (PVEPointsCapped) {
						case 1: # next point: b
							::PVEForceBotSpawnLocation <- Vector(-600, -300, 70)
							break;
						case 2: # next point: c
							::ISVSH <- true
							::PVEPointCenter <- Vector(1900, 1968, -212.5)
							PVEAssignHomesToBotsInArea(Vector(1900, 1968, -212.5), 1024)
							ForeachBot(function(b){
								b.RemoveAllObjects(true)
							})
							break;
						case 3: # next point: last
							::PVEForceBotSpawnLocation <- Vector(-600, -300, 70)
							PVEResetHomes()
							::PVEPointCenter <- Vector(-248.000000, 720.000000, -8.000000)
							PVEAssignHomesToBotsInArea(Vector(-248.000000, 720.000000, -8.000000), 2048)
							ForeachBot(function(b){
								b.RemoveAllObjects(true)
							})
							::PVEPointCenterRadius <- 2048
							for (local entity; entity = Entities.FindByClassname(entity, "team_control_point_master");) {
								entity.KeyValueFromInt("cpm_restrict_team_cap_win", 0)
							}
							break;
						case 4: # fix win condition
							RunDelayed(function(){
								RunDelayed(function(){
									NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingKoth", true)
								})
								RunDelayed(function(){
									EntFire("team_round_timer", "SetTime", "1", 2, null)
									EntFire("team_round_timer", "Resume", "", 2, null)
									EntFire("team_round_timer", "enable", "", 2, null)
								})
								for (local entity; entity = Entities.FindByClassname(entity, "team_control_point_master");) {
									entity.KeyValueFromInt("cpm_restrict_team_cap_win", PVEHumanTeam)
								}
							})
							break;
					}
				})
				break;
			case "koth_harvest_final":
			case "koth_harvest_event": # i hope harvest event is similar enough to regular harvest
				break; # todo: enable to make 4 engies setup on the roof above blue spawn...
				RegisterEvent("teamplay_round_start", function(params) {
					if (GetHumanCount() > 8 || !PVEIsOnDedicatedServer) {
						::PVEPointCenterPerbot <- [
							{ center = Vector(70, 1300, 330) radius = 128 }
							{ center = Vector(450, 1300, 330) radius = 128 }
							{ center = Vector(450, 1300, 330) radius = 128 }
							{ center = Vector(760, 1300, 330) radius = 128 }
						]
					} else {
						::PVEPointCenterPerbot <- []
					}
				})
				break;
			case "cp_freaky_fair":
				// todo: add Uncletopia1kuAccurate patch (This map is awful to mod, I wont touch it unless I'm asked to)
				#::PVENextPointCapForceLinear <- false
				::PVERemoveItemsUsingMedievalModeFallback <- true # error spam otherwise
				if (typeof(AddThinkToEnt) == "native function") {
					local DefaultAddThinkFn = AddThinkToEnt
					::AddThinkToEnt <- function(entity, FuncName) {
						if (entity.GetTeam() == PVEBotTeam && FuncName != "pve_run_delayed_fn") return
						DefaultAddThinkFn(entity, FuncName)
					}
				}
				::PVEPointsCapped <- 0
				RegisterEvent("teamplay_round_active", function(params) {
					RunInNSeconds(10, function() {
						::PVEPointsCapped <- 0
						::PVEForceBotSpawnLocation <- Vector(-1250, -350, 350)
					})
					#EntFire("cap_middle", "SetLocked", "1", 11, null)
					#EntFire("cap_*", "SetOwner", "2", 10, null)
				})
				RegisterEvent("teamplay_point_captured", function(params) {
					::PVEPointsCapped <- PVEPointsCapped + 1
					switch (PVEPointsCapped) {
						case 1: # next point: center
							::PVEForceBotSpawnLocation <- Vector(1283, 122, 270)
							#EntFire("cap_blue_2", "SetLocked", "1", 0, null)
							#EntFire("cap_middle", "SetLocked", "0", 0, null)
							#ForeachBot(function(b){UTILRespawn(b)})
							break;
						case 2: # next point: last
							#EntFire("cap_middle", "SetLocked", "1", 0, null)
							#EntFire("cap_red_2", "SetLocked", "0", 0, null)
							::PVEForceBotSpawnLocation <- null
							break;
						case 3: # game won
							break;
					}
				})
				RegisterEvent("teamplay_setup_finished", function(params) {
					ForeachBot(function(b) {
						b.SetAbsOrigin(Vector(-3500, -1200, 400))
					})
					Convars.SetValue("tf_fastbuild", 0)
					Convars.SetValue("tf_cheapobjects", 0)
				})
				break;
			case "ctf_haarp":
				RegisterEvent("teamplay_setup_finished", function(params) {
					switch (PVERoundCount) {
						case 2:
							# fix intel not appearing on third stage
							EntFire("intel_5", "enable", "", 5, null)
							break;
					}
				})
				SteamIDInfoMessage.push("\x07FF0000You can still capture the points (the ui is bugged)")
				::PVERoundCount <- 0
				::PVETempEnt <- null
				RegisterEvent("teamplay_round_start", function(params) {
					if (params.full_reset)
						::PVERoundCount <- 0
					else
						::PVERoundCount <- PVERoundCount + 1
					if (!PVETempEnt || !PVETempEnt.IsValid()) {
						local e = Entities.FindByClassname(null, "func_capturezone")
						::PVETempEnt <- Entities.CreateByClassname("func_capturezone")
						PVETempEnt.SetTeam(PVEBotTeam)
						PVETempEnt.DispatchSpawn()
					}
					RunDelayed(function(){
						EntFire("trigger_capture_area", "SetTeamCanCap", PVEHumanTeam.tostring() + " 0", 1, null)
						if (PVETempEnt && PVETempEnt.IsValid()) {
							local e = Entities.FindByClassname(null, "func_capturezone")
							while (e == PVETempEnt)
								e = Entities.FindByClassname(e, "func_capturezone")
							if (!e) return
							PVETempEnt.SetSize(e.GetBoundingMins(), e.GetBoundingMaxs())
							PVETempEnt.SetOrigin(e.GetOrigin())
							PVETempEnt.SetAbsAngles(e.GetAbsAngles())
							PrecacheModel(e.GetModelName())
							PVETempEnt.SetModel(e.GetModelName())
						}
					})
				})
				RegisterEvent("teamplay_flag_event", function(params) {
					RunDelayed(function(){
						if (PVETempEnt && PVETempEnt.IsValid()) {
							local e = Entities.FindByClassname(null, "func_capturezone")
							while (e == PVETempEnt)
								e = Entities.FindByClassname(e, "func_capturezone")
							if (!e) return
							PVETempEnt.SetSize(e.GetBoundingMins(), e.GetBoundingMaxs())
							PVETempEnt.SetOrigin(e.GetOrigin())
							PVETempEnt.SetAbsAngles(e.GetAbsAngles())
							PrecacheModel(e.GetModelName())
							PVETempEnt.SetModel(e.GetModelName())
						}
					})
				})
				break;
			case "cp_snowplow":
				::PVEPayloadSpeedLimit <- -1
				# force the map to behave like a control point map
				NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType", 2)
				RegisterEvent("teamplay_round_start", function(params) {
					# just as a safety fallback
					NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType", 2)
				})
				break;
			case "pl_cactuscanyon":
			case "plr_bananabay":
				::PVEPayloadSpeedLimit <- -1 # fix train
				break;
			case "cp_cloak":
				# The bots dont build at the moment... why?
				PVEAddRequiredHumanPointCapture("cappoint_cloak", "cappoint_cloak")
				::ISVSH <- true
				::PVEPointCenter <- Vector(0, 0, 0)
				::PVEPointCenterRadius <- 1024
				RegisterEvent("teamplay_round_start", function(params) {
					::ISVSH <- true
					RunDelayed(function(){
						::PVEPointCenter <- Vector(0, 0, 0)
						::PVEPointCenterRadius <- 1024
					})
					local e = Entities.FindByClassname(null, "trigger_capture_area")
					foreach(team, pos in {[PVEHumanTeam] = Vector(600, -600, -400), [PVEBotTeam] = Vector(-600, 600, -400)}) {
						local f = Entities.CreateByClassname("func_respawnroom")
						f.SetSize(e.GetBoundingMins(), e.GetBoundingMaxs())
						f.SetOrigin(pos)
						f.SetAbsAngles(e.GetAbsAngles())
						PrecacheModel(e.GetModelName())
						f.SetModel(e.GetModelName())
						f.SetTeam(team)
						f.DispatchSpawn()
					}
					RunDelayedWait(4)
					RunDelayed(PVEAddUpgradeFN)
				})
				break;
			# I hate this map (coding wise, the gameplay is not bad)...
			case "sd_doomsday_event":
				ENTITY_TYPES.push("trigger_stun")
			case "sd_doomsday":
				RegisterEvent("teamplay_round_start", function(params) {
					Entities.FindByClassname(null, "item_teamflag").SetTeam(PVEHumanTeam)
					NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType", 1) // is this required?
					# give the bots a valid target while retaining the functionality for humans
					for (local e; e = Entities.FindByClassname(e, "func_capturezone");) {
						if (e.GetTeam() == 0) {
							e.SetTeam(PVEHumanTeam)
							local f = Entities.CreateByClassname("func_capturezone")
							f.SetSize(e.GetBoundingMins(), e.GetBoundingMaxs())
							f.SetOrigin(e.GetOrigin())
							f.SetAbsAngles(e.GetAbsAngles())
							PrecacheModel(e.GetModelName())
							f.SetModel(e.GetModelName())
							f.SetTeam(PVEBotTeam)
							f.DispatchSpawn()
						}
					}
				})
				RegisterEvent("teamplay_flag_event", function(params) {
					local flag = Entities.FindByClassname(null, "item_teamflag")
					switch (params.eventtype) {
						case 4: # TF_FLAGEVENT_DROPPED
						case 5: # TF_FLAGEVENT_RETURNED
							EntFireByHandle(flag, "ForceReset", "", 0, null, null)
							flag.SetTeam(PVEHumanTeam)
							break;
					}
				})
				break;
			case "cp_degrootkeep":
			case "cp_degrootkeep_rats":
				PVEAddRequiredHumanPointCapture("control_point_2", "control_point_1")
				RegisterEvent("teamplay_round_start", function(params){
					::PVECaptures <- 0
				})
				RegisterEvent("teamplay_point_captured", function(params){
					::PVECaptures <- PVECaptures + 1
					if (PVECaptures == 2) {
						EntFire("keep_door", "open", "", 1, null)
					}
				})
			case "cp_burghausen":
				::PVEMedievalEnabledByDefault <- true
				RegisterEvent("teamplay_round_start", function(params){
					Convars.SetValue("tf_medieval_autorp", true)
					PVEToggleMedieval(true, false)
					RunNextStep(function(){
						ForeachHuman(function(h){UTILRespawn(h)})
						ClientPrint(null, 4, "")
					})
					// bot behavior fix
					RunDelayed(function(){
						Convars.SetValue("tf_bot_melee_only", true)
						ForeachBot(function(b){UTILRespawn(b)})
					})
				})
				ENTITY_TYPES.push("item_healthkit_small") # do not allow dropping healthpacks
				break;
			case "cp_junction_final":
				// todo: finish Uncletopia1kuAccurate logic
				// still unfinished:
				// - only change cap time to 30 on last (if I'm correct)
				// - give bots über on captured point
				// - give bots crits while somebody is captureing
				if (Uncletopia1kuAccurate) {
					::PVEPointCaptureTimeOverwrite <- 30
				}
				RegisterEvent("teamplay_round_start", function(params) {
					if (Uncletopia1kuAccurate) {
						::PVEPointCaptureTimeOverwrite <- 30
					}
				})
			case "cp_gravelpit":
			case "cp_gravelpit_snowy":
			case "cp_lavapit_final":
				PVEAddRequiredHumanPointCapture("cap_b_flag", "cap_a_flag")
				break;
			case "cp_standin_final":
				PVEAddRequiredHumanPointCapture("cap_C", "cap_B")
				PVEAddRequiredHumanPointCapture("cap_B", "cap_A")
				PVEAddRequiredHumanPointCapture("cap_A", "cap_A")
				break;
			/*
			case "cp_cowerhouse":
				RegisterEvent("teamplay_round_start", function(params) {
					for (local e; e = Entities.FindByClassname(e, "trigger_capture_area");) {
						if (NetProps.GetPropString(e, "m_iszCapPointName") == "blu_cap_point") {
							e.SetAbsOrigin(Vector(0, 0, 200))
						}
					}
				})
			case "cp_powerhouse":
				// NOTE: there is an uncletopia stripper but it looks more like an bef stripper than an 1ku stripper
				// do not implement in Uncletopia1kuAccurate for now
				RegisterEvent("teamplay_round_start", function(params) {
					EntFire("mid_cap_point", "SetLocked", "1", 41, null)
				})
				break;
			*/
			case "cp_carrier":
				RegisterEvent("teamplay_round_start", function(params) {
					::ISVSH <- false
					::PVEForceBotSpawnLocation <- null
					::PVEPointCenter <- null
					RunDelayed(function(){
						Entities.FindByName(null, "cap_2").SetOrigin(Vector(3968, -2784, -318))
						PVEResetHomes()
						ForeachBot(function(b){UTILRespawn(b)})
					})
				})
				RegisterEvent("teamplay_point_captured", function(params) {
					::ISVSH <- true
					::PVEPointCenter <- Vector(3968, -2784, -318)
					PVEAssignHomesToBotsInArea(PVEPointCenter, PVEPointCenterRadius)
					ForeachBot(function(b){
						b.RemoveAllObjects(true)
					})
				})
				RegisterEvent("teamplay_flag_event", function(params) {
					if (!PVERunning || !Uncletopia1kuAccurate) return
					switch (params.eventtype) {
						// we only care about pickup
						case 1: # TF_FLAGEVENT_PICKUP
							// this is the uncletopia vscript, there may be conflicts with upgrades here
							local boss = Entities.FindByName(null, "carrier");
							boss.RemoveCustomAttribute("max health additive bonus");
							boss.AddCustomAttribute("max health additive bonus", 1000 - boss.GetMaxHealth(), -1);
							boss.SetHealth(1000);
							boss.RemoveCond(TF_COND_CRITBOOSTED_ON_KILL);
							boss.AddCond(TF_COND_OFFENSEBUFF);
						default: # IDK
							break;
					}
				})
				break;
			case "pass_district":
				RegisterEvent("teamplay_round_start", function(params) {
					RunNextStep(function(){
						PVEGetAreasInRadiusCached(PVEPointCenter, PVEPointCenterRadius)
						PVEAreaCache.clear()
						local ballspawn = Entities.FindByClassname(null, "info_passtime_ball_spawn")
						for (local e; e = Entities.FindByClassname(e, "func_passtime_goalie_zone");) {
							if (e.GetCenter().y > ballspawn.GetCenter().y) continue
							local areas = {}
							NavMesh.GetNavAreasOverlappingEntityExtent(e, areas)
							foreach (k, v in areas) {
								PVEAreaCache.push(v)
							}
						}
						ForeachBot(PVEUpdateBotKothTarget)
					})
				})
			break;
			case "pl_breadspace":
				RegisterEvent("teamplay_round_start", function(params) {
					Entities.FindByName(null, "Bomb_Model").SetCollisionGroup(Constants.ECollisionGroup.COLLISION_GROUP_DEBRIS) # no collision with huntsman
					Entities.FindByName(null, "chocolate_eclair_gibs").SetCollisionGroup(Constants.ECollisionGroup.COLLISION_GROUP_DEBRIS) # no collision with huntsman
					// todo: disable bomb collision here to prevent huntsman arrows breaking
					// todo: disable end pit prop collision here to prevent huntsman arrows breaking
				})
			break;
			case "tow_dynamite":
				::PVEPointMovementUpdateTick <- 0
				::PVEPointMovementUpdateTickRate <- 10
				RegisterEvent("teamplay_round_start", function(params) {
					UTILGetScriptScope(Entities.FindByClassname(null, "logic_script")).SpawnSpell <- function(location){}
					# todo: reenable jump spells instead of disableing them entirely
					RunDelayed(function() {
						NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bIsUsingSpells", false)
					})
				})
				RegisterEvent("Update", function(params) {
					::PVEPointMovementUpdateTick <- (PVEPointMovementUpdateTick + 1) % PVEPointMovementUpdateTickRate
					if (PVEPointMovementUpdateTick != 0) return;
					local p = Entities.FindByName(null, "cp_center")
					::PVEPointCenter <- p ? p.GetOrigin() : null
					if (DbgPointDisp)
						DebugDrawCircle(PVEPointCenter, Vector(0, 255, 255), 1, 512 + 256, true, 4)
					foreach (classname in ["obj_sentrygun", "obj_dispenser", "obj_teleporter"]) {
						for (local e; e = Entities.FindByClassname(e, classname);) {
							local owner = NetProps.GetPropEntity(e, "m_hBuilder")
							if (!owner || !owner.IsValid() || !owner.IsPlayer() || owner.IsFakeClient() && e.GetOrigin().LengthSqr() != 0) {
								if ((e.GetOrigin() - PVEPointCenter).Length() > 512 + 256) {
									PVEUpdateBotKothTarget(owner)
									owner.RemoveAllObjects(true)
								}
							}
						}
					}
				})
				break;
			case "sd_marshlands":
				RegisterEvent("teamplay_round_start", function(params) {
					::PVEPointCenter <- Vector(-2200, 0, -250)
					::PVEPointCenterRadius <- 2048 - 256
					local e = Entities.CreateByClassname("func_capturezone")
					e.SetTeam(PVEBotTeam)
					e.DispatchSpawn()
				})
				RegisterEvent("teamplay_flag_event", function(params) {
					EntFire("team_round_timer", "SetTime", "60", 0, null)
				})
				break;
			case "ctf_thundermountain":
				RegisterEvent("teamplay_round_start", function(params) {
					for (local e; e = Entities.FindByClassname(e, "func_capturezone");) {
						if (e.GetTeam() == PVEBotTeam) {
							e.SetAbsOrigin(e.GetOrigin() + Vector(2000, 0, -130))
						}
					}
				})
			case "ctf_hellfire":
			case "ctf_pressure":
				RegisterEvent("teamplay_round_start", function(params) {
					for (local e; e = Entities.FindByClassname(e, "func_capturezone");) {
						if (e.GetTeam() == PVEBotTeam) {
							::PVEPointCenter <- e.GetCenter()
							::PVEPointCenterRadius <- 640 * 2.5
						}
					}
					::ISVSH <- true # need to rename this variable
					ForeachBot(function(b){UTILRespawn(b)})
				})
				break;
			case "rd_asteroid":
				RegisterEvent("teamplay_round_start", function(params) {
					::PVEPointCenter <- Vector(-600, -1800, -400)
					::PVEPointCenterRadius <- 640 * 2.5
					::ISVSH <- true # need to rename this variable
					ForeachBot(function(b){UTILRespawn(b)})
				})
			break;
			case "pl_badwater":
				RegisterEvent("teamplay_round_start", function(params) {
					for (local e; e = Entities.FindByName(e, "end_pit_destroy_props_animate");) {
						e.AddSolidFlags(4); // make non solid (for now)
					}
				})
			break;
			case "pl_patagonia":
				# fix stage 2 train
				::PVEPayloadSpeedLimit <- -1
				# fix elevator on stage 1 point 2
				::PVEInitPathFix <- false
				RegisterEvent("teamplay_setup_finished", function(params) {
					Convars.SetValue("tf_escort_recede_time", 20)
					EntFire("team_train_watcher", "SetTrainRecedeTimeAndUpdate", "0", 1, null)
					return;
					#if (PVEInitPathFix) {

						# stage 1 and stage 3 pathing
						::PVEInitPathFix <- false
						ForeachBot(function(p){
							RunDelayed(function(){
								UTILRespawn(b)
							})
						})
					#}
				})
				RegisterEvent("teamplay_round_start", function(params) {
					if (params.full_reset)
						::PVEInitPathFix <- true
				})
			case "pl_bloodwater":
				# undo legacy settings (apply after waiting for players ends)
				::PVEAggressiveCleanup <- false
				::PVEReduceSpawnpoints <- false
				::PVECancelPlayerWait <- false
				::PVEClearBotItemsOnRoundEnd <- true
				::PVEExtremeEquipDelay <- false
				PVEClassOptions.dane.cosmetics <- []
				PVEClassOptions.dane_extra.cosmetics <- []
			case "pl_phoenix":
			case "pl_embargo":
				ENTITY_TYPES.extend(["bot_hint_sentrygun" "bot_hint_teleporter_exit" /*"instanced_scripted_scene"*/ "tf_ragdoll" "vgui_screen" "func_occluder"])
				RunNextStep(function(){
					::PVEMedievalBetweenRounds <- true
				})
				break;
			case "2koth_abbey":
			break;
			case "arena_byre":
				::PVEPointCenterRadiusOnNotOwned <- 1 # do not change parameters
				RegisterEvent("teamplay_round_start", function(params) {
					PVEAreaCache.clear()
					local point = Entities.FindByClassname(null, "team_control_point")
					local areas = {}
					NavMesh.GetNavAreasInRadius(point.GetOrigin(), PVEPointCenterRadius, areas)
					foreach (k, v in areas)
						PVEAreaCache.push(v)
					point = Entities.FindByClassname(point, "team_control_point")
					areas = {}
					NavMesh.GetNavAreasInRadius(point.GetOrigin(), PVEPointCenterRadius, areas)
					foreach (k, v in areas)
						PVEAreaCache.push(v)
				})
				break;
			case "cppl_gavle":
				RegisterEvent("teamplay_round_start", function(params) {
					# first round: CP, second round: PL
					NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType", params.full_reset ? 2 : 3)
				})
				break;
			case "plr_matterhorn": # todo: check if this map actually works
			case "pd_nutcracker": # todo: I have never checked pd maps before adding them and I wont start now.
			case "ctf_sidewinder": # todo: check for issues (see pd_nutcracker comment)
			case "koth_winter_ridge": # it's koth so I dont see any issue potential
				break;

			case "mvm_bigrock":
				RegisterEvent("teamplay_setup_finished", function(params) {
					EntFire("func_door", "Open", "", 15, null)
				})
				RegisterEvent("teamplay_round_active", function(params) {
					RunInNSeconds(2, function(){
						ForeachBot(function(b) {
							RunDelayed(function(){
								b.SetAbsOrigin(Vector(0, 2500, 500))
							})
						})
					})
				})
				::PVEFlagResetPosition <- Vector(-1660, 4760, 75)
				break;
			case "mvm_decoy":
				::PVEFlagResetPosition <- Vector(0, 2300, 360)
				# TEMP: kill noncentered respawn points
				RegisterEvent("teamplay_round_start", function(params) {
					EntFire("spawnbot_*", "Kill", "", 1, null)
				})
				break;
			case "mvm_mannhattan":
				RunNextStep(function() {
					SteamIDInfoMessage.push("The bomb is available once both gates have been captured.")
				})
				::PVEFlagResetPosition <- Vector(-1500, -1000, -50)
				::PVECapCount <- 0
				RegisterEvent("teamplay_round_start", function(params) {
					for (local entity; entity = Entities.FindByClassname(entity, "team_control_point_master");) {
						entity.KeyValueFromInt("cpm_restrict_team_cap_win", 1)
					}
					::PVECapCount <- 0
					# make gates openable by humans
					for (local e; e = Entities.FindByClassname(e, "filter_tf_bot_has_tag");) {
						if (NetProps.GetPropString(e, "m_iszTags") == "bot_gatebot") {
							e.Kill()
						}
					}
					EntFire("item_teamflag", "disable", "", 5, null)
					RunNextStep(function(){
					RunNextStep(function(){
						ForeachBot(function(b){UTILBotSetMissionSafe(b, 0, true)})
						ForeachHuman(function(h){h.ForceRegenerateAndRespawn()})
					})
					})
					foreach (name in [
						"func_nav*"
						"spawnbot_*"
					]) EntFire(name, "kill", "", 0, null)
					Entities.FindByName(null, "spawnbot").SetOrigin(Vector(-3000, -2700, 170))
					Entities.FindByName(null, "teleport_bots_gate1").SetAbsOrigin(Vector(2300, -1800, 65))
					Entities.FindByName(null, "teleport_bots_gate1").SetAbsAngles(QAngle(0, 180, 0))
					Entities.FindByName(null, "teleport_bots_gate2").SetAbsOrigin(Vector(-3047, -1130, -43))
					Entities.FindByName(null, "teleport_bots_gate2").SetAbsAngles(QAngle(0, 34, 0))
				})
				RegisterEvent("teamplay_point_captured", function(params) {
					for (local entity; entity = Entities.FindByClassname(entity, "team_control_point_master");) {
						entity.KeyValueFromInt("cpm_restrict_team_cap_win", 1)
					}
					EntFire("item_teamflag", "disable", "", 1, null)
					::PVECapCount <- PVECapCount + 1
					if (PVECapCount > 1) {
						EntFireByHandle(PVEIntelHandle, "Enable", "", 2, null, null)
						EntFire("gate1_entrance_door", "Close", "", 1, null)
						EntFire("gate2_bot_blocker", "disable", "", 1, null)
					} else {
						EntFire("gate0_entrance_door", "Close", "", 1, null)
						EntFire("gate1_bot_blocker", "disable", "", 1, null)
					}
					RunNextStep(function(){
						for (local e; e = Entities.FindByClassname(e, "bot_hint_engineer_nest");) {
							if (NetProps.GetPropBool(e, "m_isDisabled")) {
								ForeachBot(function(b) {
									if ((b.GetOrigin() - e.GetOrigin()).Length() < 128) {
										b.RemoveAllObjects(true)
									}
								})
							}
						}
						RunNextStep(function(){
							ForeachBot(function(b){UTILBotSetMissionSafe(b, 0, true)})
						})
					})
				})
				break;
			case "mvm_rottenburg":
				::PVEFlagResetPosition <- Vector(1520, -750, -500)
				break;
			case "mvm_mannworks":
				# temp: spawnpoint manipulation
				RegisterEvent("teamplay_round_start", function(params) {
					EntFire("spawnbot_*", "Kill", "", 0, null)
				})
				::PVEFlagResetPosition <- Vector(960, 1670, 135)
				::PVECustomBotHints <- [ # autogenerated using !dumphints
					{ nest_origin=Vector(-26,985,448) nest_angles=QAngle(0,92,0) gun_origin=Vector(-29,1056,448) gun_angles=QAngle(0,92,0) }
					{ nest_origin=Vector(734,906,384) nest_angles=QAngle(0,89,0) gun_origin=Vector(733,978,447) gun_angles=QAngle(0,90,0) }
					{ nest_origin=Vector(301,475,154) nest_angles=QAngle(0,-54,0) gun_origin=Vector(330,410,142) gun_angles=QAngle(0,-66,0) }
					{ nest_origin=Vector(1466,990,387) nest_angles=QAngle(0,-120,0) gun_origin=Vector(1423,932,387) gun_angles=QAngle(0,-126,0) }
					{ nest_origin=Vector(1252,-391,384) nest_angles=QAngle(0,145,0) gun_origin=Vector(1193,-350,384) gun_angles=QAngle(0,145,0) }
					{ nest_origin=Vector(553,-834,382) nest_angles=QAngle(0,128,0) gun_origin=Vector(509,-778,382) gun_angles=QAngle(0,128,0) }
					{ nest_origin=Vector(44,-678,512) nest_angles=QAngle(0,32,0) gun_origin=Vector(102,-637,512) gun_angles=QAngle(0,35,0) }
					{ nest_origin=Vector(-641,-485,512) nest_angles=QAngle(0,53,0) gun_origin=Vector(-598,-428,512) gun_angles=QAngle(0,53,0) }
					{ nest_origin=Vector(-891,1541,387) nest_angles=QAngle(0,-8,0) gun_origin=Vector(-820,1527,387) gun_angles=QAngle(0,-11,0) }
					{ nest_origin=Vector(-947,1009,385) nest_angles=QAngle(0,-11,0) gun_origin=Vector(-871,994,383) gun_angles=QAngle(0,-11,0) }
					{ nest_origin=Vector(-139,484,368) nest_angles=QAngle(0,177,0) gun_origin=Vector(-211,486,368) gun_angles=QAngle(0,177,0) }
					{ nest_origin=Vector(789,634,384) nest_angles=QAngle(0,-56,0) gun_origin=Vector(828,573,384) gun_angles=QAngle(0,-56,0) }
					{ nest_origin=Vector(901,831,388) nest_angles=QAngle(0,27,0) gun_origin=Vector(965,864,388) gun_angles=QAngle(0,27,0) }
					{ nest_origin=Vector(-638,451,384) nest_angles=QAngle(0,-13,0) gun_origin=Vector(-583,436,384) gun_angles=QAngle(0,-13,0) }
					{ nest_origin=Vector(-1155,-140,270) nest_angles=QAngle(0,-37,0) gun_origin=Vector(-1100,-178,252) gun_angles=QAngle(0,-37,0) }
					{ nest_origin=Vector(-742,-720,259) nest_angles=QAngle(0,-168,0) gun_origin=Vector(-805,-755,257) gun_angles=QAngle(0,-150,0) }
					{ nest_origin=Vector(1255,70,319) nest_angles=QAngle(0,57,0) gun_origin=Vector(1296,129,319) gun_angles=QAngle(0,56,0) }
				]
				break;
			case "mvm_coaltown":
			case "mvm_ghost_town":
				# prevent players building below the map
				RegisterEvent("player_builtobject", function(params) {
					for (local e; e = Entities.FindByClassname(e, "obj_*");) {
						if (e.GetOrigin().z < 0) {
							local builder = NetProps.GetPropEntity(e, "m_hBuilder")
							if (builder && builder.IsValid() && builder.IsPlayer()) {
								builder.RemoveAllObjects(true)
								for (local i=0; i < 131; i++) builder.RemoveCond(i)
								builder.TakeDamage(999999, 16, builder) # run over by train
								ClientPrint(builder, 4, "NO!")
							}
						}
					}
				})
				# temp: spawnpoint manipulation
				RegisterEvent("teamplay_round_start", function(params) {
					EntFire("spawnbot_*", "Kill", "", 0, null)
				})
				::PVECustomBotHints <- [ # autogenerated using !dumphints
					{ nest_origin=Vector(496,2166,496) nest_angles=QAngle(0,-130,0) gun_origin=Vector(448,2112,496) gun_angles=QAngle(0,-136,0) }
					{ nest_origin=Vector(488,1797,496) nest_angles=QAngle(0,119,0) gun_origin=Vector(450,1858,496) gun_angles=QAngle(0,122,0) }
					{ nest_origin=Vector(-390,1685,496) nest_angles=QAngle(0,0,0) gun_origin=Vector(-318,1685,504) gun_angles=QAngle(0,0,0) }
					{ nest_origin=Vector(-389,1434,496) nest_angles=QAngle(0,0,0) gun_origin=Vector(-317,1435,504) gun_angles=QAngle(0,0,0) }
					{ nest_origin=Vector(-395,959,444) nest_angles=QAngle(0,-70,0) gun_origin=Vector(-363,892,430) gun_angles=QAngle(0,-70,0) }
					{ nest_origin=Vector(40,394,448) nest_angles=QAngle(0,88,0) gun_origin=Vector(40,466,448) gun_angles=QAngle(0,89,0) }
					{ nest_origin=Vector(-40,394,448) nest_angles=QAngle(0,89,0) gun_origin=Vector(-40,466,448) gun_angles=QAngle(0,90,0) }
					{ nest_origin=Vector(-860,861,464) nest_angles=QAngle(0,-87,0) gun_origin=Vector(-857,789,464) gun_angles=QAngle(0,-87,0) }
					{ nest_origin=Vector(933,988,576) nest_angles=QAngle(0,-178,0) gun_origin=Vector(861,986,576) gun_angles=QAngle(0,-178,0) }
					{ nest_origin=Vector(1068,687,576) nest_angles=QAngle(0,-111,0) gun_origin=Vector(1041,620,576) gun_angles=QAngle(0,-111,0) }
					{ nest_origin=Vector(1443,55,736) nest_angles=QAngle(0,164,0) gun_origin=Vector(1373,71,736) gun_angles=QAngle(0,167,0) }
					{ nest_origin=Vector(87,439,672) nest_angles=QAngle(0,-3,0) gun_origin=Vector(159,440,680) gun_angles=QAngle(0,0,0) }
					{ nest_origin=Vector(-84,465,672) nest_angles=QAngle(0,-178,0) gun_origin=Vector(-156,463,680) gun_angles=QAngle(0,-178,0) }
					{ nest_origin=Vector(80,-729,736) nest_angles=QAngle(0,-90,0) gun_origin=Vector(80,-801,736) gun_angles=QAngle(0,-90,0) }
					{ nest_origin=Vector(-70,-729,736) nest_angles=QAngle(0,-90,0) gun_origin=Vector(-70,-800,736) gun_angles=QAngle(0,-90,0) }
					{ nest_origin=Vector(-679,-449,736) nest_angles=QAngle(0,115,0) gun_origin=Vector(-710,-384,736) gun_angles=QAngle(0,115,0) }
					{ nest_origin=Vector(-397,260,672) nest_angles=QAngle(0,130,0) gun_origin=Vector(-443,314,672) gun_angles=QAngle(0,130,0) }
					{ nest_origin=Vector(-875,-1956,640) nest_angles=QAngle(0,-5,0) gun_origin=Vector(-803,-1963,640) gun_angles=QAngle(0,-5,0) }
					{ nest_origin=Vector(930,-1984,704) nest_angles=QAngle(0,179,0) gun_origin=Vector(858,-1983,704) gun_angles=QAngle(0,179,0) }
					{ nest_origin=Vector(-1198,459,640) nest_angles=QAngle(0,-10,0) gun_origin=Vector(-1128,446,640) gun_angles=QAngle(0,-10,0) }
					{ nest_origin=Vector(727,-475,736) nest_angles=QAngle(0,32,0) gun_origin=Vector(787,-436,736) gun_angles=QAngle(0,32,0) }
				]
				::PVEFlagResetPosition <- Vector(64, 2950, 200)
			break;
			case "pl_enclosure_final": # sort of from uncletopia config (THIS NEEDS TESTING!!!)
				break; // todo: add accuracy stuff once the rest works
				RegisterEvent("MapReset", function(params) {
					for (local e; e = Entities.FindByClassname(e, "info_player_teamspawn");) {
						if (NetProps.GetPropString(e, "m_iszRoundBlueSpawn") != "mspl_round_2" ||
							NetProps.GetPropInt(e, "m_iTeamNum") != 3 ||
							NetProps.GetPropBool(e, "m_bDisabled")) continue;
						e.SetAbsOrigin(e.GetOrigin() + Vector(0, 0, 48))
					}
				})
				RegisterEvent("teamplay_setup_finished", function(params) {
					RunInNSeconds(10, function(){
						for (local e; e = Entities.FindByClassname(e, "info_player_teamspawn");) {
							if (NetProps.GetPropString(e, "m_iszRoundBlueSpawn") != "mspl_round_2" ||
								NetProps.GetPropInt(e, "m_iTeamNum") != 3 ||
								NetProps.GetPropBool(e, "m_bDisabled")) continue;
							e.SetAbsOrigin(e.GetOrigin() + Vector(0, 0, -48))
						}
					})
				})
			break;
			// uncletopia specific (yes, I went through all strippers manually)
			// may not be 100% accurate, if it needed to be, I would have to rework all the other systems, which I am too lazy for at the moment
			case "cp_brew":
				RegisterEvent("teamplay_round_start", function(params) {
					if (Uncletopia1kuAccurate || NavmeshFixes) {
						// open most shortcuts
						EntFire("door_biggate_a", "Open", "", 0, null)
						EntFire("door_redShortCut", "Kill", "", 0, null)
						// rewire trigger outputs, idk for what exactly but it will have a reason to exist so it stays
						EntityOutputs.AddOutput(Entities.FindByName(null, "trigger_redShortCutDoor"), "OnStartTouchAll", "door_red_large_win_2", "Open", "", 0, -1)
						EntityOutputs.AddOutput(Entities.FindByName(null, "trigger_redShortCutDoor"), "OnEndTouchAll", "door_red_large_win_2", "Close", "", 0, -1)
					}
				})
			break;
			case "cp_cargo":
				RegisterEvent("teamplay_round_start", function(params) {
					if (Uncletopia1kuAccurate)
						EntFire("oneway_door_left", "Kill", "", 0, null)
				})
			break;
			case "cp_carrier":
				RegisterEvent("teamplay_round_start", function(params) {
					if (Uncletopia1kuAccurate) {
						// there is a CarrierBossHealthChange() function in another directory which is run on flag pickup, remake that here
						EntFire("discarded", "Kill", "", 0, null) // what entity is called discarded? does this need to loop?
					}
				})
			break;
			case "cp_dustbowl":
				if (Uncletopia1kuAccurate) {
					::PVEPointCaptureTimeOverwrite <- 15
				}
				RegisterEvent("teamplay_round_start", function(params) {
					if (Uncletopia1kuAccurate) {
						::PVEPointCaptureTimeOverwrite <- 15
					}
				})
			break;
			case "pl_aquarius":
				//if (Uncletopia1kuAccurate) { // without guard, apparently something breaks with slower cart
					// why is the cart faster on this map specifically???
					::PVEPayloadSpeedLimit <- {maxspeed=90, accelspeed=70}
				//}
			break;
			case "pl_swiftwater_final1":
				// fix for unedited navmesh
				RegisterEvent("teamplay_round_start", function(params) {
					if (Uncletopia1kuAccurate) {
						// idk what classname needs to be filtered for
						for (local e; e = Entities.FindByClassname(e, "*");){
							switch (NetProps.GetPropInt(e, "m_iHammerID")) {
								case 4737:
									EntityOutputs.RemoveOutput(e, "OnTrigger", "red_spawn_door_1_exit_trigger_1", "Disable", "")
									EntityOutputs.RemoveOutput(e, "OnTrigger", "red_spawn_door_exit_1_down", "Close", "")
								break;
								case 4751:
									EntityOutputs.RemoveOutput(e, "OnTrigger", "red_spawn_door_2_exit_trigger_1", "Disable", "")
									EntityOutputs.RemoveOutput(e, "OnTrigger", "red_spawn_door_3_exit_trigger_1", "Disable", "")
									EntityOutputs.RemoveOutput(e, "OnTrigger", "red_spawn_door_exit_2_down", "Close", "")
									EntityOutputs.RemoveOutput(e, "OnTrigger", "red_spawn_door_exit_3_down", "Close", "")
								break;
								case 5843:
									EntityOutputs.RemoveOutput(e, "OnTrigger", "red_spawn_door_4_exit_trigger_1", "Disable", "")
									EntityOutputs.RemoveOutput(e, "OnTrigger", "red_spawn_door_exit_4_down", "Close", "")
								break;
								default: break;
							}
						}
						// there are inputs to lock red doors after a while but it doesnt matter when bots dont use them
					}
				})
			break;
			case "pl_pier":
				RegisterEvent("teamplay_round_start", function(params) {
					//if (Uncletopia1kuAccurate) { // might be a useful mv1ku patch aswell
						local e = Entities.FindByName(null, "well_platform_track1")
						EntityOutputs.RemoveOutput(e, "OnPass", "sspl_train", "AddOutput", "startspeed 110")
						EntityOutputs.AddOutput(e, "OnPass", "sspl_train", "AddOutput", "startspeed 63", 0.01, -1)
					//}
				})
			break;
			case "pl_precipice_event_final":
				RegisterEvent("teamplay_round_start", function(params) {
					if (Uncletopia1kuAccurate) {
						EntFire("spawnroom_blue_main", "Disable", "", 5, null)
					}
				})
			break;
			case "pl_snowycoast":
				// something something bot stuck issue
				// maybe navmesh related but I have not seen this happen yet
				RegisterEvent("teamplay_round_active", function(params) {
					if (Uncletopia1kuAccurate) {
						EntFire("cap02_clip", "Kill", "", 0, null)
						# this does not even do anything
						EntFire("cap02_door*", "Open", "", 0, null)
					}
				})
				RegisterEvent("teamplay_setup_finished", function(params) {
					if (Uncletopia1kuAccurate) {
						EntFire("cap02_door*", "Close", "", 0, null)
					}
				})
			break;
			case "pl_citadel":
				RegisterEvent("teamplay_round_start", function(params) {
					// how much of that stripper actually works???
					// it looks like it has had a bad day
					// bot pathing is acceptable because of a navmesh update of last summer
					if (Uncletopia1kuAccurate) {
						// todo: add door killing logic if it breaks
					}
				})
			break;
			// this map is hell.
			// it requires an edited navmesh I cant assume everybody using this has
			#case "pl_enclosure_final": break;

			// these maps just delete tracks after points have been reached to reduce entity count
			// there have been no issues on cashworks until now so there is no reason to implement this at the moment
			#case "pl_cashworks": break;
			#case "pl_thundermountain": break;

			// these maps have some specific func_illusionaries to keep...
			// maybe clean the other ones up if there are issues but not until then
			#case "pl_phoenix": break;
			#case "pl_goldrush": break; // deletes tracks aswell

			// there apparently is a build in spawn issue but it cant happened here
			// since the vscript kills all func_nobuilds (may not be accurate but I cant be bothered with these)
			#case "pl_hoodoo_final": break;

			# cleanup / spawnpoints
			case "ctf_2fort": # moved from above for organization purposes
			case "ctf_2fort_invasion": # same as 2fort
			case "ctf_doublecross":
			case "ctf_sawmill":
			case "ctf_well":
				function temp(params={}) {
					local mapname = GetMapName()
					if (!Uncletopia1kuAccurate) {
						# original 2fort change
						if (mapname == "ctf_2fort" || mapname == "ctf_2fort_invasion") {
							::PVEForceBotSpawnLocation <- [Vector(900, 4000, -185), null, null]
						}
						return;
					}
					# Uncletopia1kuAccurate
					::PVEForceBotSpawnLocation <- {
						ctf_2fort = [null, null, Vector(918.66, 4109.579, -167.45), Vector(14.277, 2987.710, -155.21)]
						ctf_2fort_invasion = [null, null, Vector(918.66, 4109.579, -167.45), Vector(14.277, 2987.710, -155.21)]
						ctf_doublecross = [{pos=null weight = 4}, Vector(-1458, -1970, 4), Vector(-541.382, -2223, -14), Vector(-781, -2211.44, -14), Vector(-1517.74, -2589, -16)]
						ctf_sawmill = [null, Vector(-207, 1579, -320)]
						ctf_well = [null, Vector(0, -4672, -384), Vector(0, -4646.7, -192)]
					}[mapname]
					local hammerids_to_kill = {
						ctf_2fort = []
						ctf_2fort_invasion = []
						ctf_doublecross = []
						ctf_sawmill = [622271 622273 622275 622277 622279 622281 622283 622285 622287 622289 622291 622293]
						ctf_well = [3855739 3855733 3855741 3855735 3855731 3855729 3855745 3855743 3855751 3855753 6062473
							3855749 3855737 3855747 6062485 6062475
						]
					}[mapname]
					if (hammerids_to_kill.len() > 0) {
						for (local e; e = Entities.FindByClassname(e, "*");) {
							if (hammerids_to_kill.find(NetProps.GetPropInt(e, "m_iHammerID")) != null) {
								e.Kill()
							}
						}
					}
				}
				RegisterEvent("teamplay_round_start", temp)
				temp()

				#break; apply setup tiem changes
			# no other changes required
			case "ctf_crasher":
				// todo: set giant health to 1000 in accurate mode
				// todo: figure out what else the stripper does
				// -> there are some strange outputs changing flag teams in there
				// this should be accurate enough as is, only touch if nessecary
			case "ctf_applejack":
			case "ctf_landfall":
			case "ctf_pelican_peak":
			case "ctf_turbine":
				if (Uncletopia1kuAccurate) {
					::PVEFakeSetupTime <- 60 # 60 seconds of setup for all ctf maps
				}
				RegisterEvent("teamplay_round_start", function(params){
					::PVEFakeSetupTime <- 60 # setup time also on reload
				})
			break;
			// todo: implement all the Uncletopia1kuAccurate changes for:
			// tc_hydro (all the special anti spy logic, etc.)
			default:
				break;
		}
	})
	if (GetMapName() != "koth_nucleus") { # force the bots to build near the koth capture point
		::PVEPointCenter <- null
		::PVEPointCenterRadius <- 640
		::PVEPointCenterRadiusOnNotOwned <- 0.666
		::PVEPointCenterPerbot <- []
		::PVEPointOwnedByBots <- false
		::PVEUpdateBotKothTarget <- function(player) {
			if (player && player.IsValid() && player.IsFakeClient()) {
				local scope = UTILGetScriptScope(player)
				if ("botid" in scope && scope.botid < PVEPointCenterPerbot.len()) {
					player.SetHomeArea(PVEGetRandomAreaInRadius(PVEPointCenterPerbot[scope.botid].center, PVEPointCenterPerbot[scope.botid].radius))
				} else if (PVEPointCenter) {
					player.SetHomeArea(PVEGetRandomAreaInRadius(PVEPointCenter, PVEPointCenterRadius * (PVEPointOwnedByBots ? 1 : PVEPointCenterRadiusOnNotOwned)))
				} else {
					player.SetHomeArea(null)
				}
				RunNextStep(function(){
					UTILBotSetMissionSafe(player, 0, true)
				})
			}
		}
		RegisterEvent("teamplay_round_start", function(params) {
			local p = Entities.FindByClassname(null, "team_control_point")
			::PVEPointCenter <- p ? p.GetOrigin() : null
			if ((((IsInKothMode() && Mv1kUChangesEnabled) && GetMapName() != "cp_sulfur") || ISVSH) && PVEPointCenter) {
				ForeachBot(PVEUpdateBotKothTarget)
				ForeachBot(function(b){b.SetAbsOrigin(PVEPointCenter)})
			}
		})
		RegisterEvent("player_spawn", function(params) {
			if ((((IsInKothMode() && Mv1kUChangesEnabled) && GetMapName() != "cp_sulfur") || ISVSH)) {
				RunNextStep(function(){
					local player = GetPlayerFromUserID(params.userid)
					PVEUpdateBotKothTarget(player)
				})
			}
		})
		RegisterEvent("teamplay_point_captured", function(params) {
			if (IsInKothMode() && GetMapName() != "cp_sulfur") {
				::PVEPointOwnedByBots <- params.team == PVEBotTeam
				return; # the code below breaks sometimes
				local temp = 0
				ForeachBot(function(b){
					PVEUpdateBotKothTarget(b)
					# force some bots to rebuild
					if (temp % 6 == 5 && !PVEPointOwnedByBots)
						b.RemoveAllObjects(true)
					temp += 1
				})
			}
		})
		// this event does not need to be hooked outside koth
		if (IsInKothMode()) RegisterEvent("Update", function(params) {
			if (Mv1kUChangesEnabled && IsInKothMode() && GetMapName() != "cp_sulfur" && GetMapName() != "tow_dynamite" && GetMapName() != "sd_marshlands" && !PVEPointOwnedByBots) {
				ForeachBot(function(b){
					b.AddCondEx(11, 0.25, b) # TF_COND_CRITBOOSTED
					b.AddCondEx(32, 0.25, b) # Speed boost
				})
			}
		})
	}
	if (true) { # todo: enable to require one minute of contiuous point ownership to win
		::PVEResetCaptureTimeOnKothMaps <- Mv1kUChangesEnabled
		::PVEResetCaptureTimeOnKothMapsToValue <- "60" # keep for 60 seconds
		if (PVEResetCaptureTimeOnKothMaps && IsInKothMode() && GetMapName() != "cp_sulfur" && GetMapName() != "koth_viaduct_event" && GetMapName() != "koth_lakeside_event") {
			SteamIDInfoMessage.push("You'll need to hold the point for one minute. If you loose it, the time resets.")
			if (GetMapName() != "tow_dynamite")
				SteamIDInfoMessage.push("The bots will have crits while they do not own the point.")
		}
		RegisterEvent("teamplay_point_captured", function(params) {
			if (PVEResetCaptureTimeOnKothMaps && IsInKothMode() && GetMapName() != "cp_sulfur" && GetMapName() != "koth_viaduct_event" && GetMapName() != "koth_lakeside_event") {
				EntFire("team_round_timer", "SetTime", PVEResetCaptureTimeOnKothMapsToValue, 0, null)
			}
		})
	}
	# convert plr maps to a form of pl the bots understand
	# note: applying these settings this agressively might break some more complex maps
	RegisterEvent("teamplay_round_start", function(params) {
		if (PVEDisabled || NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") != 3 || !NetProps.GetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bMultipleTrains")) return;
		NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bMultipleTrains", false)
		for (local e; e = Entities.FindByClassname(e, "team_train_watcher");) {
			NetProps.SetPropBool(e, "m_bHandleTrainMovement", true)
		}
		EntFire("team_train_watcher", "SetTrainRecedeTimeAndUpdate", "0", 1, null)
		EntFire("team_train_watcher", "SetTrainCanRecede", "1", 1, null)
		::HasHadMultipleTrains <- true
	})
	RegisterEvent("teamplay_round_start", function(params) {
		if ("HasHadMultipleTrains" in getroottable() && HasHadMultipleTrains) {
			NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bMultipleTrains", false)
			for (local e; e = Entities.FindByClassname(e, "team_train_watcher");) {
				NetProps.SetPropBool(e, "m_bHandleTrainMovement", true)
			}
			EntFire("team_train_watcher", "SetTrainRecedeTimeAndUpdate", "0", 1, null)
			EntFire("team_train_watcher", "SetTrainCanRecede", "1", 1, null)
			for (local e; e = Entities.FindByClassname(e, "team_train_watcher");) {
				if (e.GetTeam() == PVEBotTeam) {
					EntFireByHandle(e, "Disable", "", 10, e, e) # helltower fix
				}
			}
		}
	})
	RegisterEvent("teamplay_flag_event", function(params) {
		if (PVEDisabled || !Mv1kUChangesEnabled || !("player" in params)) return
		local player = PlayerInstanceFromIndex(params.player)
		if (!player || !player.IsValid()) return;
		for (local e; e = Entities.FindByClassname(e, "tf_powerup_bottle");) {
			if (NetProps.GetPropEntity(e, "m_hOwnerEntity") == player) {
				e.Kill()
				ClientPrint(player, 4, "Canteens can not be used while holding the flag.")
				return
			}
		}
	})

	# all of these vsh fix attempts are just a mess
	# loosing as saxton hale crashes the game (at least on a listen server)
	::VSHTEMPPATCHATTEMPT <- false
	::ISVSH <- false
	::VSHHIJACK <- function(params = {}) {
		if (!VSHTEMPPATCHATTEMPT || !("SetPersistentVar" in getroottable())) return;
		#NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType", 1) # CTF
		::ISVSH <- true
		::PVEPointCenterRadius <- 1024
		#NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingKoth", true)
		local played_as_boss_already = []
		SetPersistentVar("played_as_boss", played_as_boss_already);
		ForeachBot(function(b) { played_as_boss_already.push(b) })
		if (!Entities.FindByClassname(null, "func_capturezone")) {
			# give the bots a valid target
			for (local e; e = Entities.FindByClassname(e, "trigger_capture_area");) {
				if (e.GetTeam() == 0) {
					local f = Entities.CreateByClassname("func_capturezone")
					f.SetSize(e.GetBoundingMins(), e.GetBoundingMaxs())
					f.SetOrigin(e.GetOrigin())
					f.SetAbsAngles(e.GetAbsAngles())
					PrecacheModel(e.GetModelName())
					f.SetModel(e.GetModelName())
					f.SetTeam(PVEBotTeam)
					f.DispatchSpawn()
					local g = Entities.CreateByClassname("team_round_timer")
					NetProps.SetPropString(g, "m_iszName", "zz_blue_koth_timer")
					g.DispatchSpawn()
				}
			}
		}
	}
	#RegisterEvent("player_connect", VSHHIJACK)
	RegisterEvent("teamplay_round_start", VSHHIJACK)
	RegisterEvent("teamplay_round_win", VSHHIJACK)
	RegisterEvent("Setup", VSHHIJACK)

	# stuck protection (very broken at the moment)
	// this does not do anything at the moment except accidentally warp bots whenever its not needed
	if (false) {
		::StuckProtectionTickRate <- 5 # when to tick
		::StuckProtectionTickRequirement <- 4 # after how many ticks are you actually stuck?
		::StuckProtectionTick <- 0
		RegisterEvent("Update", function(params) {
			if (StuckProtectionTick + StuckProtectionTickRate > Time()) return;
			::StuckProtectionTick <- Time()
			ForeachBot(function(b) {
				local s = UTILGetScriptScope(b)
				if (b.GetLocomotionInterface().IsStuck()) {
					if (!PVEIsOnDedicatedServer)
						DebugDrawBox(b.GetOrigin(), Vector(-4, -4, -4), Vector(4, 4, 4), 255, 128, 0, 1, 5)
					if (!("__PVE_STUCK_TICK__" in s)) {
						s.__PVE_STUCK_TICK__ <- 1
					} else if (s.__PVE_STUCK_TICK__ > StuckProtectionTickRequirement) { # only increment if stuck
						UTILRespawn(b)
						b.RemoveAllObjects(true)
					} else {
						s.__PVE_STUCK_TICK__ += 1
					}
				} else {
					s.__PVE_STUCK_TICK__ <- 0
				}
			})
		})
	}
	# spawn camp protection
	if (true) {
		::PVESoftSpawnCampProtectionEnabled <- true
		::PVEHealthPerDeathPoint <- 25 # 5 # health boost per tick
		::PVEDamagePerDeathPoint <- 0.2 # 5 # damage bonus
		::PVEDeathPointTickDown <- 2 # 3 # how often to for check trickle down
		::PVEDeathPointThreshhold <- 5 # 5 # enable after this many deaths in a row
		::PVEDeathPointLastTick <- 0
		::PVESpawncampWarned <- 0
		::PVESpawncampThreshhold <- 5
		RegisterEvent("Update", function (params) {
			if (PVEDisabled || !Mv1kUChangesEnabled) return;
			if (PVEDeathPointLastTick + PVEDeathPointTickDown > Time()) return;
			::PVEDeathPointLastTick <- Time()
			ForeachPlayer(function(p) {
				local s = UTILGetScriptScope(p)
				if (!("__PVE_DEATH_TICK__" in s)) {
					s.__PVE_DEATH_TICK__ <- 0
				} else if (s.__PVE_DEATH_TICK__ > 0 && NetProps.GetPropInt(p, "m_Shared.m_iSpawnRoomTouchCount") == 0) { # only decrement if the player is not inside a spawn room
					s.__PVE_DEATH_TICK__ -= 1
				}
			})
		})
		RegisterEvent("player_death", function(params) {
			if (PVEDisabled || !Mv1kUChangesEnabled) return;
			local player = GetPlayerFromUserID(params.userid)
			if (player != null && player.IsValid() && player.IsFakeClient()){
				local s = UTILGetScriptScope(player)
				if (!("__PVE_DEATH_TICK__" in s)) s.__PVE_DEATH_TICK__ <- 0;
				if (!("__PVE_DEATHS_IN_RESPAWNROOM__" in s)) s.__PVE_DEATHS_IN_RESPAWNROOM__ <- 0;
				s.__PVE_DEATH_TICK__ += 1
				if (NetProps.GetPropInt(player, "m_Shared.m_iSpawnRoomTouchCount") > 0) {
					s.__PVE_DEATHS_IN_RESPAWNROOM__ += 1
					if (s.__PVE_DEATHS_IN_RESPAWNROOM__ > PVESpawncampThreshhold && PVESpawncampWarned < s.__PVE_DEATHS_IN_RESPAWNROOM__) {
						::PVESpawncampWarned <- s.__PVE_DEATHS_IN_RESPAWNROOM__
						if (PVEDebugPrint)
							printl("[PVESPAWNCAMPWARNING] " + PVESpawncampWarned.tostring() + " " + PVEGetTimestamp())
						if (PVESpawncampWarned > 10) ::PVESpawncampWarned <- 999999 # no more warnings after 10
					}
				} else {
					s.__PVE_DEATHS_IN_RESPAWNROOM__ = 0
				}
			}
		})
		# temp: spawncamp protection (the boring way)
		::PVESpawncampInvulnDuration <- 1.25
		# spawncamp protection (the complicated way)
		RegisterEvent("post_inventory_application", function(params) {
			if (PVEDisabled || !PVESoftSpawnCampProtectionEnabled || !Mv1kUChangesEnabled) return;
			local player = GetPlayerFromUserID(params.userid)
			if (player != null && player.IsFakeClient()){
				# add hidden uber until health buff (because if bots die during equip there will be problems)
				player.AddCond(51)
				RunDelayedForPlayer(player, function(){
					RunDelayedForPlayer(player, function(){
						local s = UTILGetScriptScope(player)
						if (!("__PVE_DEATH_TICK__" in s)) return;
						if (PVEDeathPointThreshhold < s.__PVE_DEATH_TICK__ && GetMapName() != "koth_viaduct_event" && GetMapName() != "koth_lakeside_event"){
							player.SetHealth(player.GetHealth() + (s.__PVE_DEATH_TICK__ - PVEDeathPointThreshhold) * PVEHealthPerDeathPoint)
							player.AddCustomAttribute("damage bonus HIDDEN", 1+(s.__PVE_DEATH_TICK__ - PVEDeathPointThreshhold) * PVEDamagePerDeathPoint, 10 + (s.__PVE_DEATH_TICK__ - PVEDeathPointThreshhold))
							RunInNSteps(11, function(){
								player.SetHealth(player.GetHealth() + (s.__PVE_DEATH_TICK__ - PVEDeathPointThreshhold) * PVEHealthPerDeathPoint)
								player.AddCustomAttribute("damage bonus HIDDEN", 1+(s.__PVE_DEATH_TICK__ - PVEDeathPointThreshhold) * PVEDamagePerDeathPoint, 10 + (s.__PVE_DEATH_TICK__ - PVEDeathPointThreshhold))
							})
						}
						player.RemoveCond(51) # remove hidden uber after health buff
						player.AddCondEx(5, PVESpawncampInvulnDuration, player) # temp: add uber against camping for now
					})
				})
			}
		})
	}
	# currency modifications
	if (true) {
		# give players more money in the early game to compensate for spawncamp protection
		::PVECurrencyEarlyBoostLimit <- 4000.0
		::PVECurrencyEarlyBoost <- 1 # additive, 0 to disable
		::PVECurrencyLowpopBoostLimit <- 7.0 # no boost above this player count
		::PVECurrencyLowpopBoost <- 2 # additive, 0 to disable
		::PVECurrencyHighpopBreakThreshhold <- 16.0 # do not hinder until this many
		::PVECurrencyHighpopBreakDelta <- 8.0 # delta to max players
		::PVECurrencyHighpopBreak <- -0.5 # additive, 0 to disable
		# do not hook update, this does not need to be calculated this often
		RegisterEvent("player_spawn", function(params) {
			if (PVEDisabled || !Mv1kUChangesEnabled) return;
			if (PVECurrencyOnSpawn > PVECurrencyEarlyBoostLimit || PVECurrencyEarlyBoost == 0) {
				::PVECurrencyFactor <- 1
			} else {
				::PVECurrencyFactor <- 1 + ((PVECurrencyEarlyBoostLimit - PVECurrencyOnSpawn) / PVECurrencyEarlyBoostLimit) * PVECurrencyEarlyBoost
			}
			local humans = GetHumanCount()
			::PVECurrencyFactor <- PVECurrencyFactor + PVECurrencyLowpopBoost * (humans < PVECurrencyLowpopBoostLimit ? (PVECurrencyLowpopBoostLimit - humans) / PVECurrencyLowpopBoostLimit : 0)
			#ToDo: Enable this #::PVECurrencyFactor <- PVECurrencyFactor + PVECurrencyHighpopBreak * (humans > PVECurrencyHighpopBreakThreshhold ? (humans - PVECurrencyHighpopBreakThreshhold) / PVECurrencyHighpopBreakDelta : 0)
		})
	}
	# progressive upgrades
	if (true) {
		local primary_attributes = [
			{ name = "accuracy scales damage" value = 1} # will go up to 2
			{ name = "crit mod disabled hidden"     value = 0 } # will go back up to 1
			{ name = "ammo regen"                   value = 0 } # is percentage (make go up to 50%)
		]
		local melee_attributes = [
			{ name = "fire rate bonus"			value = 1 } # will go down to 0.6
			{ name = "Construction rate increased" value = 1 } # make go up to 6
			{ name = "Repair rate increased" value = 1 } # make go up to 3.5
			{ name = "crit mod disabled hidden"     value = 0 } # will go back up to 1
		]
		local player_attributes = [
			{ name = "metal regen"					value = 1000 }
			{ name = "maxammo metal increased"		value = 2.5 } # 500 max metal for the widowmaker to stop throwing errors
			{ name = "mod teleporter cost"			value = 0 } # this was 110000 but can be 0 now because teleporters are no longer a problem (fixed by abusing jank bot behavior checks)
			{ name = "cancel falling damage"  		value = 0 }
			{ name = "engy sentry fire rate increased" value = 1 } # will go down to 0.5 (is inverted)
			{ name = "engy building health bonus" value = 1 } # will go up to 1.5
			{ name = "move speed bonus" value = 1 } # will go up to 1.25
			{ name = "engy dispenser radius increased" value = 2 } # todo: make go up to 2.5
		]
		PVEClassOptions.dane_extra.primaries <- [
			# PRIMARIES
			{ id =   9 attributes = primary_attributes } # normal shotgun
			{ id = 527 attributes = primary_attributes } # widowmaker
			{ id = 141 attributes = primary_attributes } # frontier justice
			{ id = 588 attributes = primary_attributes } # pomson
			# SECONDARIES
			{ id = 528 attributes = primary_attributes weight = 0.5 } # the short circuit is not a primary but is used like one here
			{ id =  22 attributes = primary_attributes } # give the pistol as well to further reduce short circuit likelyhood
		]
		# short circuit as primary support
		::GivePlayerWeaponBaseSlotOnSlotList <- true
		WEAPON_SLOTS.tf_weapon_mechanical_arm = 0 # declare short circuit as a primary
		WEAPON_SLOTS.tf_weapon_laser_pointer = 0 # declare wrangler as a primary
		WEAPON_SLOTS.tf_weapon_pistol = 0 # declare pistol as a primary

		PVEClassOptions.dane_extra.melees <- [
			{ weight = 0.99 attributes = melee_attributes id = 7 }
			{ weight = 0.01 attributes = melee_attributes id = 1071 }
		]
		PVEClassOptions.dane_extra.maxhealth <- 175 # was 125
		PVEClassOptions.dane_extra.attributes <- player_attributes

		/*
			SPECIAL UPGRADE NAMES:
			- "[MAXHEALTH]": Increase maximum health (do not use the actual attribute please)
		*/
		# this may not be the best way of handling upgrades but it will have to work for now...
		# slot -1 is the player itself, slot 0 primary, slot 2 melee, slot 1 (they dont have pistols)
		::PVEProgressiveUpgradeList <- [
			# raise to 350 hp until 2000 currency is reached
			{ thresshold =  500 attribute = "[MAXHEALTH]" slot = -1 delta = 25 applied = false }
			{ thresshold =  750 attribute = "[MAXHEALTH]" slot = -1 delta = 25 applied = false }
			{ thresshold = 1000 attribute = "[MAXHEALTH]" slot = -1 delta = 25 applied = false }
			{ thresshold = 1250 attribute = "[MAXHEALTH]" slot = -1 delta = 25 applied = false }
			{ thresshold = 1500 attribute = "[MAXHEALTH]" slot = -1 delta = 25 applied = false }
			{ thresshold = 1750 attribute = "[MAXHEALTH]" slot = -1 delta = 25 applied = false }
			{ thresshold = 2000 attribute = "[MAXHEALTH]" slot = -1 delta = 25 applied = false }

			# increase the odds for a random crit (over time) (melee)
			{ thresshold = 1500 attribute = "crit mod disabled hidden" slot = 2 delta = 0.25 applied = false }
			{ thresshold = 2000 attribute = "crit mod disabled hidden" slot = 2 delta = 0.25 applied = false }
			{ thresshold = 2500 attribute = "crit mod disabled hidden" slot = 2 delta = 0.25 applied = false }
			{ thresshold = 3000 attribute = "crit mod disabled hidden" slot = 2 delta = 0.25 applied = false }
			# increase the odds for a random crit (over time) (primary)
			{ thresshold = 1500 attribute = "crit mod disabled hidden" slot = 0 delta = 0.25 applied = false }
			{ thresshold = 2000 attribute = "crit mod disabled hidden" slot = 0 delta = 0.25 applied = false }
			{ thresshold = 2500 attribute = "crit mod disabled hidden" slot = 0 delta = 0.25 applied = false }
			{ thresshold = 3000 attribute = "crit mod disabled hidden" slot = 0 delta = 0.25 applied = false }

			# accelerate the wrenches
			{ thresshold = 2500 attribute = "fire rate bonus" slot = 2 delta = -0.2 applied = false }
			{ thresshold = 3500 attribute = "fire rate bonus" slot = 2 delta = -0.2 applied = false }

			{ thresshold = 3750 attribute = "move speed bonus" slot = -1 delta = 0.125 applied = false }
			{ thresshold = 4750 attribute = "move speed bonus" slot = -1 delta = 0.125 applied = false }

			// NEW STUFF?
			# double sentry fire rate
			{ thresshold = 8000 attribute = "engy sentry fire rate increased" slot = -1 delta = -0.1 applied = false }
			{ thresshold = 9000 attribute = "engy sentry fire rate increased" slot = -1 delta = -0.1 applied = false }
			{ thresshold = 10000 attribute = "engy sentry fire rate increased" slot = -1 delta = -0.1 applied = false }
			{ thresshold = 11000 attribute = "engy sentry fire rate increased" slot = -1 delta = -0.1 applied = false }
			{ thresshold = 12000 attribute = "engy sentry fire rate increased" slot = -1 delta = -0.1 applied = false }

			# make sentries build faster
			{ thresshold =  4000 attribute = "Construction rate increased" slot = 2 delta = 1 applied = false }
			{ thresshold =  5000 attribute = "Construction rate increased" slot = 2 delta = 1 applied = false }
			{ thresshold =  6000 attribute = "Construction rate increased" slot = 2 delta = 1 applied = false }
			{ thresshold = 11000 attribute = "Construction rate increased" slot = 2 delta = 1 applied = false }
			{ thresshold = 12000 attribute = "Construction rate increased" slot = 2 delta = 1 applied = false }

			# make sentries harder to destroy while an engineer is repairing it
			{ thresshold =  6500 attribute = "Repair rate increased" slot = 2 delta = 0.5 applied = false }
			{ thresshold =  7500 attribute = "Repair rate increased" slot = 2 delta = 0.5 applied = false }
			{ thresshold =  8500 attribute = "Repair rate increased" slot = 2 delta = 0.5 applied = false }
			{ thresshold =  9500 attribute = "Repair rate increased" slot = 2 delta = 0.5 applied = false }
			{ thresshold = 10500 attribute = "Repair rate increased" slot = 2 delta = 0.5 applied = false }

			# 1.5 building health
			{ thresshold = 4500 attribute = "engy building health bonus" slot = -1 delta = 0.1 applied = false }
			{ thresshold = 5500 attribute = "engy building health bonus" slot = -1 delta = 0.1 applied = false }
			{ thresshold = 6500 attribute = "engy building health bonus" slot = -1 delta = 0.1 applied = false }
			{ thresshold = 7500 attribute = "engy building health bonus" slot = -1 delta = 0.1 applied = false }
			{ thresshold = 8500 attribute = "engy building health bonus" slot = -1 delta = 0.1 applied = false }

			# ammo regen for all primaries (this does not do much)
			{ thresshold = 4750 attribute = "ammo regen" slot = 0 delta = 0.1 applied = false }
			{ thresshold = 5750 attribute = "ammo regen" slot = 0 delta = 0.1 applied = false }
			{ thresshold = 6750 attribute = "ammo regen" slot = 0 delta = 0.1 applied = false }
			{ thresshold = 7750 attribute = "ammo regen" slot = 0 delta = 0.1 applied = false }
			{ thresshold = 8750 attribute = "ammo regen" slot = 0 delta = 0.1 applied = false }

			# make shotgun hits deal double damage if they hit multiple times in a row
			{ thresshold = 4250 attribute = "accuracy scales damage" slot = 0 delta = 0.2 applied = false }
			{ thresshold = 5250 attribute = "accuracy scales damage" slot = 0 delta = 0.2 applied = false }
			{ thresshold = 6250 attribute = "accuracy scales damage" slot = 0 delta = 0.2 applied = false }
			{ thresshold = 7250 attribute = "accuracy scales damage" slot = 0 delta = 0.2 applied = false }
			{ thresshold = 8250 attribute = "accuracy scales damage" slot = 0 delta = 0.2 applied = false }

			# no fall damage (they rarely fall but it may help them)
			{ thresshold = 8000 attribute = "cancel falling damage" slot = -1 delta = 1 applied = false }

			# IDEA: "bleeding duration"
			# IDEA: "active health regen"
			# IDEA: "projectile penetration" # does this hit through medic shields???
			# IDEA: "airblast vulnerability multiplier"
		]
		# apply upgrades earlier if there are more people online
		::PVEProgressiveUpgradeCurrencyBalanceForExtraPlayers <- 200
		# only check on player spawns for upgrade changes
		RegisterEvent("player_spawn", function(params) {
			if (PVEDisabled || !Mv1kUChangesEnabled) return;
			foreach (attr in PVEProgressiveUpgradeList) {
				if (attr.applied || attr.thresshold > PVECurrencyOnSpawn + PVEProgressiveUpgradeCurrencyBalanceForExtraPlayers) continue;
				if (!PVEIsOnDedicatedServer && PVEDebugPrint)
					foreach(k, v in attr) {
						if (k == "applied") continue;
						ClientPrint(null, 3, format("%s: %s", k.tostring(), v.tostring()))
					}
				attr.applied = true
				if (attr.attribute == "[MAXHEALTH]") {
					PVEClassOptions.dane_extra.maxhealth += attr.delta;
					continue;
				}
				local attriblist = []
				if (attr.slot == -1) attriblist = player_attributes
				if (attr.slot == 0) attriblist = primary_attributes
				if (attr.slot == 2) attriblist = melee_attributes
				foreach (attribute in attriblist) {
					if (attribute.name == attr.attribute) {
						attribute.value += attr.delta
						if (!PVEIsOnDedicatedServer && PVEDebugPrint)
							ClientPrint(null, 3, format("new value: %s", attribute.value.tostring()))
					}
				}
			}
		})
	}
	::PVEDisableMVM <- function() {
		local e = Entities.FindByClassname(null, "tf_logic_mann_vs_machine")
		if (e) {
			SteamIDInfoMessage.push("\x07FFFF00mvm to ctf conversion is still experimental.")
			::PVEForceDisable <- false
			::PVEMvmUpgrades <- true
			::PVEDisabled <- false
			::PVEAddTimer <- true # test
			::PVEUpgradeIncludeSpawnrooms <- true
			if (NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_iRoundState") == 10) {
				if (PVEIsOnDedicatedServer) {
					Convars.SetValue("mp_tournament_readymode", 1)
					NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingMannVsMachine", false)
				}
				TournamentStart()
			}
			RunNextStep(function(){
			RunNextStep(function(){
			RunNextStep(function(){
				# these entities are preserved so they only need to be deleted once.
				EntFire("tf_logic_mann_vs_machine", "Kill", "", 0, null)
				EntFire("info_populator", "Kill", "", 0, null)
				RunNextStep(function(){
					EntFire("func_upgradestation", "Kill", "", 0, null)
					RunNextStep(function(){
						NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingMannVsMachine", false)
						NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingHybrid_CTF_CP", true)
						NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType", 1 /*TF_GAMETYPE_CTF*/)
						RunCommand("sv_visiblemaxplayers -1")
						RunNextStep(function(){
							RunCommand("mp_tournament_restart")
							RunCommand("tf_bot_kick all")
							PVEClassOptions.dane_extra.bot_attributes <- Constants.FTFBotAttributeType.AGGRESSIVE
							RunNextStep(function(){
								PVERemoveUpgradeFN()
								RunNextStep(PVEAddUpgradeFN)
								#NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_iRoundState", 1)
								Convars.SetValue("mp_tournament", 0)
								Convars.SetValue("tf_flag_caps_per_round", 1)
								#::PVEPointCenter <- Entities.FindByClassname(null "func_capturezone")
								#::PVEPointCenterRadius <- 640 * 2.5
								#::ISVSH <- true # need to rename this variable
								RunNextStep(function(){
									PVELoadClassConfig("stock")
									//PVEClassOptions.dane_extra.cosmetics <- []
									//PVEClassOptions.dane_extra.model <- "models/bots/engineer/bot_engineer.mdl"
									RunNextStep(function(){
										PVELoadClassConfig("dane_extra")
										RunNextStep(function(){
											PVECalcHumanBotCount()
											RunNextStep(function(){
												try {
													__TEMP_SET_MP__(PVEHumanCount + PVEBotCount)
												} catch (e) {
													# just dont complain
													//if (!PVEIsOnDedicatedServer) {
													//	ClientPrint(null, 3, e)
													//	ClientPrint(null, 3, "if mayplayers is less than 70, you can ignore this")
													//}
												}
											})
										})
									})
								})
							})
						})
					})
				})
				RegisterEvent("teamplay_round_start", function(params) {
					for (local e; e = Entities.FindByClassname(e, "func_capturezone");) {
						if (e.GetTeam() != PVEBotTeam) {
							local f = Entities.CreateByClassname("func_capturezone")
							f.SetSize(e.GetBoundingMins(), e.GetBoundingMaxs())
							f.SetOrigin(e.GetOrigin())
							f.SetAbsAngles(e.GetAbsAngles())
							PrecacheModel(e.GetModelName())
							f.SetModel(e.GetModelName())
							f.SetTeam(PVEBotTeam)
							f.DispatchSpawn()
						}
					}
					# enable all bot hints avaliable
					EntFire("bot_hint*", "enable", "", 0, null)
					EntFire("bot_hint*", "setteam", PVEBotTeam.tostring(), 0, null)
					EntFire("item_teamflag", "SetReturnTime", "0", 5, null)
					RunNextStep(function(){
						ForeachBot(function(b){ UTILBotSetMissionSafe(b, 0, true) })
					})
					if ("PVECustomBotHints" in getroottable()) {
						local hintcount = 0
						foreach (hint in PVECustomBotHints) {
							local e = Entities.CreateByClassname("bot_hint_engineer_nest")
							NetProps.SetPropString(e, "m_iName", "PVEBotHint"+hintcount.tostring())
							e.SetOrigin(hint.nest_origin)
							e.SetAbsAngles(hint.nest_angles)
							e.SetTeam(PVEBotTeam)
							e.DispatchSpawn()
							EntFireByHandle(e, "enable", "", 0, e, e)
							local f = Entities.CreateByClassname("bot_hint_sentrygun")
							NetProps.SetPropString(f, "m_iName", "PVEBotHint"+hintcount.tostring())
							NetProps.SetPropBool(f, "m_isSticky", true)
							f.SetOrigin(hint.gun_origin)
							f.SetAbsAngles(hint.gun_angles)
							f.SetTeam(PVEBotTeam)
							f.DispatchSpawn()
							EntFireByHandle(f, "enable", "", 0, f, f)

							hintcount += 1
						}
					}
				})
				RegisterEvent("player_spawn", function(params) {
					if (PVEDisabled || Uncletopia1kuAccurate) return;
					local player = GetPlayerFromUserID(params.userid)
					PVEPlayerSetRobotModel(player)
				})
				RegisterEvent("post_inventory_application", function(params) {
					if (PVEDisabled || Uncletopia1kuAccurate) return;
					for (local e; e=Entities.FindByClassname(e, "tf_wearable");) {
						if (e.GetOwner() && !e.GetOwner().IsFakeClient()) {
							local id = NetProps.GetPropInt(e, "m_AttributeManager.m_Item.m_iItemDefinitionIndex")
							if ([231 642 608 405 444 133].find(id) == null) {
								e.Kill()
							}
						}
					}
				})
				::PVEFlagResetPositionFN <- function(){
					if (!("PVEFlagResetPosition" in getroottable())) return
					#EntFireByHandle(PVEIntelHandle, "ForceResetSilent", "", 1, PVEIntelHandle, PVEIntelHandle)
					# extra delay so we move the flag after it has reset
					RunInNSeconds(1.5, function(){
							PVEIntelHandle.SetAbsOrigin(PVEFlagResetPosition)
							EntFireByHandle(PVEIntelHandle, "Enable", "", 1, PVEIntelHandle, PVEIntelHandle)
					})
				}
				RegisterEvent("teamplay_round_start", function(params) {
					if (!PVEIntelHandle || !PVEIntelHandle.IsValid())
						::PVEIntelHandle <- null
					if (!PVEIntelHandle)
						::PVEIntelHandle <- Entities.FindByName(null, "intel")
					if (!PVEIntelHandle)
						::PVEIntelHandle <- Entities.FindByName(null, "classic_mode_intel")
					if (!PVEIntelHandle)
						::PVEIntelHandle <- Entities.FindByClassname(null, "item_teamflag")
					if (!PVEIntelHandle) {
						::PVEIntelHandle <- Entities.CreateByClassname("item_teamflag")
						PVEIntelHandle.SetTeam(PVEHumanTeam)
						EntFireByHandle(PVEIntelHandle, "enable", "", 5, PVEIntelHandle, PVEIntelHandle)
						NetProps.SetPropInt(PVEIntelHandle, "m_nType", 1) # TF_FLAGTYPE_ATTACK_DEFEND
						if ("PVEFlagResetPosition" in getroottable())
							PVEIntelHandle.SetAbsOrigin(PVEFlagResetPosition)
						PVEIntelHandle.DispatchSpawn()
					}
					PVEFlagResetPositionFN()
					if (!IsInWaitingForPlayers())
						EntFire("team_round_timer", "SetTime", "1", 1, null)
					if (!IsInWaitingForPlayers())
						for (local e; e = Entities.FindByClassname(e, "func_respawnroom");) {
							local f = SpawnEntityFromTable("trigger_add_tf_player_condition",{
								origin     = e.GetOrigin()
								angles     = e.GetAbsAngles()
								condition  = 51
								duration   = -1
								spawnflags = 1 // allow players only
							})
							f.SetSize(e.GetBoundingMins(), e.GetBoundingMaxs())
							PrecacheModel(e.GetModelName())
							f.SetModel(e.GetModelName())
							f.SetTeam(e.GetTeam())
							f.SetSolid(e.GetSolid())
							#f.DispatchSpawn()
							RunNextStep(function(){
								NetProps.SetPropInt(f, "m_nCondition", 51)
								NetProps.SetPropFloat(f, "m_flDuration", -1)
							})
						}
				})
				RegisterEvent("teamplay_flag_event", function(params) {
					if (!PVERunning || !PVEIntelHandle || !PVEIntelHandle.IsValid() || !PVEShouldUncletopiaCTFChangesBeEnabled()) return
					switch (params.eventtype) {
						case 2: # TF_FLAGEVENT_CAPTURE
						case 5: # TF_FLAGEVENT_RETURNED
						case 4: # TF_FLAGEVENT_DROPPED
							RunNextStep(PVEFlagResetPositionFN)
							break;
						case 1: # TF_FLAGEVENT_PICKUP
						case 3: # TF_FLAGEVENT_DEFEND
						default: # IDK
							break;
					}
				})
			})
			})
			})
		} else {
			Convars.SetValue("mp_tournament", 0)
		}
	}
	RunNextStep(function(){RunNextStep(function(){RunNextStep(PVEDisableMVM)})})
	# turn arena into koth
	::PVEArenaHijack <- false
	RunNextStep(function(){
		RunNextStep(function(){
			if (NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") == 4) { # ARENA
				SteamIDInfoMessage.push("\x07FFFF00arena to koth conversion is still experimental.")
				::PVEArenaHijack <- true
				::PVEUpgradeIncludeSpawnrooms <- true
				NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingKoth", true)
				NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType", 2) # CP
			}
		})
	})
	RegisterEvent("teamplay_round_start", function(params) {
		if (!PVEArenaHijack) return;
		local arena = Entities.FindByClassname(null, "tf_logic_arena")
		foreach (output in ["OnArenaRoundStart" "OnCapEnabled"]) {
			local count = EntityOutputs.GetNumElements(arena, output)
			for (local i=0; i < count; i++) {
				local table = {}
				EntityOutputs.GetOutputTable(arena, output, table, i)
				EntFire(table.target, table.input, table.parameter, table.delay, arena)
			}
		}
		RunNextStep(function(){
			arena.Kill()
			NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingKoth", true)
			NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType", 2) # CP
			local area = Entities.FindByClassname(null, "trigger_capture_area")
			local koth = Entities.CreateByClassname("tf_logic_koth")
			NetProps.SetPropString(koth, "m_iName", "tf_logic_koth")
			NetProps.SetPropInt(koth, "m_nTimeToUnlockPoint", 0)
			koth.DispatchSpawn()
			EntFire("tf_logic_koth", "RoundSpawn", "", 0, null)
			EntFire("tf_logic_koth", "RoundActivate", "", 1, null)
			EntFire("tf_gamerules", "SetBlueTeamGoalString", "#koth_setup_goal", 0, null)
			EntFire("tf_gamerules", "SetRedTeamGoalString", "#koth_setup_goal", 0, null)
			EntityOutputs.AddOutput(area, "OnCapTeam1", "tf_gamerules", "SetRedKothClockActive", "", 0, -1)
			EntityOutputs.AddOutput(area, "OnCapTeam2", "tf_gamerules", "SetBlueKothClockActive", "", 0, -1)
			RunNextStep(function(){
				::PVEFakeSetupTimeStart <- 1
				if (!IsInWaitingForPlayers())
					for (local e; e = Entities.FindByClassname(e, "func_respawnroom");) {
						local f = SpawnEntityFromTable("trigger_add_tf_player_condition",{
							origin     = e.GetOrigin()
							angles     = e.GetAbsAngles()
							condition  = 51
							duration   = -1
							spawnflags = 1 // allow players only
						})
						f.SetSize(e.GetBoundingMins(), e.GetBoundingMaxs())
						PrecacheModel(e.GetModelName())
						f.SetModel(e.GetModelName())
						f.SetTeam(e.GetTeam())
						f.SetSolid(e.GetSolid())
						#f.DispatchSpawn()
						RunNextStep(function(){
							NetProps.SetPropInt(f, "m_nCondition", 51)
							NetProps.SetPropFloat(f, "m_flDuration", -1)
						})
					}
			})
		})
	})
	# make engies build on passtime
	RegisterEvent("teamplay_round_start", function(params) {
		if (NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") == 7) { # TF_GAMETYPE_PASSTIME
			::ISVSH <- true
			::PVEPointCenter <- Vector(0,0,0)
			::PVEPointCenterRadius <- 0
			::PVEPointCenterRadiusOnNotOwned <- 1
			local dummy = Entities.CreateByClassname("func_capturezone")
			dummy.SetTeam(PVEBotTeam)
			dummy.DispatchSpawn()
			PVEGetAreasInRadiusCached(PVEPointCenter, PVEPointCenterRadius)
			PVEAreaCache.clear()
			for (local e; e = Entities.FindByClassname(e, "func_passtime_goalie_zone");) {
				if (e.GetTeam() == PVEHumanTeam) continue
				local areas = {}
				NavMesh.GetNavAreasOverlappingEntityExtent(e, areas)
				foreach (k, v in areas) {
					PVEAreaCache.push(v)
				}
			}
		}
	})
	// give engineer bots an opportunity to score
	RegisterEvent("pass_get", function(params) {
		if (PVEDisabled) return;
		local b = PlayerInstanceFromIndex(params.owner)
		if (b.IsFakeClient()) {
			for(local e; e = Entities.FindByClassname(e, "func_passtime_goal");) {
				if (e.GetTeam() == b.GetTeam() && NetProps.GetPropInt(e, "m_iGoalType") == 1) {
					local areas = {}
					local temp = []
					NavMesh.GetNavAreasOverlappingEntityExtent(e, areas)
					foreach (k, v in areas) {
						temp.push(v)
					}
					b.SetHomeArea(SelectWeighted(temp))
					RunNextStep(function(){
						UTILBotSetMissionSafe(b, 0)
						b.RemoveAllObjects(true)
					})
					break;
				}
			}
		}
	})

	::PVEMedievalBetweenRounds <- true # for debugging / crash prevention (this should not break anything... (right?))
	// This event is created on round start right before all players are respawned
	// todo: hook this instead of the stuff above
	# clean up everything from the prior round here
	::CurrentlyInMapReset <- false
	RegisterEvent("stats_resetround", function(params) {
		::CurrentlyInMapReset <- true
		// this should not be required but its better to be on the safe side
		foreach (classname in ["tf_we*" /*"tf_viewmodel"*/]) for (local e; e = Entities.FindByClassname(e, classname); ) {
			e.Kill()
		}
		if (PVEMedievalBetweenRounds) {
			NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingMedieval", true)
		}
	})
	# this event is created after all entities have been initialized
	# this is called after the map reloads but before players are respawned
	# clean up everything after map load here
	# all edicts cleared here are freed once this frame finishes
	RegisterEvent("recalculate_holidays", function(params) {
		if (!CurrentlyInMapReset) return;
		::CurrentlyInMapReset <- false
		::ENTKILL_FINISHED_ONCE <- false
		KillEnts() # clean up here so edicts are freed as soon as possible
	})
	RegisterEvent("teamplay_round_start", function(params) {
		if (PVEMedievalBetweenRounds) RunNextStep(function(){
			RunNextStep(function(){
				RunNextStep(function(){
					NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingMedieval", PVEMedievalEnabledByDefault)
					RunNextStep(function(){
						ForeachHuman(function(p){
							RunDelayed(function(){
								if (p && p.IsValid())
									p.Regenerate(false)
							})
						})
					})
				})
			})
		})
	})
	RegisterCommand("!restart", function(player, args) {
		#if (PVEMedievalBetweenRounds)
		#	NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingMedieval", true)
		Convars.SetValue("mp_restartgame", 5)
	}, " - Restart the current round")
	RegisterCommand("!rb", function(player, args) {
		ForeachBot(function(b){
			RunDelayed(function(){
				UTILRespawn(b)
			})
		})
	}, " - Reset all bots")
	# temp: prevent them from building teleporter exits
	// NOTE: This only works for engineers as their logic exits out before the check if they need to capture an objective.
	// this will probably break all other classes
	RegisterEvent("teamplay_round_start", function(params) {
		RunDelayed(function(){
			if (!IsAttackDefenseMode() && !IsInKothMode() && NetProps.GetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType") == 2 /*TF_GAMETYPE_CP*/) {
				# this messes too much with internal logic
				::PVEWasCp <- true
				NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType", 0 /*TF_GAMETYPE_UNKNOWN*/)
				NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nHudType", 2 /*TF_HUDTYPE_CP*/)
				#NetProps.SetPropBool(Entities.FindByClassname(null, "team_control_point_master"), "m_bSwitchTeamsOnWin", true) # force as attack / defend (breaks forcelinear)
			}
		})
	})
	::PVEInitRunOnce <- _ignore1 != null && _ignore2 != null
	if (PVEInitRunOnce) {
		if (PVEForceDisableReason == PVENavGenDisableReason) {
			ProcessCommand(_ignore1, "!nmg", ["!nmg"])
		} else {
			ProcessCommand(_ignore1, "!pve", ["!pve", "init"])
		}
		PVECalcHumanBotCount()
		RunNextStep(function(){
			MoveTeamAll()
		})
		RegisterEvent("teamplay_round_start", function(params) {
			if (!PVEInitRunOnce) return;
			::PVEInitRunOnce <- false
			PVECalcHumanBotCount()
			RunNextStep(function(){
				MoveTeamAll()
			})
		})
	}

	# sentry knockback fix at the cost of killfeed icons
	::TEMPENT <- Entities.FindByClassname(null, "soundent") # abusing soundent for one more thing
	RegisterEvent("OnScriptHook_OnTakeDamage", function(params) {
		if (PVEDisabled || !Mv1kUChangesEnabled) return;
		if ("inflictor" in params && params.inflictor.GetClassname() == "obj_sentrygun") {
			TEMPENT.SetAbsOrigin(params.inflictor.GetOrigin())
			params.inflictor <- TEMPENT
		}
	})

	# make gas passer only do one explosion per throw
	# todo: this is broken (again)
	::PVEGasPasserNerf <- false
	RegisterEvent("gas_doused_player_ignited", function(params) {
		if (PVEDisabled || !PVEGasPasserNerf || !Mv1kUChangesEnabled) return;
		local douser = PlayerInstanceFromIndex(params.douser)
		local victim = PlayerInstanceFromIndex(params.victim)
		local gascond = Constants.ETFCond.TF_COND_GAS
		local gasstr = "m_Shared.m_ConditionData." + gascond.tostring() + ".m_pProvider"
		RunNextStep(function(){
		ForeachPlayer(function(p) {
			if (p != victim && p.InCond(gascond)) {
				if (NetProps.GetPropEntity(p, gasstr)) {
					p.RemoveCond(gascond)
				}
			}
		})
		})
		for (local e; e=Entities.FindByClassname(e, "tf_gas_manager");) {
			if (e.GetOwner() == douser) {
				#printl(e)
				NetProps.SetPropInt(e, "m_iHealth", 0)
				e.Kill()
			}
		}
	})

	# reduce chat spam (2 lines less per bot than before)
	::RENAMENEWESTBOT <- null
	RegisterEvent("player_initial_spawn", function(params) {
		local player = PlayerInstanceFromIndex(params.index)
		if (!player || !player.IsValid() || !player.IsFakeClient()) return;
		# setting this here is apparently useless since this isnt read until player_team has been created
		NetProps.SetPropString(player, "m_szNetname", "")
		SetFakeClientConVarValue(player, "name", "")
		::RENAMENEWESTBOT <- player
	})
	RegisterEvent("player_team", function(params) {
		local player = GetPlayerFromUserID(params.userid)
		if (!player || !player.IsValid() || !player.IsFakeClient() || player != RENAMENEWESTBOT) return;
		# clear bot name here so it does not print the rename info
		NetProps.SetPropString(player, "m_szNetname", "")
		SetFakeClientConVarValue(player, "name", "")
		::RENAMENEWESTBOT <- null
	})

	# stupid idea: engi short circuit spam fire
	# this adds logic to all short circuits equipped by bots to automatically use
	# the secondary fire once primary fire is hit at the moment for 3 times per weapon equip
	# (so they need to take their wrenches before they can fire orbs again)
	// todo: polish and move to a better spot
	// todo: make configurable
	::PVEMechanicalArmOrbMaxSpamFires <- 3
	RegisterEvent("post_inventory_application", function(params){
		RunInNSeconds(1, function(){
			local player = GetPlayerFromUserID(params.userid);
			if (!PVERunning || !player || !player.IsFakeClient())
				return # only automatically fire for bots
			for (local i = 0; i < MAX_WEAPONS; i++) {
				local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
				if (heldWeapon == null)
					continue
				if (heldWeapon.GetClassname() != "tf_weapon_mechanical_arm")
					continue
				local scope = UTILGetScriptScope(heldWeapon)
				local orb_max_fires = PVEMechanicalArmOrbMaxSpamFires
				# actual logic for short circuit spam
				scope["orb_spam_fn"] <- function() {
					if (player.GetActiveWeapon() != self) {
						orb_max_fires = PVEMechanicalArmOrbMaxSpamFires # recharge
						return -1 # always check for opportunity to fire
					}
					if (orb_max_fires <= 0)
						return 1 # do not rerun as often when empty
					local buttons = NetProps.GetPropInt(player, "m_nButtons");
					if ((buttons & Constants.FButtons.IN_ATTACK) != 0) {
						self.SecondaryAttack() # fire
						orb_max_fires = orb_max_fires - 1 # deplete charge
						return 1 # not too often
					}
					return -1 # check every tick while active
				}
				AddThinkToEnt(heldWeapon, "orb_spam_fn")
				break;
			}
		})
	})

	# wrangler attack
	::DBGWranglerBehaviorResetDelay <- 0.1 # time until the behavior system has reset
	::DBGWranglerFireDelay <- 1 # time until the wrangler should fire
	::DBGWranglerMoveUpDelay <- 10 # time until engineers move up left behind gear
	# invalidate sentry position so they can move their gear up
	::DBGWranglersRegistered <- []
	::DBGWranglersInvalidate <- function(params) {
		for (local i = DBGWranglersRegistered.len()-1; i >= 0; i--) {
			if (!DBGWranglersRegistered[i] || !DBGWranglersRegistered[i].IsValid()) {
				DBGWranglersRegistered.remove(i)
			}
			UTILGetScriptScope(DBGWranglersRegistered[i]).experimental_wrangler_invalidate_position()
		}
	}
	PrecacheScriptSound("Engineer.MoveUp01")
	# checks for cp, pl, ctf and all deriving gamemodes
	RegisterEvent("payload_pushed", DBGWranglersInvalidate)
	RegisterEvent("teamplay_flag_event", DBGWranglersInvalidate)
	RegisterEvent("teamplay_point_captured", DBGWranglersInvalidate)
	RegisterEvent("post_inventory_application", function(params){
		RunInNSeconds(1, function(){
			local player = GetPlayerFromUserID(params.userid);
			if (!PVERunning || !player || !player.IsFakeClient())
				return # only automatically fire for bots
			for (local i = 0; i < MAX_WEAPONS; i++) {
				local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
				if (heldWeapon == null)
					continue
				if (heldWeapon.GetClassname() != "tf_weapon_laser_pointer")
					continue
				local scope = UTILGetScriptScope(heldWeapon)
				if ("experimental_wrangler_reset" in scope) {
					scope.experimental_wrangler_reset()
					return; // do not overwrite functions
				}
				DBGWranglersRegistered.push(heldWeapon)
				local mygun = null
				local mydisp = null
				local attack = false
				local last_attack = false
				local attack_ready = false
				local invalidated = false
				scope["experimental_wrangler_reset"] <- function() {
					mygun = null
					mydisp = null
					attack = false
					last_attack = false
					attack_ready = false
				}

				// variables required for position invalidation
				// max distance (walking) from point before moving
				local sentry_objective_distance = Convars.GetInt("tf_bot_engineer_max_sentry_travel_distance_to_point")
				local sentry_objective_distance_squared = sentry_objective_distance * sentry_objective_distance
				// max fire range of the sentry (not accounting for wrangler / attributes)
				local sentry_range = 1100.0
				local sentry_range_squared = 1210000.0

				scope["experimental_wrangler_invalidate_position"] <- function() {
					if (mygun == null || !mygun.IsValid()) return; // no gun to check
					if (("PVEAreaFnCalledOnce" in getroottable() && PVEAreaFnCalledOnce)) return; // sentry positioning overwritten by script, dont check

					for (local e; e = Entities.FindByClassname(e, "team_control_point");) {
						if (e.GetTeam() == player.GetTeam()) # we are interested in points not owned by us
							continue;
						if ((e.GetOrigin() - mygun.GetOrigin()).LengthSqr() < sentry_objective_distance) {
							// we are still close enough to the point
							return;
						}
					}
					for (local e; e = Entities.FindByClassname(e, "func_capturezone");) {
						if (e.GetTeam() == ((player.GetTeam() == 2) ? 3 : 2)) # we are interested in our capture zone(s ? )
							continue;
						if ((e.GetCenter() - mygun.GetOrigin()).LengthSqr() < sentry_objective_distance) {
							// we are still close enough to the capture zone
							return;
						}
					}
					for (local e; e = Entities.FindByClassname(e, "mapobj_cart_dispenser");) {
						if (e.GetTeam() == player.GetTeam()) # we are interested in the opposing cart
							continue;
						if ((e.GetOrigin() - mygun.GetOrigin()).LengthSqr() < sentry_range_squared) {
							// we are still close enough to the cart
							return;
						}
					}

					invalidated = true
				}
				scope["experimental_wrangler_fn"] <- function() {
					if (!mygun || !mygun.IsValid()) {
						mygun = null
						invalidated = false
						for (local e; e=Entities.FindByClassname(e, "obj_sentrygun");) {
							if (NetProps.GetPropEntity(e, "m_hBuilder") == player) {
								mygun = e
							}
						}
					}
					if (!mydisp || !mydisp.IsValid()) {
						mydisp = null
						for (local e; e=Entities.FindByClassname(e, "obj_dispenser");) {
							if (NetProps.GetPropEntity(e, "m_hBuilder") == player) {
								mydisp = e
							}
						}
					}
					local buttons = NetProps.GetPropInt(player, "m_nButtons");
					if (!mygun) {
						attack = false
					} else if (!attack && !invalidated && // dont recheck if already attacking or out of position
						NetProps.GetPropInt(mygun, "m_iHealth") == NetProps.GetPropInt(mygun, "m_iMaxHealth") &&
						NetProps.GetPropInt(mygun, "m_iUpgradeLevel") == 3 /*NetProps.GetPropInt(mygun, "m_iHighestUpgradeLevel")*/ && // ignore minis in logic
						NetProps.GetPropInt(mygun, "m_iAmmoShells") >= 100 && // only change to attack mode if sentry has enough bullets
						NetProps.GetPropInt(mygun, "m_iAmmoRockets") >= 10 && // assume at least half full
						!!(buttons & Constants.FButtons.IN_DUCK) && # require bot ducking (next to its nest)
						!NetProps.GetPropBool(mygun, "m_bHasSapper") && # dont attack while sapped
						(!mydisp || ( # only check if dispenser exists
							NetProps.GetPropInt(mydisp, "m_iHealth") == NetProps.GetPropInt(mydisp, "m_iMaxHealth") && # level up dispenser if required
							NetProps.GetPropInt(mydisp, "m_iUpgradeLevel") == 3
						))
					) { // sentry is healed and ready to fire
						attack = true
						return 1 # give chance to build a dispenser
					}
					if (attack != last_attack) {
						last_attack = attack
						if (attack) {
							#printl("ATTACK!!!")
							local c = player.GetPlayerClass() # this should always be 9 (engineer)
							player.SetPlayerClass(1) # set to scout to avoid building behavior
							UTILBotSetMissionSafe(player, 0, true) # reset behavior system
							player.Weapon_Switch(self)
							RunInNSeconds(DBGWranglerBehaviorResetDelay, function(){
								#printl("classchangeback")
								player.SetPlayerClass(c)
							})
							#RunInNSeconds(DBGWranglerFireDelay, function(){
							#	attack_ready = true # prevent bots from rocket jumping
							#})
							return -1 # dont attack till next frame
						} else {
							#printl("RESET!!!")
							#RunInNSeconds(1, function() {
							UTILBotSetMissionSafe(player, 0, true)
							player.Weapon_Switch(WeaponSlotGet(player, 2))
							#}) # reset behavior system
							attack_ready = false
						}
					}
					if (player.GetActiveWeapon() != self) {
						if (attack) {
							#print(buttons)
							attack = 0 == (buttons & Constants.FButtons.IN_DUCK) # reset if ducking (still trying to upgrade)
							last_attack = attack # reapply changes if required
							#printl(attack)
							#attack_ready = false
							if (!attack || (player.GetActiveWeapon() && player.GetActiveWeapon().GetClassname() == "tf_weapon_builder")) return 1 # retry later if still upgrading
							buttons = Constants.FButtons.IN_DUCK # dont fire when changing from the wrench
							player.Weapon_Switch(self)
							attack_ready = true # prevent bots from rocket jumping
						} else {
							return 1 # do not check if inactive
						}
					}
					if (/*attack_ready && */(buttons & Constants.FButtons.IN_ATTACK) != 0 && (buttons & Constants.FButtons.IN_DUCK) == 0) {
						self.SecondaryAttack() # fire rockets
					} else if (invalidated) {
						attack = false # our position has be invalidated, let the engie realize this too
					}
					# prevent bots from moving so they stay at their sentries
					if (attack) {
						player.StunPlayer(1, 1, 5, player) # stun movement no effects
						player.GetLocomotionInterface().ClearStuckStatus("Standing still")
						if (NetProps.GetPropInt(mygun, "m_iAmmoShells") == 0 ||
							NetProps.GetPropInt(mygun, "m_iAmmoRockets") == 0 ||
							NetProps.GetPropInt(mygun, "m_iHealth") < 50 ||
							NetProps.GetPropBool(mygun, "m_bHasSapper") ||
							(mydisp && NetProps.GetPropBool(mydisp, "m_bHasSapper"))
						) {
							attack = false # stop attacking to repair
						}
					}
					return -1 # check every tick while active
				}
				AddThinkToEnt(heldWeapon, "experimental_wrangler_fn")
				break;
			}
		})
	})

	CollectEventSetup() // new events are hooked in here so recollect all events

	# TEMP, MOVE THIS SOMEWHERE BETTER
	# clean up some persistant entities here
	//foreach (classname in ["tf_mann_vs_machine_stats" "tf_logic_medieval" "env_sun"]) EntFire(classname, "Kill", "", 0, null)
}
# has ApplyBase1kuPreset been called before
::PresetAppliedBase1ku <- false
# should mv1ku changes be enabled
::Mv1kUChangesEnabled <- true
# make changes most accurate to official 1ku
# note: most (all I guess) global (non map specific) changes have been implemented by other systems alredy
::Uncletopia1kuAccurate <- false
::NavmeshFixes <- true # make more maps work with autogenerated navmeshes (currently only brew)
::Apply1kuPreset <- function(player=null, args=null) {
	if (MaxClients().tointeger() - GetHumanCount() >= 40 && MaxClients().tointeger() < 64 && PVEBotCountOverride <= 0) {
		::PVEBotCountOverride <- 40
	} else if (MaxClients().tointeger() - GetHumanCount() < 40) {
		::PVEBotCountOverride <- MaxClients().tointeger() - GetHumanCount()
		ClientPrint(player, 3, format("maxplayers is less than %d!", 40 + GetHumanCount()))
		ClientPrint(player, 3, "only adding " + PVEBotCountOverride.tostring() + " bots.")
	}
	# replace with names used on uncletopia
	DaneNames.clear()
	foreach (name in [
		"Uncle Frames"
		"Uncle Brain"
		"Uncle Lane"
		"Uncle Rain"
		"Uncle Grain"
		"Uncle Slain"
		"Uncle Crane"
		"Uncle Strain"
		"Uncle Vain"
		"Uncle Train"
		"Uncle Stain"
		"Uncle Bens"
		"Uncle Insane"
		"Uncle Buck"
		"Uncle Leo"
		"Uncle Fester"
		"Uncle Pain"
		"Uncle Fred"
		"Uncle Whole Grain"
		"Uncle Oscar"
		"Uncle Phil"
		"Uncle Jesse"
		"Uncle Lame"
		"Uncle Flame"
		"Uncle Same"
		"Uncle Cocaine"
		"Uncle Buster"
		"Uncle Frank"
		"Uncle Funkle"
		"Uncle Remus"
		"Uncle Tom"
		"Uncle Bobby"
		"Uncle Joe"
		"Uncle Junior"
		"Uncle Elroy"
		"Uncle Owen"
		"Uncle Dursley"
		"Uncle Al"
		"Uncle Aeroplane"
		"Uncle G-Man"
		"Uncle Red Shirt"
		"Uncle Lazer"
		"Uncle Drain"
		"Uncle Rain"
		"Uncle Feign"
		"Uncle Arcane"
		"Uncle Propane"
		"Uncle Claim"
		"Uncle Plain"
		"Uncle Ukraine"
		"Uncle Explain"
		"Uncle Strange"
		"Uncle Lil Wayne"
	]) DaneNames.push(name)
	::Uncletopia1kuAccurate <- true
	::Mv1kUChangesEnabled <- false
	::PVEMvmUpgrades <- false
	PVEAddUpgradeFN()
	PVERemoveUpgradeFN()
	if (PresetAppliedBase1ku) {
		PVELoadClassConfig("dane")
		return;
	}
	::GivePlayerWeaponRecycleNew <- false # original 1ku does not recycle weapons
	::SteamIDInfoMessage <- [] // reset info message
	ApplyBase1kuPreset(player, args)
	::PVEPointCaptureTimeOverwrite <- 0 # do not modify control point times by default
}
::Applymv1kuPreset <- function(player=null, args=null){
	if (MaxClients().tointeger() - GetHumanCount() >= 40 && MaxClients().tointeger() < 64 && PVEBotCountOverride <= 0) {
		::PVEBotCountOverride <- 40
	} else if (MaxClients().tointeger() - GetHumanCount() < 40) {
		::PVEBotCountOverride <- MaxClients().tointeger() - GetHumanCount()
		ClientPrint(player, 3, format("maxplayers is less than %d!", 40 + GetHumanCount()))
		ClientPrint(player, 3, "only adding " + PVEBotCountOverride.tostring() + " bots.")
	}
	::GivePlayerWeaponRecycleNew <- true # do not regenerate weapons if they can be recycled
	::Uncletopia1kuAccurate <- false
	::Mv1kUChangesEnabled <- true
	::PVEMvmUpgrades <- true
	PVEAddUpgradeFN()
	PVERemoveUpgradeFN()
	if (PresetAppliedBase1ku) {
		PVELoadClassConfig("dane_extra")
		return;
	}
	::SteamIDInfoMessage <- [
		"\x07FFFFFFUpgrades are available at resupply cabinets."
	]
	ApplyBase1kuPreset(player, args)
}
RegisterCommand("!1ku", Apply1kuPreset, "init 1ku")
RegisterCommand("!mv1ku", Applymv1kuPreset, "init mv1ku")
::PVE1kuChallenges <- { #TODO: TEST IF THIS WORKS FOR MV1KU
	full = {
		modifier = function(){
			::PVEBotCountOverride <- MaxClients().tointeger() - GetHumanCount()
			KillEnts(); // clean up early to count how many edicts are used
			RunNextStep(function(){
				/* entity count assumptions
				required: player, iss, w1, w3, w5, c1,c2,c3, sentry, dispenser, trigger
				conservative guess: 10 edicts required per bot (7 without cosmetics)
				optimally have **at least** 300 edicts of breathing room for gameplay
				assuming 1 player there should not be more chaos than 300 edict slots can handle
				*/
				local ec = 1 // count world
				for (local e; e = Entities.Next(e);) {
					if (e.entindex()) ec++ // only count entities owning an edict
				}
				if (ec > 700) {// 2000 - 1000 - 300
					PVEClassOptions.dane.cosmetics.clear() // sacrifice cosmetics for stability
					PVEClassOptions.dane_extra.cosmetics.clear() // mv1ku compat
				}
			})
			RunInNSeconds(2, function(){
				// safety check, always recycle weapons with this many bots
				::GivePlayerWeaponRecycleNew <- true
			})
		}
		info = "Fill all available player slots with bots"
	}
	scramble = {
		modifier = function(){
			RunInNSeconds(5, function(){
				RunCommand("mp_scrambleteams")
			})
			RunInNSeconds(15, function(){
				RunCommand("mp_scrambleteams")
			})
		}
		info = "scramble teams (uncle vs uncle)"
	}
	allweapons = {
		modifier = function(){
			# todo: rescue ranger / panic attack (would these add anything meaningful?)
			PVEClassOptions.dane.primaries = [/*PRIMARIES*/ 9 527 141 588 /*SECONDARIES*/ 22 140 528]
			RunInNSeconds(2, function() { # mv1ku compat
				# extra logic for progressive upgrades
				local attribs = PVEClassOptions.dane_extra.primaries[0].attributes # if this fails, something else failed already
				PVEClassOptions.dane_extra.primaries = []
				foreach (weaponID in PVEClassOptions.dane.primaries) {
					PVEClassOptions.dane_extra.primaries.push({ id=weaponID attributes=attribs})
				}
				::GivePlayerWeaponRecycleNew <- false # always cycle between weapons
			})
		}
		info = "let uncles choose between all primaries and secondaries"
	}
	secondaries = {
		modifier = function(){
			PVEClassOptions.dane.primaries = [/*SECONDARIES*/ 22 140 528]
			RunInNSeconds(2, function() { # mv1ku compat
				# extra logic for progressive upgrades
				local attribs = PVEClassOptions.dane_extra.primaries[0].attributes # if this fails, something else failed already
				PVEClassOptions.dane_extra.primaries = []
				foreach (weaponID in PVEClassOptions.dane.primaries) {
					PVEClassOptions.dane_extra.primaries.push({ id=weaponID attributes=attribs})
				}
				::GivePlayerWeaponRecycleNew <- false # always cycle between weapons
			})
		}
		info = "let uncles choose between all secondaries"
	}
	wrangler = {
		modifier = function(){
			PVEClassOptions.dane.primaries = [140] # wrangler ID
			RunInNSeconds(2, function() { # mv1ku compat
				PVEClassOptions.dane_extra.primaries = [140] # progressive upgrades dont apply here
			})
		}
		info = "give the bots only the wrangler"
	}
	sc = {
		modifier = function(){
			PVEClassOptions.dane.primaries = [528] # short circuit ID
			RunInNSeconds(2, function() { # mv1ku compat
				PVEClassOptions.dane_extra.primaries = [528] # progressive upgrades dont apply here
			})
		}
		info = "give the bots only the short circuit"
	}
}
::Apply1kuChallenge <- function(player, args) {
	if (args.len() <= 1) {
		ClientPrint(player, 3, "Unofficial one thousand uncles challenges");
		ClientPrint(player, 3, "These challenges are leftovers from experimental features");
		ClientPrint(player, 3, "They may be unstable or cause chaos");
		ClientPrint(player, 3, "Challenges currently available: ");
		foreach(k, v in PVE1kuChallenges) {
			ClientPrint(player, 3, format("\x07FFFFFF	%s - %s", k, v.info))
		}
		ClientPrint(player, 3, format("to select a challenge run: %s [CHALLENGE]", args[0]));
		return;
	}
	if (!(args[1] in PVE1kuChallenges)) {
		ClientPrint(player, 3, format("Challenge %s not recognized!", args[1]));
		ClientPrint(player, 3, "Challenges currently available: ");
		foreach(k, v in PVE1kuChallenges) {
			ClientPrint(player, 3, format("\x07FFFFFF	%s - %s", k, v.info))
		}
		return;
	}
	PVE1kuChallenges[args[1]].modifier()
	RunInNSeconds(1, function(){
		if (args[0] == "!1kuchallenge") {
			Apply1kuPreset(player, args);
		} else if (args[0] == "!mv1kuchallenge") {
			Applymv1kuPreset(player, args);
		} else {
			ClientPrint(player, 3, "How did you run this command?")
		}
	})
}
RegisterCommand("!1kuchallenge", Apply1kuChallenge, "EXPERIMENTAL: Apply challenge modifiers for 1ku")
RegisterCommand("!mv1kuchallenge", Apply1kuChallenge, "EXPERIMENTAL: Apply challenge modifiers for mv1ku")
// very ugly alias implementation for legacy purposes
RegisterCommand("!1kutest", function(player, args) {
	args[0] = "!mv1ku"
	ProcessCommand(player, "!mv1ku", args)
}, "ALIAS: Apply mv1ku preset")

::DbgPointDisp <- false
::DbgPointDispRegistered <- false
RegisterCommand("!dbgpoints", function(player, args) {
	::DbgPointDisp <- !DbgPointDisp
	for (local e; e = Entities.FindByClassname(e, "team_control_point");) {
		local point_descriptor = ""
		point_descriptor += e.tostring()
		point_descriptor += ":"
		point_descriptor += NetProps.GetPropInt(e, "m_iPointIndex").tostring()
		point_descriptor += " - "
		point_descriptor += e.GetOrigin().tostring()
		point_descriptor += " - "
		point_descriptor += e.GetTeam().tostring()
		ClientPrint(player, 3, point_descriptor)
	}
	if (!DbgPointDispRegistered) {
		RegisterEvent("Update", function(params) {
			if (!DbgPointDisp) return;
			local colors = [
				Vector(128, 0, 128)
				Vector(64, 64, 64)
				Vector(255, 0, 0)
				Vector(0, 0, 255)
				Vector(255, 0, 255)
				Vector(255, 0, 255)
			]
			local sentry_range = ("PVEAreaFnCalledOnce" in getroottable() && PVEAreaFnCalledOnce) ? 128 : Convars.GetInt("tf_bot_engineer_max_sentry_travel_distance_to_point")
			for (local e; e = Entities.FindByClassname(e, "team_control_point");) {
				DebugDrawCircle(e.GetOrigin(), Vector(255, 0, 0), 1, sentry_range, true, FrameTime() * 2)
				DebugDrawCircle(e.GetOrigin(), colors[e.GetTeam()], 1.0, 16, false, FrameTime() * 2)
				DebugDrawCircle(e.GetOrigin(), colors[e.GetTeam()] + Vector(0, 128, 0), 0.5, 24, true, FrameTime() * 2)
			}
			for (local e; e = Entities.FindByClassname(e, "func_capturezone");) {
				if (e.GetTeam() == PVEBotTeam)
					DebugDrawCircle(e.GetCenter(), Vector(255, 0, 255), 1, sentry_range, true, FrameTime() * 2)
				else
					DebugDrawCircle(e.GetCenter(), Vector(255, 255, 0), 1, sentry_range, true, FrameTime() * 2)
			}
			for (local e; e = Entities.FindByClassname(e, "mapobj_cart_dispenser");) {
				if (e.GetTeam() == PVEBotTeam)
					DebugDrawCircle(e.GetCenter(), Vector(255, 0, 255), 1, sentry_range, true, FrameTime() * 2)
				else
					DebugDrawCircle(e.GetCenter(), Vector(255, 255, 0), 1, sentry_range, true, FrameTime() * 2)
			}
			if ("PVEPointCenter" in getroottable() && PVEPointCenter && PVEPointCenterRadius)
				DebugDrawCircle(PVEPointCenter, Vector(0, 255, 255), 1, PVEPointCenterRadius, true, FrameTime() * 2)
			for (local e; e = Entities.FindByClassname(e, "func_passtime_goalie_zone");) {
				DebugDrawText(e.GetCenter(), e.tostring() + e.GetTeam().tostring(), false, FrameTime() * 2)
			}
		})
		::DbgPointDispRegistered <- true
	}
})
RegisterCommand("!warpbots", function(player, args) {
	ForeachBot(function(b){
		b.SetAbsOrigin(player.GetOrigin())
	})
})
RegisterCommand("!showall", function(player, args) {
	ForeachPlayer(function(p){NetProps.SetPropBool(p, "m_bGlowEnabled", true)})
}, "Enable glow for all players")
# todo: add more info to this
RegisterCommand("!mapinfo", function(player, args) {
	# for testing
	# script NetProps.SetPropInt(Entities.FindByClassname(null, "tf_gamerules"), "m_nGameType", 3) # pl

	local gamerules = Entities.FindByClassname(null, "tf_gamerules")
	local gametype = NetProps.GetPropInt(gamerules, "m_nGameType")
	local hudtype = NetProps.GetPropInt(gamerules, "m_nHudType")

	ClientPrint(player, 3, format("GameType: %s [%d]",
		[
			"TF_GAMETYPE_UNDEFINED",
			"TF_GAMETYPE_CTF",
			"TF_GAMETYPE_CP",
			"TF_GAMETYPE_ESCORT",
			"TF_GAMETYPE_ARENA",
			"TF_GAMETYPE_MVM",
			"TF_GAMETYPE_RD",
			"TF_GAMETYPE_PASSTIME",
			"TF_GAMETYPE_PD",
			"TF_GAMETYPE_COUNT",
		][gametype],
		gametype
	))
	ClientPrint(player, 3, format("HudType: %s [%d]",
		[
			"TF_HUDTYPE_UNDEFINED",
			"TF_HUDTYPE_CTF",
			"TF_HUDTYPE_CP",
			"TF_HUDTYPE_ESCORT",
			"TF_HUDTYPE_ARENA",
			"TF_HUDTYPE_TRAINING",
		][hudtype],
		hudtype
	))
	ClientPrint(player, 3, "IsAttackDefenseMode: " + IsAttackDefenseMode().tostring())
	ClientPrint(player, 3, "IsInKothMode: " + IsInKothMode().tostring())
})
RegisterCommand("!resetbots", function(player, args) {
	ClientPrint(player, 3, "resetted")
	ForeachBot(function(b){
		b.Regenerate(true)
		b.SetHomeArea(null)
	})
})
# DEBUG LOGGING OF THE NEXT LEVEL
RegisterEvent("server_cvar", function(params) {
	if (PVEDebugPrint && params.cvarname == "nextlevel") {
		printl("[NEXTLEVELINFO] " + params.cvarvalue.tostring())
	}
})

if (PVEIsOnDedicatedServer) {
	::DebugDrawCircle <- function(center, rgb, alpha, radius, ztest, duration) {}
}

::PVEScrambled <- false
# scrambleteam support (EXPERIMENTAL)
RegisterEvent("teamplay_alert", function(params) {
	if (params.alert_type == 0) { # HUD_ALERT_SCRAMBLE_TEAMS
		#ClientPrint(null, 3, "Scrambling teams...")
		::PVEHumanTeam <- TEAM_ATTACK
		::PVEBotTeam <- TEAM_DEFEND
		::PVEMoveTeamDisabled <- true
		::PVEAllowHumansInBotTeam <- true
		::PVEForceBotSpawnLocationDisabled <- false
		::PVEScrambled <- true
		::PVEAllowBotsInNonBotTeam <- true
		::PVETreatNonCosmeticRedPlayersAsBots <- false
		Convars.SetValue("mp_humans_must_join_team", "any")
		#Convars.SetValue("mp_autoteambalance", 1)
		#Convars.SetValue("mp_teams_unbalance_limit", 1)
		Convars.SetValue("mp_forceautoteam", 0)
		::PVERedImmediateRespawn <- false
		::PVEBluImmediateRespawn <- false
		#::PVEDisableCtfRED <- false
		#::PVEUncletopiaCTFChanges <- false
		::PVEEnableFakeSetup <- false
		::PVEForceEnableFakeSetup <- false
		::PVEFakeSetupTimeStart <- 1
	}
})

RegisterCommand("!dbgportals", function(player, args) {
	for (local e; e = Entities.FindByClassname(e, "func_areaporta*");) {
		print(NetProps.GetPropEntity(e, "m_target"))
		print(" <-> ")
		print(e)
		print("(")
		print(NetProps.GetPropInt(e, "m_state"))
		printl(")")
	}
})
RegisterCommand("!dbgflags", function(player, args) {
	for (local e; e = Entities.FindByClassname(e, "item_teamflag");) {
		print(e)
		print(" - ")
		print(NetProps.GetPropInt(e, "m_nType"))
		print("(")
		print(e.GetModelName())
		printl(")")
	}
})
RegisterCommand("!dbgareas", function(player, args) {
	for (local e; e = Entities.FindByClassname(e, "trigger_capture_area");) {
		print(e.GetOrigin())
		print(NetProps.GetPropString(e, "m_iszCapPointName"))
		printl(e)
	}
})
RegisterCommand("!dbgfilters", function(player, args) {
	for (local e; e = Entities.FindByClassname(e, "filter_tf_bot_has_tag");) {
		print(e)
		printl(NetProps.GetPropString(e, "m_iszTags"))
	}
})
RegisterCommand("!dbghints", function(player, args) {
	for (local e; e = Entities.FindByClassname(e, "bot_hint_sentrygun");) {
		DebugDrawText(e.GetOrigin(), e.GetName(), false, 16)
		DebugDrawCircle(e.GetOrigin(), Vector(255, 128, 0), 1, 16, true, 16)
		if (NetProps.GetPropBool(e, "m_isDisabled"))
			DebugDrawBox(e.GetOrigin(), Vector(-4, -4, -4), Vector(4, 4, 4), 255, 0, 0, 255, 16)
		print(e)
		print(e.GetOrigin())
		printl(e.GetAbsAngles())
	}
	for (local e; e = Entities.FindByClassname(e, "bot_hint_engineer_nest");) {
		DebugDrawCircle(e.GetOrigin(), Vector(128, 255, 0), 1, 32, true, 16)
		DebugDrawText(e.GetOrigin(), e.GetName(), false, 16)
		if (NetProps.GetPropBool(e, "m_isDisabled"))
			DebugDrawBox(e.GetOrigin(), Vector(-4, -4, -4), Vector(4, 4, 4), 255, 0, 0, 255, 16)
		print(e)
		print(e.GetOrigin())
		printl(e.GetAbsAngles())
	}
})

::PVEMakeHintCounter <- 0
RegisterCommand("!makehint", function(player, args) {
	local gun = null
	for (local e; e = Entities.FindByClassname(e, "obj_sentrygun");) {
		if (NetProps.GetPropEntity(e, "m_hBuilder") == player) gun = e
	}
	if (!gun) {
		ClientPrint(player, 3, "No gun found, aborting.")
		return;
	}
	local nest_o = player.GetOrigin()
	local nest_a = player.GetAbsAngles()
	local gun_o = gun.GetOrigin()
	local gun_a = gun.GetAbsAngles()
	printf("{ nest_origin=Vector(%d,%d,%d) nest_angles=QAngle(%d,%d,%d) gun_origin=Vector(%d,%d,%d) gun_angles=QAngle(%d,%d,%d) }\n",
		nest_o.x, nest_o.y, nest_o.z, nest_a.x, nest_a.y, nest_a.z, gun_o.x, gun_o.y, gun_o.z, gun_a.x, gun_a.y, gun_a.z
	)
	DebugDrawText(gun.GetOrigin(), gun.GetName(), false, 16)
	DebugDrawCircle(gun.GetOrigin(), Vector(255, 128, 0), 1, 16, true, 16)
	DebugDrawCircle(player.GetOrigin(), Vector(128, 255, 0), 1, 32, true, 16)
	DebugDrawText(player.GetOrigin(), player.GetName(), false, 16)

	local e = Entities.CreateByClassname("bot_hint_engineer_nest")
	NetProps.SetPropString(e, "m_iName", "PVEBotHint"+PVEMakeHintCounter.tostring())
	e.SetOrigin(nest_o)
	e.SetAbsAngles(nest_a)
	e.SetTeam(PVEBotTeam)
	e.DispatchSpawn()
	EntFireByHandle(e, "enable", "", 0, e, e)
	local f = Entities.CreateByClassname("bot_hint_sentrygun")
	NetProps.SetPropBool(f, "m_isSticky", true)
	NetProps.SetPropString(f, "m_iName", "PVEBotHint"+PVEMakeHintCounter.tostring())
	f.SetOrigin(gun_o)
	f.SetAbsAngles(gun_a)
	f.SetTeam(PVEBotTeam)
	f.DispatchSpawn()
	EntFireByHandle(f, "enable", "", 0, f, f)
	::PVEMakeHintCounter <- PVEMakeHintCounter + 1

	RunNextStep(function(){
		ForeachBot(function(b){ b.RemoveAllObjects(false) })
		player.RemoveAllObjects(true)
		RunNextStep(function(){
			ForeachBot(function(b){ UTILBotSetMissionSafe(b, 0, true) })
		})
	})
	ClientPrint(player, 4, PVEMakeHintCounter.tostring())
})
RegisterCommand("!dumphints", function(player, args) {
	printl("::PVECustomBotHints <- [ # autogenerated using !dumphints")
	for (local gun; gun = Entities.FindByClassname(gun, "bot_hint_sentrygun");) {
		local nest = null;
		for (local temp; temp = Entities.FindByClassname(temp, "bot_hint_engineer_nest");) {
			if (temp.GetName() == gun.GetName()) nest = temp;
		}
		if (!nest) continue;
		local nest_o = nest.GetOrigin()
		local nest_a = nest.GetAbsAngles()
		local gun_o = gun.GetOrigin()
		local gun_a = gun.GetAbsAngles()
		printf("{ nest_origin=Vector(%d,%d,%d) nest_angles=QAngle(%d,%d,%d) gun_origin=Vector(%d,%d,%d) gun_angles=QAngle(%d,%d,%d) }\n",
			nest_o.x, nest_o.y, nest_o.z, nest_a.x, nest_a.y, nest_a.z, gun_o.x, gun_o.y, gun_o.z, gun_a.x, gun_a.y, gun_a.z
		)
	}
	printl("]")
})

RegisterCommand("!dbgspawns", function(player, args) {
	for (local e; e = Entities.FindByClassname(e, "info_player_teamspawn");) {
		print(e)
		printl(e.GetTeam())
		DebugDrawCircle(e.GetOrigin(), Vector(0, 255, 0), 1, 16, true, 8)
		DebugDrawText(e.GetOrigin(), e.GetName(), false, 8)
	}
	for (local e; e = Entities.FindByClassname(e, "func_respawnroom");) {
		print(e)
		printl(e.GetTeam())
	}
})
RegisterCommand("!dbgteleports", function(player, args) {
	for (local e; e = Entities.FindByClassname(e, "info_teleport_destination");) {
		print(e)
		print(e.GetOrigin())
		printl(e.GetTeam())
		DebugDrawCircle(e.GetOrigin(), Vector(0, 255, 0), 1, 16, true, 8)
		DebugDrawText(e.GetOrigin(), e.GetName(), false, 8)
	}
})

// TEMP (stolen from cp_carrier.nut)
::GIBS_HUMAN <- [
    ["models/player/gibs/gibs_can.mdl"],
    ["models/player/gibs/scoutgib001.mdl", "models/player/gibs/scoutgib002.mdl", "models/player/gibs/scoutgib003.mdl", "models/player/gibs/scoutgib004.mdl", "models/player/gibs/scoutgib005.mdl", "models/player/gibs/scoutgib006.mdl", "models/player/gibs/scoutgib007.mdl", "models/player/gibs/scoutgib008.mdl", "models/player/gibs/scoutgib009.mdl"],
    ["models/player/gibs/snipergib001.mdl", "models/player/gibs/snipergib002.mdl", "models/player/gibs/snipergib003.mdl", "models/player/gibs/snipergib004.mdl", "models/player/gibs/snipergib005.mdl", "models/player/gibs/snipergib006.mdl", "models/player/gibs/snipergib007.mdl"],
    ["models/player/gibs/soldiergib001.mdl", "models/player/gibs/soldiergib002.mdl", "models/player/gibs/soldiergib003.mdl", "models/player/gibs/soldiergib004.mdl", "models/player/gibs/soldiergib005.mdl", "models/player/gibs/soldiergib006.mdl", "models/player/gibs/soldiergib007.mdl", "models/player/gibs/soldiergib008.mdl"],
    ["models/player/gibs/demogib001.mdl", "models/player/gibs/demogib002.mdl", "models/player/gibs/demogib003.mdl", "models/player/gibs/demogib004.mdl", "models/player/gibs/demogib005.mdl", "models/player/gibs/demogib006.mdl"],
    ["models/player/gibs/medicgib001.mdl", "models/player/gibs/medicgib002.mdl", "models/player/gibs/medicgib003.mdl", "models/player/gibs/medicgib004.mdl", "models/player/gibs/medicgib005.mdl", "models/player/gibs/medicgib006.mdl", "models/player/gibs/medicgib007.mdl", "models/player/gibs/medicgib008.mdl"],
    ["models/player/gibs/heavygib001.mdl", "models/player/gibs/heavygib002.mdl", "models/player/gibs/heavygib003.mdl", "models/player/gibs/heavygib004.mdl", "models/player/gibs/heavygib005.mdl", "models/player/gibs/heavygib006.mdl", "models/player/gibs/heavygib007.mdl"],
    ["models/player/gibs/pyrogib001.mdl", "models/player/gibs/pyrogib002.mdl", "models/player/gibs/pyrogib003.mdl", "models/player/gibs/pyrogib004.mdl", "models/player/gibs/pyrogib005.mdl", "models/player/gibs/pyrogib006.mdl", "models/player/gibs/pyrogib007.mdl", "models/player/gibs/pyrogib008.mdl"],
    ["models/player/gibs/spygib001.mdl", "models/player/gibs/spygib002.mdl", "models/player/gibs/spygib003.mdl", "models/player/gibs/spygib004.mdl", "models/player/gibs/spygib005.mdl", "models/player/gibs/spygib006.mdl", "models/player/gibs/spygib007.mdl"],
    ["models/player/gibs/engineergib001.mdl", "models/player/gibs/engineergib002.mdl", "models/player/gibs/engineergib003.mdl", "models/player/gibs/engineergib004.mdl", "models/player/gibs/engineergib005.mdl", "models/player/gibs/engineergib006.mdl", "models/player/gibs/engineergib007.mdl"]
];
::GIBS_BOTS <- [
    ["models/player/gibs/gibs_can.mdl"],
    ["models/bots/gibs/scoutbot_gib_boss_arm1.mdl", "models/bots/gibs/scoutbot_gib_boss_arm2.mdl", "models/bots/gibs/scoutbot_gib_boss_chest.mdl", "models/bots/gibs/scoutbot_gib_boss_head.mdl", "models/bots/gibs/scoutbot_gib_boss_leg1.mdl", "models/bots/gibs/scoutbot_gib_boss_leg2.mdl", "models/bots/gibs/scoutbot_gib_boss_pelvis.mdl"],
    ["models/bots/gibs/scoutbot_gib_boss_arm1.mdl", "models/bots/gibs/scoutbot_gib_boss_arm2.mdl", "models/bots/gibs/scoutbot_gib_boss_chest.mdl", "models/bots/gibs/sniperbot_gib_head.mdl", "models/bots/gibs/scoutbot_gib_boss_leg1.mdl", "models/bots/gibs/scoutbot_gib_boss_leg2.mdl", "models/bots/gibs/scoutbot_gib_boss_pelvis.mdl"],
    ["models/bots/gibs/soldierbot_gib_boss_arm1.mdl", "models/bots/gibs/soldierbot_gib_boss_arm2.mdl", "models/bots/gibs/soldierbot_gib_boss_chest.mdl", "models/bots/gibs/soldierbot_gib_boss_head.mdl", "models/bots/gibs/soldierbot_gib_boss_leg1.mdl", "models/bots/gibs/soldierbot_gib_boss_leg2.mdl", "models/bots/gibs/soldierbot_gib_boss_pelvis.mdl"],
    ["models/bots/gibs/demobot_gib_boss_arm1.mdl", "models/bots/gibs/demobot_gib_boss_arm2.mdl", "models/bots/gibs/demobot_gib_boss_leg3.mdl", "models/bots/gibs/demobot_gib_boss_head.mdl", "models/bots/gibs/demobot_gib_boss_leg1.mdl", "models/bots/gibs/demobot_gib_boss_leg2.mdl", "models/bots/gibs/demobot_gib_boss_pelvis.mdl"],
    ["models/bots/gibs/scoutbot_gib_boss_arm1.mdl", "models/bots/gibs/scoutbot_gib_boss_arm2.mdl", "models/bots/gibs/scoutbot_gib_boss_chest.mdl", "models/bots/gibs/medicbot_gib_head.mdl", "models/bots/gibs/scoutbot_gib_boss_leg1.mdl", "models/bots/gibs/scoutbot_gib_boss_leg2.mdl", "models/bots/gibs/scoutbot_gib_boss_pelvis.mdl"],
    ["models/bots/gibs/heavybot_gib_boss_arm.mdl", "models/bots/gibs/heavybot_gib_boss_arm2.mdl", "models/bots/gibs/heavybot_gib_boss_chest.mdl", "models/bots/gibs/heavybot_gib_boss_head.mdl", "models/bots/gibs/heavybot_gib_boss_leg.mdl", "models/bots/gibs/heavybot_gib_boss_leg2.mdl", "models/bots/gibs/heavybot_gib_boss_pelvis.mdl"],
    ["models/bots/gibs/pyrobot_gib_boss_arm1.mdl", "models/bots/gibs/pyrobot_gib_boss_arm2.mdl","models/bots/gibs/pyrobot_gib_boss_arm3.mdl","models/bots/gibs/pyrobot_gib_boss_chest.mdl","models/bots/gibs/pyrobot_gib_boss_chest2.mdl","models/bots/gibs/pyrobot_gib_boss_head.mdl","models/bots/gibs/pyrobot_gib_boss_leg.mdl","models/bots/gibs/pyrobot_gib_boss_pelvis.mdl",],
    ["models/bots/gibs/scoutbot_gib_boss_arm1.mdl", "models/bots/gibs/scoutbot_gib_boss_arm2.mdl", "models/bots/gibs/scoutbot_gib_boss_chest.mdl", "models/bots/gibs/spybot_gib_head.mdl", "models/bots/gibs/scoutbot_gib_boss_leg1.mdl", "models/bots/gibs/scoutbot_gib_boss_leg2.mdl", "models/bots/gibs/scoutbot_gib_boss_pelvis.mdl"],
    ["models/bots/gibs/scoutbot_gib_boss_arm1.mdl", "models/bots/gibs/scoutbot_gib_boss_arm2.mdl", "models/bots/gibs/scoutbot_gib_boss_chest.mdl", "models/bots/gibs/scoutbot_gib_boss_head.mdl", "models/bots/gibs/scoutbot_gib_boss_leg1.mdl", "models/bots/gibs/scoutbot_gib_boss_leg2.mdl", "models/bots/gibs/scoutbot_gib_boss_pelvis.mdl"]
];
::BOT_MODELS <- [
    "models/bots/scout/bot_scout.mdl",
    "models/bots/scout/bot_scout.mdl",
    "models/bots/sniper/bot_sniper.mdl",
    "models/bots/soldier/bot_soldier.mdl",
    "models/bots/demo/bot_demo.mdl",
    "models/bots/medic/bot_medic.mdl",
    "models/bots/heavy/bot_heavy.mdl",
    "models/bots/pyro/bot_pyro.mdl",
    "models/bots/spy/bot_spy.mdl",
    "models/bots/engineer/bot_engineer.mdl",
];

foreach (gibArray in GIBS_HUMAN)
    foreach (gib in gibArray)
        PrecacheModel(gib);
foreach (gibArray in GIBS_BOTS)
    foreach (gib in gibArray)
        PrecacheModel(gib);
foreach (robotModel in BOT_MODELS)
    PrecacheModel(robotModel);
foreach (sound in ["MVM.SentryBusterExplode" "MVM.SentryBusterLoop"
	"MVM.SentryBusterIntro" "MVM.SentryBusterStep" "MVM.SentryBusterSpin"])
	PrecacheScriptSound(sound)
// END OF TEMP

# maxplayer experiments
::ExperimentalDynamicMaxPlayerCount <- false
if (MaxClients().tointeger() > 70) {
	::__TEMP_SET_MP__ <- function(mp) {
		RunCommand("sv_visiblemaxplayers " + mp.tostring())
	}
	::PVEMPEnableTournament <- true
	::PVERestartOnPlayerLimitChange <- null # null to base on setup
	::PVE1kuCosmetics <- PVEClassOptions.dane.cosmetics
	::PVEmv1kuCosmetics <- PVEClassOptions.dane_extra.cosmetics
	::PVEMPActive <- false
	::PVESetMaxPlayerCount <- function(params = {}, args = []) {
		if (args.len() == 0) {
			__TEMP_SET_MP__(-1)
			::PVEBotCountOverride <- 0
			PVECalcHumanBotCount()
			__TEMP_SET_MP__(PVEHumanCount + PVEBotCount)
			PVEClassOptions.dane.cosmetics <- PVE1kuCosmetics
			PVEClassOptions.dane_extra.cosmetics <- PVEmv1kuCosmetics
			::PVEMPActive <- false
			Convars.SetValue("mp_tournament_whitelist", "item_whitelist.txt")
			RunDelayed(function(){Convars.SetValue("mp_tournament", 0)})
		} else if (args.len() == 1) {
			ClientPrint(params, 3, "Missing Parameter: SLOTCOUNT")
		} else if (args[1] == "-1") {
			__TEMP_SET_MP__(-1)
			::PVEBotCountOverride <- 0
			PVECalcHumanBotCount()
			__TEMP_SET_MP__(PVEHumanCount + PVEBotCount)
			PVEClassOptions.dane.cosmetics <- PVE1kuCosmetics
			PVEClassOptions.dane_extra.cosmetics <- PVEmv1kuCosmetics
			::PVEMPActive <- false
			Convars.SetValue("mp_tournament_whitelist", "item_whitelist.txt")
			RunDelayed(function(){Convars.SetValue("mp_tournament", 0)})
		} else {
			try {
				__TEMP_SET_MP__(args[1].tointeger())
				::PVEBotCountOverride <- 0
				PVECalcHumanBotCount()
				::PVEBotCountOverride <- args[1].tointeger() - PVEHumanCount
				PVECalcHumanBotCount()
				__TEMP_SET_MP__(PVEHumanCount + PVEBotCount)
				PVEClassOptions.dane.cosmetics <- []
				PVEClassOptions.dane_extra.cosmetics <- []
				#::PVEReduceSpawnpointsBotOnly <- true
				#::PVEReduceSpawnpoints <- true
				::PVEMPActive <- true
				Convars.SetValue("mp_tournament_whitelist", "1ku_item_whitelist.txt")
				RunNextStep(PVETryEnableTournament)
				::GivePlayerWeaponRecycleNew <- true
			} catch (e) {
				ClientPrint(params, 3, "ERROR: " + e.tostring())
			}
		}
		RunNextStep(PVECalcHumanBotCount)
	}
	::PVETryEnableTournament <- function(){
		local in_setup = false
		for (local e = null; e = Entities.FindByClassname(e, "team_round_timer"); ) {
			if (NetProps.GetPropInt(e, "m_nState") == 0) # timer in setup
				in_setup = true
		}
		if (PVEMPEnableTournament && (PVERestartOnPlayerLimitChange == null ? in_setup : PVERestartOnPlayerLimitChange)) RunNextStep(function() {
			PVEToggleMedieval(true, false)
			RunDelayed(function(){Convars.SetValue("mp_tournament_stopwatch", 0)})
			RunDelayed(function(){Convars.SetValue("mp_tournament_redteamname", "Uncles")})
			RunDelayed(function(){Convars.SetValue("mp_tournament_blueteamname", "Robots")})
			RunDelayed(function(){Convars.SetValue("mp_tournament", 1)})
			RunDelayedWait(8)
			RunDelayed(function(){RunCommand("mp_tournament_restart")})
			RunDelayedWait(8)
			RunDelayed(function(){TournamentStart(true)})
		}); else if (PVEMPEnableTournament) RunNextStep(function(){
			local waiting = IsInWaitingForPlayers()
			RunDelayed(function(){Convars.SetValue("mp_waitingforplayers_cancel", 1)})
			local temp = null
			RunDelayedWait(8)
			RunDelayed(function(){
				temp = NetProps.GetPropBool(PVETimerRef, "m_bFireFinished")
				NetProps.SetPropBool(PVETimerRef, "m_bFireFinished", false)
			})
			# tournament logic for item whitelist
			RunDelayed(function(){Convars.SetValue("mp_tournament_stopwatch", 0)})
			RunDelayed(function(){Convars.SetValue("mp_tournament_redteamname", "Uncles")})
			RunDelayed(function(){Convars.SetValue("mp_tournament_blueteamname", "Robots")})
			RunDelayed(function(){Convars.SetValue("mp_tournament", 1)})
			RunDelayedWait(10)
			RunDelayed(function(){RunCommand("mp_tournament_restart")})
			RunDelayedWait(10)
			RunDelayed(function(){TournamentStart(false)})
			RunDelayedWait(10)
			RunDelayed(function(){Convars.SetValue("mp_waitingforplayers_cancel", 1)})
			RunDelayedWait(10)

			RunDelayed(function(){
				local gr = Entities.FindByClassname(null, "tf_gamerules")
				NetProps.SetPropFloat(gr, "m_flRestartRoundTime", -1.0)
				NetProps.SetPropBool(gr, "m_bInWaitingForPlayers", false)
				NetProps.SetPropBool(gr, "m_flWaitingForPlayersTimeEnds", false)
				NetProps.SetPropBool(gr, "m_bAwaitingReadyRestart", false)
				NetProps.SetPropBool(gr, "m_bResetTeamScores", false)
				NetProps.SetPropBool(gr, "m_bResetPlayerScores", false)
				NetProps.SetPropBool(gr, "m_bResetRoundsPlayed", false)
				Convars.SetValue("mp_restartgame", 0)
				RunDelayed(function(){Convars.SetValue("mp_waitingforplayers_cancel", 1)})
				RunDelayedWait(8)
				RunDelayed(function(){
					if (waiting) {
						Convars.SetValue("mp_restartgame", 5)
					}
				})
				RunDelayed(function(){
					EntFireByHandle(PVETimerRef, "enable", "", 5, PVETimerRef, PVETimerRef)
					NetProps.SetPropBool(PVETimerRef, "m_bFireFinished", temp)
				})
				RunDelayed(function(){Convars.SetValue("mp_waitingforplayers_cancel", 0)})
				RunDelayed(function(){PVEToggleMedieval(PVEMedievalEnabledByDefault, false)})
				RunDelayed(function(){
					ForeachBot(function(b){
						RunDelayed(function(){
							PVERespawnMedieval(b, true)
						})
					})
				})
			})
		})
	}
	if (PVEIsOnDedicatedServer && ExperimentalDynamicMaxPlayerCount) RegisterEvent("Setup", PVESetMaxPlayerCount)
	RegisterCommand("!mp", PVESetMaxPlayerCount, "Set Max Player count and update bot count")
	::GetMaxPlayersExcludingSourceTV <- function(){ return MaxClients().tointeger() - (Convars.GetBool("tv_enable") ? 1 : 0) }
	RegisterCommand("!mp_high", function(player, args) {
		ProcessCommand(player, "!mp", ["!mp", GetMaxPlayersExcludingSourceTV().tostring()])
		#::PVECurrencyOnSpawn <- PVECurrencyOnSpawn + 4200
		#ForeachPlayer(function(p) { p.SetCurrency(PVECurrencyOnSpawn) })
		ClientPrint(null, 4, "Bot count raised, cosmetics and taunts are disabled until the next map change.")
	}, "Set Max Player count as high as possible")
	RegisterCommand("!mp_dbg", function(player, args) {
		::DBGEntPrint <- true
		ProcessCommand(player, "!1kutest", ["!1kutest"])
		ProcessCommand(player, "!mp_high", ["!mp_high"])
	}, "Debug !mp stuff")
	RegisterCommand("!mp_dbgf", function(player, args) {
		::DBGEntPrint <- true
		ProcessCommand(player, "!1kutest", ["!1kutest"])
		ProcessCommand(player, "!mp_localfull", ["!mp_localfull"])
	}, "Debug !mp stuff with max bots")
	RegisterCommand("!sp_dbg", function(player, args) {
		::DBGEntPrint <- true
		ProcessCommand(player, "!1kutest", ["!1kutest"])
		ProcessCommand(player, "!pve", ["!pve" "botcount" "1"])
		ProcessCommand(player, "!pve", ["!pve" "init"])
		PVEClassOptions.dane_extra.cosmetics <- []
		::PVEMPActive <- true
		Convars.SetValue("mp_tournament_whitelist", "1ku_item_whitelist.txt")
		RunNextStep(PVETryEnableTournament)
	}, "Debug !mp stuff with 1 bot")

	::ValidObserver <- null
	RegisterEvent("Update", function(params) {
		if (!PVEMPActive) return;
		foreach (ent in ["bot_hint_*" "instanced_scripted_scene" "tf_ragdoll" "vgui_screen" "func_occluder" "env_soundscape" "env_soundscape_proxy" "env_soundscape_triggerable"])
			for (local e; e=Entities.FindByClassname(e, ent);) {
				e.Kill()
			}
		# prevent bots from using resupply lockers
		# this is slightly laggy
		foreach (ent in ["func_regenerate" "func_upgradestation"])
			for (local e; e = Entities.FindByClassname(e, ent);) {
				switch (e.GetTeam()) {
					case PVEHumanTeam:
						local t = {}
						NavMesh.GetNavAreasOverlappingEntityExtent(e, t)
						foreach(k, area in t) {
							area.ClearAttributeTF(6) # RED/BLU spawnroom
						}
					break;
					case PVEBotTeam:
						e.Kill()
					break;
					case 0:
						e.SetTeam(PVEHumanTeam)
					break;
				}
			}
		# remove all cosmetics
		for (local e; e=Entities.FindByClassname(e, "tf_wearable");) {
			local id = NetProps.GetPropInt(e, "m_AttributeManager.m_Item.m_iItemDefinitionIndex")
			if ([231 642 608 405 444 133].find(id) == null) {
				e.Kill()
			}
		}
	})
	RegisterEvent("player_spawn", function(params) {
		if (PVEDisabled) return;
		// clear bot viewmodels
		local vm1, vm2
		ForeachBot(function(b){
			local vm
			vm = NetProps.GetPropEntityArray(b, "m_hViewModel", 0)
			if (!vm1 || !vm1.IsValid()){
				vm1 = vm
			} else if (vm1 != vm) {
				NetProps.SetPropEntityArray(b, "m_hViewModel", vm1, 0)
				if (vm && vm.IsValid()) vm.Kill()
			}
			vm = NetProps.GetPropEntityArray(b, "m_hViewModel", 1)
			if (!vm2 || !vm2.IsValid()) {
				vm2 = vm
			} else if (vm2 != vm) {
				NetProps.SetPropEntityArray(b, "m_hViewModel", vm2, 1)
				if (vm && vm.IsValid()) vm.Kill()
			}
		})
		if (!PVEMPActive) return;
		PVEPlayerSetRobotModel(GetPlayerFromUserID(params.userid))
	})
	RegisterEvent("teamplay_round_win", function(params) {
		if (!PVEMPActive) return;
		PVEToggleMedieval(true, false)
	})
	RegisterEvent("teamplay_round_start", function(params) {
		RunNextStep(function(){
			RunNextStep(function(){
				RunNextStep(function(){
					if (PVEMedievalEnabledByDefault != null)
						PVEToggleMedieval(PVEMedievalEnabledByDefault, false)
					#NetProps.SetPropBool(Entities.FindByClassname(null, "tf_gamerules"), "m_bPlayingMedieval", false)
					if (!PVEMPActive) return;
					RunNextStep(function(){
						ForeachPlayer(function(p){
							RunDelayed(function(){
								p.Regenerate(false)
								if (p.IsFakeClient())
									UTILBotSetMissionSafe(p, 0, true) # make the bots repath
							})
						})
					})
				})
			})
		})
	})
	RegisterCommand("!restart", function(player, args) {
		if (PVEMPActive)
			PVEToggleMedieval(true, false)
		Convars.SetValue("mp_restartgame", 5)
	}, " - Restart the current round")
	RegisterCommand("!rb", function(player, args) {
		ForeachBot(function(p){
			if (PVEMPActive) {
				PVERespawnMedieval(b)
			} else {
				UTILRespawn(b)
			}
		})
	}, " - Restart the current round")
}

::DBGEntPrint <- false
::DBGEntCount <- 0
::DBGEntBuffer <- []
RegisterEvent("PreUpdate", function(params) { // TODO: measure memory / performance impact of this
	if (!DBGEntPrint) return;
	::DBGEntCount <- 1
	local buf = []
	local e = Entities.First()
	while (e = Entities.Next(e)) {
		::DBGEntCount <- DBGEntCount + 1
		buf.push(e)
		if (DBGEntBuffer.find(e) == null) {
			if (DBGEntPrint == 2) {
				ClientPrint(null, 3, e.tostring())
			} else {
				printl(e)
			}
		}
	}
	::DBGEntBuffer <- buf
	//printl(DBGEntCount)
	ClientPrint(null, 4, DBGEntCount.tostring())
})

::TournamentStart <- function(restart = true){
	Convars.SetValue("tf_mvm_min_players_to_start", 1)
	Convars.SetValue("mp_tournament_readymode", 1)
	Convars.SetValue("mp_tournament_post_match_period", 10)

	local GameRules = Entities.FindByClassname(null, "tf_gamerules")
	local MAX_TEAMS_ARRAY_SAFE = 32 # constant from tf2 sdk
	local MAX_PLAYERS_ARRAY_SAFE = 102 # constant from tf2 sdk
	local ready = true

	for (local team = 0; team < MAX_TEAMS_ARRAY_SAFE; team++)
		NetProps.SetPropBoolArray(GameRules, "m_bTeamReady", ready, team)
	for (local player = 0; player < MAX_PLAYERS_ARRAY_SAFE; player++)
		NetProps.SetPropBoolArray(GameRules, "m_bPlayerReady", ready, player)
	if (!ready){
		NetProps.SetPropFloat(GameRules, "m_flRestartRoundTime", -1.0)
		NetProps.SetPropBool(GameRules, "m_bAwaitingReadyRestart", true)
	} else if (restart) {
		NetProps.SetPropFloat(GameRules, "m_flRestartRoundTime", 1.0)
	}
}
::PVEPlayerSetRobotModel <- function(player) {
	if (Uncletopia1kuAccurate) return;
	if (player && player.IsValid() && player.GetTeam() == PVEHumanTeam && player.GetPlayerClass() != 0) {
		RunDelayedForPlayer(player, function(){
			player.SetCustomModel(null)
			RunDelayedForPlayer(player, function(){
				player.SetCustomModelWithClassAnimations("models/bots/" + [
					"" // undefined
					"scout/bot_scout.mdl"
					"sniper/bot_sniper.mdl"
					"soldier/bot_soldier.mdl"
					"demo/bot_demo.mdl"
					"medic/bot_medic.mdl"
					"heavy/bot_heavy.mdl"
					"pyro/bot_pyro.mdl"
					"spy/bot_spy.mdl"
					"engineer/bot_engineer.mdl"
				][player.GetPlayerClass()])
			})
		})
	}
}

const SOLID_BBOX = 2
const SOLID_OBB = 3
::DebugDrawTrigger <- function(trigger, rgb, alpha, duration){
	local origin = trigger.GetOrigin()
	local mins = NetProps.GetPropVector(trigger, "m_Collision.m_vecMins")
	local maxs = NetProps.GetPropVector(trigger, "m_Collision.m_vecMaxs")
	if (trigger.GetSolid() == SOLID_BBOX)
		DebugDrawBox(origin, mins, maxs, rgb.x, rgb.y, rgb.z, alpha, duration)
	else if (trigger.GetSolid() == SOLID_OBB)
		DebugDrawBoxAngles(origin, mins, maxs, trigger.GetAbsAngles(), rgb, alpha, duration)
	else
		DebugDrawBoxAngles(origin, mins, maxs, trigger.GetAbsAngles(), rgb, alpha, duration)
}
::DBGDrawProps <- false
::DBGDrawPropClass <- "*"
::DBGDrawPropsAll <- false
::DBGDrawPropsRegistered <- false
RegisterCommand("!dbgprops", function(player, args) {
	if (!DBGDrawPropsRegistered) RegisterEvent("Update", function(params) {
		if (!DBGDrawProps) return;
		for (local e; e = Entities.FindByClassname(e, DBGDrawPropClass);) {
			if (((e.GetSolid() == 0 || e.IsSolidFlagSet(4) || e.GetCollisionGroup() == 1) && !DBGDrawPropsAll) || e.GetClassname() == "player" || startswith(e.GetClassname(), "tf_weapon") || startswith(e.GetClassname(), "tf_projectile")) continue;
			DebugDrawTrigger(e, [Vector(0,0,0) Vector(255,0,255) Vector(255,0,0) Vector(0,0,255) Vector(255,0,255) Vector(255,255,0) Vector(0,255,0)][e.GetSolid()], ((e.GetCenter() - GetListenServerHost().GetCenter()).Length() < 1024) ? 16 : 0, FrameTime()*2)
			#DebugDrawBoxAngles(e.GetCenter(), e.GetBoundingMins(), e.GetBoundingMaxs(), e.GetAbsAngles(), Vector(255, 128, 0), 0.5, 0.1)
			if ((e.GetCenter() - GetListenServerHost().GetCenter()).Length() < 1024) DebugDrawText(e.GetCenter(), e.tostring() +"\n"+ e.GetSolid().tostring() + " | " + e.GetCollisionGroup().tostring()+ (e.IsSolidFlagSet(4) ? " [NOT SOLID] " : "") + (e.IsSolidFlagSet(8) ? " [TRIGGER] " : ""), false, FrameTime())
		}
	})
	::DBGDrawPropsRegistered <- true
	::DBGDrawProps <- !DBGDrawProps
	if (args.len()>1){
		::DBGDrawPropClass <- args[1]
		::DBGDrawProps <- true
		::DBGDrawPropsAll <- true
	} else {
		::DBGDrawPropsAll <- false
	}
})

::PVEPenetrationFix <- false
::SVGravity <- Convars.GetFloat("sv_gravity") * GetGravityMultiplier()
if (false) RegisterEvent("Update", function(params) { # this does not work...
	if (!PVEPenetrationFix) return;
	local i = 0
	foreach (e in EntsByClass("tf_projectile_arrow")){
		local s = UTILGetScriptScope(e)
		if (e.IsSolidFlagSet(8)) {
			printl("penetrate")
			e.RemoveSolidFlags(12)
			s.PENETRATE <- true
		}
		local movetype = e.GetMoveType()
		local hit_wall = movetype == Constants.EMoveType.MOVETYPE_NONE
		DebugDrawScreenTextLine(0, 0, 16+i, e.tostring() + e.GetSolid().tostring() + "|" + movetype.tostring() + (e.IsSolidFlagSet(4) ? "[NOT SOLID]" : "") + (e.IsSolidFlagSet(8) ? "[TRIGGER]" : ""), 255, hit_wall ? 0 : 255, hit_wall ? 0 : 255, 255, 0.1)
		#printl(e.tostring() + e.GetSolid().tostring() + movetype.tostring() + (e.IsSolidFlagSet(4) ? "[NOT SOLID]" : "") + (e.IsSolidFlagSet(8) ? "[TRIGGER]" : ""), 255, hit_wall ? 0 : 255, hit_wall ? 0 : 255, 255, 0.1)
		i+=2
		if (!("PENETRATE" in s) || hit_wall) continue;
		local v = e.GetAbsVelocity()
		#if ("LAST_POS" in s && (s.LAST_POS - e.GetOrigin()).Length2DSqr()==0) {
		if ("LAST_POS" in s && (v * FrameTime() - (e.GetOrigin() - s.LAST_POS)).LengthSqr()>1) {
			DebugDrawScreenTextLine(0, 0, 15+i, v.tostring(), 255, 128, 0, 255, 0.1)
			//if (!hit_wall) {
				e.SetAbsOrigin(e.GetOrigin() + s.LAST_VEL * FrameTime() * 1)
				e.SetAbsVelocity(s.LAST_VEL)
				//s.LAST_POS <- e.GetOrigin()
			//}
		}
		DebugDrawScreenTextLine(0, 0, 15+i, v.tostring(), 0, 255, 0, 255, 0.1)
		if (/*!hit_wall &&*/ v.z == 0 && "LAST_VEL" in s) {
			v.z = s.LAST_VEL.z - SVGravity * FrameTime()
			e.SetAbsVelocity(v)
		}
		if (v.Length2DSqr() > 16) {
			s.LAST_VEL <- v
		} else {
			e.SetAbsVelocity(s.LAST_VEL)
		}
		/*if ("LAST_POS" in s) {
			ClientPrint(null, 3, "D:" + (e.GetOrigin() - s.LAST_POS).tostring())
			ClientPrint(null, 3, "V:"+(v*FrameTime()).tostring())
			ClientPrint(null, 3, "ND:" + (v * FrameTime() - (e.GetOrigin() - s.LAST_POS)).tostring() + " - " + (v * FrameTime() - (e.GetOrigin() - s.LAST_POS)).LengthSqr().tostring())
		}*/
		s.LAST_POS <- e.GetOrigin()
	}
})
RegisterCommand("!arrow", function(player, args) {
	::PVEJustCountUp <- true
	RunCommand("bot_kick all")
	RunCommand("mp_restartgame_immediate 1")
	RunNextStep(function(){
		for (local i = 0; i < 23; i++) RunCommand("bot")
		ProcessCommand(player, "!dbgprops", ["!dbgprops" /*"*"*/])
		ProcessCommand(player, "!upgrade", ["!upgrade" /*"*"*/])
		NetProps.SetPropBool(player, "m_Shared.m_bInUpgradeZone", true)
		RunDelayedWait(256)
		RunDelayed(function(){
			ForeachHuman(function(h){ h.AddCustomAttribute("ammo regen", 1.0, -1.0) })
		})
	})
})

RegisterCommand("!bomb", function(player, args) {
	ForeachBot(function(b) {
		b.SetHealth(4500)
		b.AddCondEx(5, 5, b)
		UTILBotSetMissionSafe(b, 2, true)
		RemoveAllItems(b)
		local s = UTILGetScriptScope(b)
		if ("_equipped_weapons" in s) {
			foreach(w in s._equipped_weapons) {
				if (w && w.IsValid()) w.Kill()
			}
		}
		GivePlayerWeapon(b, "tf_weapon_sentry_revenge", 141, [
			{name = "gesture speed increase" value = 2}
			{name = "move speed bonus" value = 2}
			{name = "override footstep sound set" value = 7}
			{name = "cannot be backstabbed" value = 1}
		])
		RunInNSeconds(1, function(){
			if ("_equipped_weapons" in s) {
				for(local i=0; i < s._equipped_weapons.len(); i++) {
					s._equipped_weapons[i] = null
				}
			}
		})
		b.SetCustomModelWithClassAnimations("models/bots/engineer/bot_engineer.mdl")
		#b.SetModelScale(1.5, 1)
		b.SetBehaviorFlag(0xFFFF)
	})
})


# fix for wrangler fix
RegisterEvent("post_inventory_application", function(params){
	RunInNSeconds(1, function(){
		local player = GetPlayerFromUserID(params.userid);
		if (!player || player.IsFakeClient())
			return # only display ammo for humans
		for (local i = 0; i < MAX_WEAPONS; i++) {
			local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
			if (heldWeapon == null)
				continue
			if (heldWeapon.GetClassname() != "tf_weapon_laser_pointer")
				continue
			if (heldWeapon.GetPrimaryAmmoType() != 2)
				return # only update ammo if visible
			local scope = UTILGetScriptScope(heldWeapon)
			local mygun = null
			scope["sync_wrangler_ammo"] <- function() {
				if (!mygun || !mygun.IsValid()) {
					mygun = null
					for (local e; e=Entities.FindByClassname(e, "obj_sentrygun");) {
						if (NetProps.GetPropEntity(e, "m_hBuilder") == player) {
							mygun = e
						}
					}
				}
				if (player.GetActiveWeapon() != self) return 1 # wait paitently
				if (mygun) {
					local ammo = NetProps.GetPropInt(mygun, "m_iAmmoShells")
					NetProps.SetPropIntArray(player, "m_iAmmo", ammo > 0 ? ammo : 1, 2) # set secondary ammo to shells owned
				} else {
					NetProps.SetPropIntArray(player, "m_iAmmo", 1, 2) # we dont have a sentry so make ammo almost empty
				}
				return -1 # update quickly
			}
			AddThinkToEnt(heldWeapon, "sync_wrangler_ammo")
			break;
		}
	})
})

// TEMPORARY
# try to set sv_allow_point_servercommand to always if possible to allow for automatic navmesh generation
# todo: set this config var in autoexec.cfg
if (PVEIsOnDedicatedServer && Convars.GetStr("sv_allow_point_servercommand") == "official"){
	RunCommand("sv_allow_point_servercommand always")
}

if (PVEIsOnDedicatedServer) RunInNSteps(20, Applymv1kuPreset)
