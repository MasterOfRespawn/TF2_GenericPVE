/*    *\
 CONFIG
\*    */

# Block all commands except from listen server host
::SteamIDBlockAll <- true
# empty whitelist whitelists everybody
::SteamIDWhitelist <- []
# Disable random crits and bullet spread
::PVEDisableRandomness <- false
# doubles human count
# e.g. from 12 to 24 on 64 player server
::PVEIncreaseHumanCount <- false

# default preset name (look at readme)
::PVEDefaultClass <- "heavy"
::PVEDefaultIntelClass <- "sentry"
# vote autobalance
::PVEVoteOption1 <- "sentry"
# vote class limit
::PVEVoteOption2 <- "bonk"
# vote extend round
::PVEVoteOption3 <- "heavy"

# leave true if uncertain
::PVEUseMapReccomendedSettings <- true
# works in 99% of cases
::PVEAutoGenNavMesh <- true
# allow engineers to build in spawn rooms
::PVEAllowBuildInSpawn <- true
# convert 5cp maps into attack defend maps
::PVENextPointCapForceLinear <- true
::PVEBlockNextPointCapDelay <- 20
# bots truly respawn immediately
::PVERedImmediateRespawn <- false
# respawn delay
::PVERedImmediateRespawnFakeWaves <- 1
# keep bots respawning after the round has been won
::PVERedImmediateRespawnAfterRound <- false
# Disable BLU flag to prevent RED winning on CTF maps
::PVEDisableCtfRED <- true
# Disable random critical hits (for bots only) (should work with all weapons)
::PVEDisableBotCrits <- true
# Use engineers on ctf instead of heavies
::PVEUseSpecialPresetForCTF <- true

# treat humans in bot team as bots (equip them to blend in)
::PVETreatNonCosmeticRedPlayersAsBots <- true

/* MORE OR LESS EXPERIMENTAL */
# apply all equipment one step delayed
::PVESlightDelayedEquip <- true
# If true, equip weapons one by one.
# This does mess with the bots sometimes
# this may be caused by viewmodels
::PVEAllowDelayedEquip <- false
# sometimes bots stop to attack, also spies inviswatch gets removed
::PVEReduceViewmodels <- false
# may have unforseen consequences
::PVEReduceSpawnpoints <- false
# may result in ugly visuals
::PVEAggressiveCleanup <- false
# reset current game for proper startup
::PVELocalInitResetGame <- false
# setup points after round start on local pve initialization
::PVELocalInitPrepareMap <- true
# don't delete crit pumpkins
::PVEAllowCritPumpkins <- false

# set to true if gameplay relevant props are deleted during cleanup
# this currently is only required on some maps
::PVEPropCleanupRespectCollision <- false
# set to true if only visual issues appear (some walls, etc. disappear)
::PVEDoNotCleanDetails <- false

# experimental (this is just me messing around)
# show cumulative bot health
::PVEShowBotHealth <- false
# force this script to load on VScript maps (may still break in some cases)
# the currently used approach is very bad but may get some maps to work properly
::PVEExperimentalTryVScriptMaps <- true

# should be changed map specific
::PVEResetBotsOnCapturedPoint <- false

# required for thin heavy
::PVEAllowSpecialClassBot <- false
::PVEForceSpecialBotType <- null

# set to null for default, false to disable and true to enable
::PVEForceMedieval <- null
# set to false to prevent presets changing medieval
::PVEAllowPresetToForceMedieval <- true
# Map specific, skips waiting for players
# This can be used to fix maps with areaportals not opening on round start
::PVECancelPlayerWait <- false

# set to true automatically on certain map types
# Disables the entire PVE system
::PVEForceDisable <- false

# constants
::TEAM_RED <- 2
::TEAM_BLU <- 3
::TEAM_NAMES <- [
	"any"
	"spectator"
	"red"
	"blue"
]
::PVEHumanTeam <- TEAM_BLU
::PVEBotTeam <- TEAM_RED

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
	"Jon2: Electric Boogaloo"
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
	# all options for presets
	/*
		EXAMPLE ATTRIBUTE {
			name = "wiki.teamfortress.com/wiki/List_of_item_attributes"
			value = [NUMBER]
		}
		EXAMPLE COSMETIC / WEAPON {
			id = https://wiki.alliedmods.net/Team_Fortress_2_Item_Definition_Indexes
			attributes = [ATTRIBUTE]
		}
	*/
	stock = {
		# scout soldier pyro demoman heavyweapons engineer medic sniper spy
		classname = "scout"
		# keep stock weapons [false]
		keepstock = true
		# remove pdas alongside stock weapons (engi/spy) [false]
		removepdas = false
		# automatically reset ammo of bot (broken sometimes) [false]
		infiniteammo = false
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
		# list of cosmetics to equip the bot with [none]
		cosmetics = []
		# custom model for the bots [default]
		model = ""
		# custom amount of health [0=>no change]
		maxhealth = 0
		# https://developer.valvesoftware.com/wiki/Team_Fortress_2/Scripting/Script_Functions/Constants#ETFBotMissionType
		# [0]
		mission = 0
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
	}
	blank = {
		classname = "scout"
		removepdas = true
		difficulty = 3
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
			{ id = 239 } // G.R.U
			{ id = 656 } // holiday punch
		]
		specialbot = "thin_heavy"
	}
	thin_heavy = {
		classname = "scout"
		difficulty = 3
		namechoices = [ "Thin Heavy" ]
		secondaries = [ { id = 42 } ] // sandvich
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
		primaries = [
			{ id = 199 }
			{ id = 527 }
			{ id = 141 }
			{ id = 588 }
		]
		secondaries = [ { id = 22 } ]
		melees = [
			{
				id = 7
				attributes =  [
					{ name = "fire rate bonus"			value = 0.6 }
					{ name = "dmg bonus vs buildings"	value = 500 }
					{ name = "mod teleporter cost"		value = 11 }
				]
			}
		]
		attributes = [
			{ name = "metal regen"					value = 500 }
			{ name = "maxammo metal increased"		value = 2.5 }
			{ name = "max health additive bonus"	value = 60 }
			{ name = "mod teleporter cost"			value = 11 }
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
	}
	jonto = {
		classname = "spy"
		keepstock = true
		difficulty = 3
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
	}
	# server performance friendlier versions of dane and jonto
	safedane = {
		classname = "engineer"
		keepstock = true
		forcebotdecrease = true
		difficulty = 3
		namechoices = DaneNames
		primaries = [
			{ id = 199 }
			{ id = 527 }
			{ id = 141 }
			{ id = 588 }
		]
		melees = [
			{
				id = 7
				attributes =  [
					{ name = "fire rate bonus"			value = 0.6 }
					{ name = "dmg bonus vs buildings"	value = 500 }
					{ name = "mod teleporter cost"		value = 11 }
				]
			}
		]
		attributes = [
			{ name = "metal regen"					value = 500 }
			{ name = "maxammo metal increased"		value = 2.5 }
			{ name = "max health additive bonus"	value = 60 }
			{ name = "mod teleporter cost"			value = 11 }
		]
	}
	safejonto = {
		classname = "spy"
		keepstock = true
		forcebotdecrease = true
		difficulty = 3
		namechoices = JontoNames
		primaries = [
			{ id = 24 }
			{ id = 61 }
			{ id = 224 }
			{ id = 460 }
		]
		attributes = [ { name = "max health additive bonus" value = 75 } ]
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
		namechoices = ["_"]
		melees = [ { id = 169 } ] // golden wrench because funny
	}
	huntsman = {
		classname = "sniper"
		difficulty = 3
		namechoices = [ "_" ]
		primaries = [ { id = 56 } ]
	}
	glass_canon = {
		classname = "spy"
		difficulty = 3
		namechoices = [ "_" ]
		melees = [ { id = 4 } ] // Knife
		maxhealth = 1
	}
	glass_canon_mm = {
		classname = "spy"
		difficulty = 3
		namechoices = [ "_" ]
		melees = [ { id = 4 } ] // Knife
		maxhealth = 1
		medieval = true // experimental (force medieval)
	}
}

::PVEMapSettingOverrides <- {
	# summer 2025
	pl_aquarius = { PVEPropCleanupRespectCollision = true }
	koth_blowout = { PVECancelPlayerWait = true }
	koth_boardwalk = { PVEPropCleanupRespectCollision = true }
	ctf_pressure = { PVECancelPlayerWait = true }
	pl_citadel = { PVEResetBotsOnCapturedPoint = true }
	cp_fulgur = { PVEIncreaseHumanCount = true }
	# fix issues with PropDynamics
	cp_degrootkeep = { PVEPropCleanupRespectCollision = true }
	koth_nucleus = { PVEPropCleanupRespectCollision = true }
	koth_rotunda = { PVEPropCleanupRespectCollision = true }
	koth_suijin = { PVEPropCleanupRespectCollision = true }
	koth_king = { PVEDoNotCleanDetails = true }
	pl_cashworks = { PVEDoNotCleanDetails = true }
	# this map has a very high edict count, areaportals at 1st spawn break
	pl_patagonia = { PVEReduceSpawnpoints = true PVEAggressiveCleanup = true PVECancelPlayerWait = true }
	# bots keep spawning until the server crashes
	mvm = { PVEForceDisable = true }
	# prevent pass time crashing entirely by self disableing
	pass = { PVEForceDisable = true }
	# zi and vsh break so just don't activate
	vsh = { PVEForceDisable = true PVEExperimentalTryVScriptMaps = false }
	zi = { PVEForceDisable = true PVEExperimentalTryVScriptMaps = false }
	# the mobster weapons starts to bug after spawning
	vip = { PVEForceDisable = true PVEExperimentalTryVScriptMaps = false }
}

::PVEIsOnDedicatedServer <- IsDedicatedServer()

/*--*\
|CODE|
\*--*/

################
# EVENT SYSTEM #
################

# setup registered event table
if (!("EventTable" in this)) ::EventTable <- {}
EventTable.clear()

# setup event utility function table
if (!("EventFunctionTable" in this)) ::EventFunctionTable <- {}
EventFunctionTable.clear()

# utility table to ensure a full function reset on event recollection
if (!("CollectedFunctionTable" in this)) ::CollectedFunctionTable <- {}

# main function to register an event handler in other scripts
# may autocollect registered events in a future version
::RegisterEvent <- function(name, handler) {
    EventFunctionTable[name] <- function(params) {
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
    CollectedFunctionTable <- {}
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

# register ProcessCommand in Event handler for use of commands in chat
RegisterEvent("OnGameEvent_player_say", function(params) {
    # parameter processing for easier processing by registered commands
    local userid = params["userid"]
    local user = GetPlayerFromUserID(userid)
    if (PVEIsOnDedicatedServer || user != GetListenServerHost()) // validate user ids
    {
		if (SteamIDBlockAll) return
        local id = NetProps.GetPropString(user, "m_szNetworkIDString")
		local allowed = SteamIDWhitelist.len() == 0
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

#############################
# PVE INITIAL MAPLOAD SETUP #
#############################

# apply map specific settings
if (PVEUseMapReccomendedSettings) {
	local mapname = GetMapName()
	# workshop maps begin with "workshop/" so split at /
	local gametype = split(split(mapname, "_")[0], "/", true)[0]
	if (gametype == "workshop") gametype = split(split(mapname, "_")[0], "/", true)[1]
	if (gametype in PVEMapSettingOverrides) {
		foreach(key, value in PVEMapSettingOverrides[gametype]) {
			getroottable()[key] <- value
		}
	}
	if (mapname in PVEMapSettingOverrides) {
		foreach(key, value in PVEMapSettingOverrides[mapname]) {
			getroottable()[key] <- value
		}
	}
}

::PVEClassCheckInitialized <- false
RegisterEvent("OnGameEvent_player_spawn", function(params){
	if (PVEClassCheckInitialized) return
	::PVEClassCheckInitialized <- true
	local d = PVEDisabled
	if (null==Entities.FindByClassname(null, "Item_teamflag") || !PVEUseSpecialPresetForCTF)
		PVELoadClassConfig(PVEDefaultClass)
	else
		PVELoadClassConfig(PVEDefaultIntelClass)
	if (d) PVELoadClassConfig("disable")
	else PVEInitCVars()
})
if (PVEAutoGenNavMesh && !PVEForceDisable) {
	::PVENavGenerates <- false
	RegisterEvent("OnGameEvent_player_spawn", function(params) {
		if (!PVENavGenerates && NavMesh.GetNavAreaCount() == 0) {
			::PVENavGenerates <- true
			printl("navmesh not found, running nav_generate")
			if (startswith(GetMapName(), "workshop")) {
				printl("this is a workshop map, navmeshes may break, please generate manually.")
				return
			}
			::PVEMaintenanceMode <- true
			::PVEMaintenanceMessage <- "Generating navmesh for " + GetMapName() + ", please wait.\nThis might cause some lag, the map will reload soon."
			local cheats_on = Convars.GetInt("sv_cheats") != 0
			local cmd = cheats_on ? "nav_generate" : "sv_cheats 1 ; nav_generate ; sv_cheats 0"
			PVELoadClassConfig("disable")
			if (PVEIsOnDedicatedServer) {
				SendToServerConsole(cmd)
				::PVEForceDisable <- true
				AddThinkToEnt(Entities.FindByClassname(null, "tf_player_manager"), "PVEMainLoop")
			}
			else {
				::PVEMaintenanceMessage <- "Missing navmesh for " + GetMapName() + ".\nTo use PVE please generate a navmesh by writing `!nmg` in chat.\nOtherwise the bots won`t move"
			}
		}
	})
}

RegisterCommand("!nmg", function (player, args) {
	if (!PVEIsOnDedicatedServer) {
		SendToConsole((Convars.GetInt("sv_cheats") != 0) ? "nav_generate" : "sv_cheats 1 ; nav_generate ; sv_cheats 0")
		::PVEMaintenanceMode <- true
		::PVEMaintenanceMessage <- "Generating navmesh for " + GetMapName() + ", please wait.\nThis might cause some lag, the map will reload soon."
		AddThinkToEnt(Entities.FindByClassname(null, "tf_player_manager"), "PVEMainLoop")
	} else {
		ClientPrint(player, 3, "This command is not supported on dedicated servers.")
	}
}, " (re) generates navmesh")

#######################
# WEAPON RELATED CODE #
#######################

# taken from https://tf2maps.net/downloads/weapon-id-enum-and-helper-functions.16800/

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
	#printl("enumerator "+enumerator)
	#printl("weapon "+weapon)
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
		aInventoryId = [9, 257],
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
		aInventoryId = [192, 226, 354, 1001],
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

# end of https://tf2maps.net/downloads/weapon-id-enum-and-helper-functions.16800/

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
							return "TF_WEAPON_wrench";
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

::MAX_WEAPONS <- 8
::GivePlayerWeapon <- function(player, className, itemID)
{
    //if (className == "tf_weapon_builder" || className == "tf_weapon_sapper" || className == "tf_weapon_invis" || className == "tf_weapon_pda_spy" || className == "tf_weapon_pda_engineer_build" || className == "tf_weapon_pda_engineer_destroy") return null;
    if (className == "tf_weapon_builder" || className == "tf_weapon_invis" || className == "tf_weapon_pda_spy" || className == "tf_weapon_pda_engineer_build" || className == "tf_weapon_pda_engineer_destroy") return null;

    local weapon = Entities.CreateByClassname(className)
	if (weapon == null) return;
	if (!player.IsValid() || !weapon.IsValid()) return;
    NetProps.SetPropInt(weapon, "m_AttributeManager.m_Item.m_iItemDefinitionIndex", itemID)
    NetProps.SetPropBool(weapon, "m_AttributeManager.m_Item.m_bInitialized", true)
    NetProps.SetPropBool(weapon, "m_bValidatedAttachedEntity", true)
    weapon.SetTeam(player.GetTeam())
    weapon.DispatchSpawn()

    // remove existing weapon in same slot
    for (local i = 0; i < MAX_WEAPONS; i++)
    {
        local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
        if (heldWeapon == null)
            continue
		if (heldWeapon.GetSlot() != weapon.GetSlot())
			continue
        heldWeapon.Destroy()
        NetProps.SetPropEntityArray(player, "m_hMyWeapons", null, i)
        break
    }

    player.Weapon_Equip(weapon)
    player.Weapon_Switch(weapon)

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

	NetProps.SetPropInt(wearable, "m_AttributeManager.m_Item.m_iItemDefinitionIndex", cosmetic.id)
	NetProps.SetPropBool(wearable, "m_AttributeManager.m_Item.m_bInitialized", true)
	NetProps.SetPropBool(wearable, "m_bValidatedAttachedEntity", true)
	wearable.DispatchSpawn()

	if ("attributes" in cosmetic)
		foreach (attribute in cosmetic.attributes)
			wearable.AddAttribute(attribute.name, attribute.value, -1)

	// (optional) Set the model to something new. (Obeys econ's ragdoll physics when ragdolling as well)
	if (model_path)
		wearable.SetModelSimple(model_path)

	// (optional) recalculates bodygroups on the player
	#SendGlobalGameEvent("post_inventory_application", { userid = GetPlayerUserID(player) })

	// (optional) if one wants to delete the item entity, collect them within the player's scope, then send Kill() to the entities within the scope.
	player.ValidateScriptScope()
	local player_scope = player.GetScriptScope()
	if (!("wearables" in player_scope))
		player_scope.wearables <- []
	player_scope.wearables.append(wearable)

	return wearable
}
::RemoveAllItems <- function(player, force_clear = false, custom_keepstock = false)
{
	// If you destroy an entity it becomes invalid
	// It will not longer keep a track of the next child and .NextMovePeer method becomes unavailable so the next iteration will fail
	// To prevent this you can store a reference the next child
	for (local next, current = player.FirstMoveChild(); current != null; current = next)
	{
		NetProps.SetPropBool(current, "m_bForcePurgeFixedupStrings", true)
		// Store the next handle
		next = current.NextMovePeer()
		if (current.GetClassname() == "tf_wearable") {
			# printl(current)
			current.Kill()
		} else if (current instanceof CEconEntity) {
			if (!force_clear && ("keepstock" in PVECurrentClass && PVECurrentClass.keepstock) || custom_keepstock) continue
			local className = GetWeaponClassnameFromId(NetProps.GetPropInt(current, "m_AttributeManager.m_Item.m_iItemDefinitionIndex"))
			# printl(className)
			if ((!("removepdas" in PVECurrentClass && PVECurrentClass.removepdas)) && (className == "tf_weapon_builder" || className == "tf_weapon_invis" || className == "tf_weapon_pda_spy" || className == "tf_weapon_pda_engineer_build" || className == "tf_weapon_pda_engineer_destroy")) continue;
			current.Destroy()
		}
	}
	player.ValidateScriptScope()
	local player_scope = player.GetScriptScope()
	if ("wearables" in player_scope) {
		foreach (wearable in player_scope.wearables)
			if (wearable.IsValid()) wearable.Kill()
		player_scope.wearables <- []
	}
}
::GiveWeapon <- function(player, wID) {
	local wCN = GetWeaponClassnameFromId(wID, player);
	GivePlayerWeapon(player, wCN, wID);
}
::WeaponSlotAddAttribute <- function(player, slotID, attrName, attrVal) {
    // remove existing weapon in same slot
    for (local i = 0; i < MAX_WEAPONS; i++)
    {
        local heldWeapon = NetProps.GetPropEntityArray(player, "m_hMyWeapons", i)
        if (heldWeapon == null)
            continue
        if (heldWeapon.GetSlot() != slotID)
            continue
        heldWeapon.RemoveAttribute(attrName)
        heldWeapon.AddAttribute(attrName, attrVal, -1)
        break
    }
}

##################
# CLEANUP SYSTEM #
##################
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
	"env_spritetrail"
	"env_starfield"
	"env_steam"
	"env_projectedtexture"
	"light_environment"
	"point_spotlight"
	"infodecal"
	"info_projecteddecal"
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
	"beam"
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
	"tf_dropped_weapon"
]
if (!PVEDoNotCleanDetails) ENTITY_TYPES.extend([
	"func_illusionary"
	"func_detail"
	"func_lod"
	"prop_detail"
])
::ENTITIES_NONAME <- [
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
	# "func_areaportal" # just not fun, removed
	# "func_areaportalwindow" # just not fun, removed
	"func_door"
]
::PVE_AMMOBOX_MODEL_INDEX <- PrecacheModel("models/items/ammopack_medium.mdl")
::PVE_CRIT_PUMPKIN_MODEL_INDEX <- PrecacheModel("models/props_halloween/pumpkin_loot.mdl")
::ENTKILL_FINISHED_ONCE <- false
::ENTKILL_RAGDOLLCOUNT <- 0
::KillEnts <- function() {
	# limit per step as killents runs perpetually now
	local i = 0
	local killLimit = 64
	foreach (t in ENTITY_TYPES) {
		for (local entity; entity = Entities.FindByClassname(entity, t);) {
			if (i > killLimit) return;
			entity.Kill()
			i++
		}
	}
	if (PVEAggressiveCleanup)
		foreach (t in ENTITIES_AGGRESSIVE) {
			if (i > killLimit) return;
			for (local entity; entity = Entities.FindByClassname(entity, t);) {
				# keep payload cart
				if (entity.GetName().find("cart")==null && entity.GetName().find("pay")==null) {
					entity.Kill()
					i++
				}
			}
		}
	# remove RED ragdolls (all if there are too many)
	local ragdollcount = 0
	for (local entity; entity = Entities.FindByClassname(entity, "tf_ragdoll");) {
		ragdollcount++
		local e = NetProps.GetPropEntity(entity, "m_hPlayer")
		if ( !e || e.IsFakeClient() || ENTKILL_RAGDOLLCOUNT > 8) {
			entity.Kill()
			ragdollcount-- # ragdoll has been killed, do not count to clean up count
		}
	}
	ENTKILL_RAGDOLLCOUNT = ragdollcount

	# remove non ammobox ammo pickups (sentry parts, etc.)
	for (local entity; entity = Entities.FindByClassname(entity, "tf_ammo_pack");) {
		if (i > killLimit) return;
		local index = NetProps.GetPropInt(entity, "m_nModelIndex")
		if (index == PVE_AMMOBOX_MODEL_INDEX || (PVEAllowCritPumpkins && index == PVE_CRIT_PUMPKIN_MODEL_INDEX))
			continue
		entity.Kill()
		i++
	}
	# cleanup dynamic / physics objects which are not doors and unnamed
	if (i==0)
		foreach (t in ENTITIES_NONAME) {
			for (local entity; entity = Entities.FindByClassname(entity, t);) {
				if (i > killLimit) return;
				if (PVEPropCleanupRespectCollision) {
					# keeps all gameplay relevant props (maybe too many)
					# skips all props which are solid (flag 4 is not FSOLID_NOT_SOLID)
					if (entity.IsSolid() || entity.GetSolid()!=0 || !entity.IsSolidFlagSet(4)) continue
				} else {
					# may delete something important but this is edict friendlier and reliable enough on almost every map
					if (entity.GetName() != "") continue;
					if (entity.GetModelName().find("door", 0) != null || entity.GetModelName().find("Door", 0) != null || entity.GetModelName().find("DOOR", 0) != null) continue;
				}
				entity.Kill()
				i++
			}
		}
	local first_bot = null
	if (i==0 && PVEReduceViewmodels)
		for (local entity; entity = Entities.FindByClassname(entity, "tf_viewmodel");) {
			if (i > killLimit) return;
			local owner = NetProps.GetPropEntity(entity, "m_hOwner")
			local weapon = NetProps.GetPropEntity(entity, "m_hWeapon")

			if (!owner || !weapon) {
				entity.Kill()
				i++
			} else if (owner.IsFakeClient()) {
				if (!first_bot) first_bot = owner
				if (owner == first_bot) continue
				NetProps.SetPropEntity(owner, "m_hViewModel", NetProps.GetPropEntity(first_bot, "m_hViewModel"))
				NetProps.SetPropInt(weapon, "m_iViewModelIndex", 0)
				entity.Kill()
				i++
			}
		}

	# single time cleanup
	if (!ENTKILL_FINISHED_ONCE) {
		if (PVEReduceSpawnpoints) {
			local knownrooms = []
			local points = []
			for (local entity; entity = Entities.FindByClassname(entity, "info_player_teamspawn");) {
				if (points.find(entity)!=null) {
					#print("Double point")
				} else {
					#print("Adding point")
					points.push(entity)
				}
			}
			foreach (entity in points){
				#print(entity)
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
						entity.Kill()
						entity = null
						break
					}
				}
				if (entity) {
					knownrooms.push([r, red, blu])
				}
			}
		}

		printl("CleanedUp")
		::ENTKILL_FINISHED_ONCE <- true
	}
}
RegisterEvent("OnGameEvent_teamplay_round_start", function(params) {
	# once the round restarts, most entities are reset -> new cleanup required
	::ENTKILL_FINISHED_ONCE <- false
})
RegisterEvent("OnGameEvent_teamplay_round_start", function(params) {
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

########
# TEST #
########
::PVEMedievalEnabledByDefault <- null
::PVEToggleMedieval <- function(enable = null) {
	local rules = Entities.FindByClassname(null, "tf_gamerules")
	local current = NetProps.GetPropBool(rules, "m_bPlayingMedieval")
	if (enable == null) enable = !current
	if (PVEMedievalEnabledByDefault == null) ::PVEMedievalEnabledByDefault <- current
	NetProps.SetPropBool(rules, "m_bPlayingMedieval", enable)
	Convars.SetValue("tf_medieval", enable)
	if (current != enable)
		for (local i = 1; i < MaxPlayers; i++) {
			local p = PlayerInstanceFromIndex(i)
			if (!p) continue
			ClientPrint(p, 4, "Medieval mode has been " + (enable ? "enabled" : "disabled"))
			p.Regenerate(true)
		}
}
::PVERevertMedieval <- function() {
	local rules = Entities.FindByClassname(null, "tf_gamerules")
	local current = NetProps.GetPropBool(rules, "m_bPlayingMedieval")
	if (PVEMedievalEnabledByDefault == null) ::PVEMedievalEnabledByDefault <- NetProps.GetPropBool(rules, "m_bPlayingMedieval")
	NetProps.SetPropBool(rules, "m_bPlayingMedieval", PVEMedievalEnabledByDefault)
	Convars.SetValue("tf_medieval", PVEMedievalEnabledByDefault)
	if (current != PVEMedievalEnabledByDefault)
		for (local i = 1; i < MaxPlayers; i++) {
			local p = PlayerInstanceFromIndex(i)
			if (!p) continue
			ClientPrint(p, 4, "Medieval mode has reverted to be " + (PVEMedievalEnabledByDefault ? "enabled" : "disabled"))
			p.Regenerate(true)
		}
}

#############
# PVE SETUP #
#############
# store max rounds to check for changes
::PVEMaxRounds <- -1

# initialize some convars for PVE
::PVEInitCVars <- function() {
	if (PVEMaxRounds==-1) ::PVEMaxRounds <- Convars.GetInt("mp_maxrounds")
	# general config
	Convars.SetValue("tf_bot_taunt_victim_chance", 100)
	Convars.SetValue("tf_avoidteammates_pushaway", 0)
	Convars.SetValue("mp_autoteambalance", 0)
	Convars.SetValue("mp_teams_unbalance_limit", 0)
	Convars.SetValue("tf_bot_reevaluate_class_in_spawnroom", 0)
	Convars.SetValue("tf_bot_keep_class_after_death", 1)
	Convars.SetValue("tf_bot_spawn_use_preset_roster", 0)
	Convars.SetValue("mp_disable_respawn_times", 1)
	if (PVEDisableRandomness) {
		Convars.SetValue("tf_weapon_criticals", 0)
		Convars.SetValue("tf_use_fixed_weaponspreads", 1)
	}

	# preset specific
	Convars.SetValue("tf_bot_difficulty", PVECurrentClass.difficulty)
	Convars.SetValue("tf_bot_force_class", PVECurrentClass.classname)

	if (PVECancelPlayerWait)
		Convars.SetValue("mp_waitingforplayers_cancel", 1)
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
function ForceChangeClass(player, classIndex) {
	player.SetPlayerClass(classIndex)
	NetProps.SetPropInt(player, "m_Shared.m_iDesiredPlayerClass", classIndex)
	player.ForceRegenerateAndRespawn()
}

::ClassNameToClassID <- function(name) {
	switch (name) {
		case "scout": return 1
		case "sniper": return 2
		case "soldier": return 3
		case "demoman": return 4
		case "medic": return 5
		case "heavyweapons": return 6
		case "pyro": return 7
		case "spy": return 8
		case "engineer": return 9
		default: return name
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
	if (PVEDisabled) return
	if (player.IsFakeClient()) {
		if (player.GetTeam() != PVEBotTeam) {
			player.ForceChangeTeam(PVEBotTeam, false)
			player.ForceRegenerateAndRespawn()
		}
	} else {
		if (player.GetTeam() == PVEBotTeam) {
			player.ForceChangeTeam(PVEHumanTeam, false)
			player.ForceRegenerateAndRespawn()
		}
	}
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
::KillstreakAttributes <- [
	["killstreak tier", 3],
	["killstreak effect", 2003],
	["killstreak idleeffect", 2],
]

::FinalizeBotSetup <- function() {
	local player
	for (local i = 1; i <= MaxPlayers; i++)
	{
		player = PlayerInstanceFromIndex(i)
		if (player && player.IsFakeClient())
		{
			if ("namechoices" in PVECurrentClass && PVECurrentClass.namechoices.len() != 0) {
				SetFakeClientConVarValue(player, "name", PVECurrentClass.namechoices[RandomInt(0, PVECurrentClass.namechoices.len()-1)])
			}
			if ("mission" in PVECurrentClass) {
				player.SetMission(PVECurrentClass.mission, true)
			}
			if ("weapon_restriction" in PVECurrentClass) {
				player.AddWeaponRestriction(PVECurrentClass.weapon_restriction)
			}
			if ("behavior" in PVECurrentClass) {
				player.SetBehaviorFlag(PVECurrentClass.behavior)
			}
			if ("bot_attributes" in PVECurrentClass) {
				player.AddBotAttribute(PVECurrentClass.bot_attributes)
			}
		}
	}
	if (PVEAllowSpecialClassBot) {
		player = GetPreferrablyABotButOtherwiseAnyPlayerByHandle()
		if (player.IsFakeClient()) {
			local bottype = null
			if ("specialbot" in PVECurrentClass && PVECurrentClass.specialbot && PVECurrentClass.specialbot != "") bottype = PVEClassOptions[PVECurrentClass["specialbot"]]
			if (PVEForceSpecialBotType) bottype = PVEClassOptions[PVEForceSpecialBotType]
			if (bottype) {
				ForceChangeClass(player, ClassNameToClassID(bottype.classname))
				if ("namechoices" in bottype && bottype.namechoices.len() != 0) {
					SetFakeClientConVarValue(player, "name", bottype.namechoices[RandomInt(0, bottype.namechoices.len()-1)])
				}
			}
		}
	}
}

::SetSpecialBot <- function(type) {
	::PVEForceSpecialBotType <- type
	local player = GetPreferrablyABotButOtherwiseAnyPlayerByHandle()
	if (player.IsFakeClient()) {
		local bottype = null
		if ("specialbot" in PVECurrentClass && PVECurrentClass.specialbot && PVECurrentClass.specialbot != "") bottype = PVEClassOptions[PVECurrentClass["specialbot"]]
		if (PVEForceSpecialBotType) bottype = PVEClassOptions[PVEForceSpecialBotType]
		if (bottype) {
			ForceChangeClass(player, ClassNameToClassID(bottype.classname))
			if ("namechoices" in bottype && bottype.namechoices.len() != 0) {
				SetFakeClientConVarValue(player, "name", bottype.namechoices[RandomInt(0, bottype.namechoices.len()-1)])
			}
		}
	}
}

::EquipBot <- function(player, delayed = true) {
	local c = PVECurrentClass
	local is_special = player == GetPreferrablyABotButOtherwiseAnyPlayerByHandle()
	if (PVEAllowSpecialClassBot && is_special) {
		if ("specialbot" in PVECurrentClass && PVECurrentClass.specialbot && PVECurrentClass.specialbot != "") c = PVEClassOptions[PVECurrentClass.specialbot]
		if (PVEForceSpecialBotType && PVEForceSpecialBotType != "") c = PVEClassOptions[PVEForceSpecialBotType]
	}
	function run_now_or_delayed(f) {
		if (PVEAllowDelayedEquip && delayed) {
			RunDelayed(f)
		} else {
			f()
		}
	}
	if (PVEDisabled) return;
	RemoveAllItems(player, false, is_special)
	run_now_or_delayed(function(){
		RemoveAllItems(player, false, is_special)
	})
	local temp = function(){
		if (!player || !player.IsValid()) return;
		function run_now_or_delayed(f) {
			if (PVEAllowDelayedEquip && delayed) {
				RunDelayed(f)
			} else {
				f()
			}
		}
		run_now_or_delayed(function(){
			if ("primaries" in c && c.primaries.len() != 0) {
				local selected = c.primaries[RandomInt(0, c.primaries.len()-1)]
				GiveWeapon(player, selected.id)
				if ("attributes" in selected)
					foreach (attribute in selected.attributes)
						WeaponSlotAddAttribute(player, 0, attribute.name, attribute.value)
			}
		})
		run_now_or_delayed(function(){
			if ("secondaries" in c && c.secondaries.len() != 0) {
				local selected = c.secondaries[RandomInt(0, c.secondaries.len()-1)]
				GiveWeapon(player, selected.id)
				if ("attributes" in selected)
					foreach (attribute in selected.attributes)
						WeaponSlotAddAttribute(player, 1, attribute.name, attribute.value)
			}
		})
		run_now_or_delayed(function(){
			if ("melees" in c && c.melees.len() != 0) {
				local selected = c.melees[RandomInt(0, c.melees.len()-1)]
				GiveWeapon(player, selected.id)
				if ("attributes" in selected)
					foreach (attribute in selected.attributes)
						WeaponSlotAddAttribute(player, 2, attribute.name, attribute.value)
			}
		})
		run_now_or_delayed(function(){
			for (local slot = 0; slot < 8; slot++) {
				foreach (attribute in KillstreakAttributes)
					WeaponSlotAddAttribute(player, slot, attribute[0], attribute[1])
				if (PVEDisableRandomness || (PVEDisableBotCrits && player.IsFakeClient()))
					WeaponSlotAddAttribute(player, slot, "crit mod disabled", 0)
			}
		})
		if ("cosmetics" in c)
			run_now_or_delayed(function(){
				foreach (cosmetic in c.cosmetics)
					GivePlayerCosmetic(player, cosmetic)
			})
		if ("attributes" in c)
			run_now_or_delayed(function(){
				foreach (attribute in c.attributes) {
					player.RemoveCustomAttribute(attribute.name)
					player.AddCustomAttribute(attribute.name, attribute.value, -1)
				}
			})
		if ("model" in c && c.model != "")
			player.SetCustomModelWithClassAnimations(c.model)
		if ("maxhealth" in c && c.maxhealth != 0) {
			player.SetHealth(c.maxhealth)
			player.RemoveCustomAttribute("max health additive bonus")
			player.AddCustomAttribute("max health additive bonus", c.maxhealth - player.GetMaxHealth(), -1)
		}
	}
	if (PVESlightDelayedEquip)
		RunDelayed(temp)
	else
		temp()
}

::RemoveBots <- function() {
	SendToConsole("tf_bot_kick all")
	SendToServerConsole("tf_bot_kick all")
	Convars.SetValue("tf_bot_quota", 0)
	Convars.SetValue("tf_bot_auto_vacate", true)
}

::AddBots <- function() {
	local currentQuota = Convars.GetInt("tf_bot_quota")
	if (currentQuota < PVEBotCount && GetBotCount() >= currentQuota) {
		Convars.SetValue("tf_bot_quota", PVEBotCount)
		Convars.SetValue("tf_bot_quota_mode", "normal")
		Convars.SetValue("tf_bot_auto_vacate", false)
	}
}

::MaxPlayers <- MaxClients().tointeger()
::PVEHumanCount <- 0
::PVEBotCount <- 0
::PVEBotCountOverride <- 0

::PVECalcHumanBotCount <- function() {
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
	if (PVEBotCount == 52) ::PVEBotCount <- 50 # 50 looks better on ui
	if (PVEBotCountOverride) ::PVEBotCount <- PVEBotCountOverride
}

::PVECurrentClass <- null
::PVELoadClassConfig <- function(classname, player=null) {
	printl("[PVE] LOADING PRESET: " + classname)
	if (classname != "disable" && !PVEForceDisable) {
		if (classname in PVEClassOptions) {
			printl("[PVE] RELOADING")
			::PVECurrentClass <- PVEClassOptions[classname]
			::PVEDisabled <- false
			Convars.SetValue("mp_humans_must_join_team", TEAM_NAMES[PVEHumanTeam])
		} else {
			printl("[PVE] THE PRESET " + classname + " DOES NOT EXIST")
			if (player)
				ClientPrint(player, 3, "[PVE] the preset " + classname + " does not exist.")
				ClientPrint(player, 3, "[PVE] Use `!pve list` to see all available presets.")
			return
		}
	} else {
		Convars.SetValue("mp_humans_must_join_team", "any")
		::PVEDisabled <- true
	}
	PVECalcHumanBotCount()
	RemoveBots()
	::PVERunning <- false
	::PVEState <- 0
	if (PVEShowBotHealth)
		NetProps.SetPropInt(Entities.FindByClassname(null, "monster_resource"), "m_iBossHealthPercentageByte", 0)
}

# mirror pve teams -> humans red, bots blu
::PVEMirror <- function(mirrored) {
	local change = false
	if (mirrored) {
		if (PVEHumanTeam != TEAM_RED) change = true
		::PVEHumanTeam <- TEAM_RED
		::PVEBotTeam <- TEAM_BLU
	} else {
		if (PVEHumanTeam != TEAM_BLU) change = true
		::PVEHumanTeam <- TEAM_BLU
		::PVEBotTeam <- TEAM_RED
	}
	if (change && PVERunning) {
		for (local i = 1; i <= MaxPlayers; i++)
		{
			local p = PlayerInstanceFromIndex(i)
			if (!p) continue
			MoveTeam(p)
		}
	}
}
#####################
# PVE CHAT COMMANDS #
#####################
RegisterCommand("!pve", function(player, args){
	if (args.len()>1) {
		if (args[1]=="init") {
			if (PVERunning) {

			} else if (PVEForceDisable) {
				ClientPrint(player, 3, "PVE has been disabled on " + GetMapName() + " to prevent crashes.")
				ClientPrint(player, 3, "If you are sure the map works, change the config.")
				ClientPrint(player, 3, "If you are unsure, change the map.")
			} else {
				::PVERunning <- true
				::PVEDisabled <- false
				::PVEState <- 0
				RemoveBots()
				AddThinkToEnt(Entities.FindByClassname(null, "tf_player_manager"), "PVEMainLoop")
				Convars.SetValue("mp_humans_must_join_team", TEAM_NAMES[PVEHumanTeam])
				if (!PVEInitialized) {
					::PVEInitialized <- true
					if (PVELocalInitResetGame)
						Convars.SetValue("mp_restartgame", 5)
					else if (PVELocalInitPrepareMap){
						if (!IsInWaitingForPlayers())
							PVESetup({})
						for (local i = 1; i <= MaxPlayers; i++) {
							local p = PlayerInstanceFromIndex(i)
							if (!p) continue
							MoveTeam(p)
							PVEPlayerPostInit({userid=GetPlayerUserID(p)})
						}
					}
				}
			}
			return
		} else if (args[1] == "list") {
			foreach (name, preset in PVEClassOptions) {
				ClientPrint(player, 3, format("%s [%s]", name, preset.classname))
			}
			return
		} else if (args[1] == "mirror") {
			if (args.len()>2) {
				PVEMirror(args[2] != "0" && args[2] != "false")
			} else {
				ClientPrint(player, 3, args[0] + " " + args[1] + " ! Missing parameter [mirror (bool)]")
			}
			return
		} else if (args[1] == "restart") {
			Convars.SetValue("mp_restartgame", 5)
			return
		} else if (args[1] == "kb") {
			for (local i = 1; i <= MaxPlayers; i++)
			{
				local p = PlayerInstanceFromIndex(i)
				if (!p || !p.IsFakeClient()) continue;
				p.TakeDamage(p.GetHealth() * 64, 16, null)
			}
			return
		} else if (args[1] == "rb") {
			for (local i = 1; i <= MaxPlayers; i++)
			{
				local p = PlayerInstanceFromIndex(i)
				if (!p || !p.IsFakeClient()) continue;
				p.ForceRegenerateAndRespawn()
			}
			return
		} else if (args[1] == "morehumans") {
			if (args.len()>2) {
				::PVEIncreaseHumanCount <- args[2] != "0" && args[2] != "false"
				PVECalcHumanBotCount()
			} else {
				ClientPrint(player, 3, args[0] + args[1] + " ! Missing parameter [bool] (currently " + (PVEIncreaseHumanCount ? "true)" : "false)"))
			}
			return
		} else if (args[1] == "healthbar") {
			if (args.len()>2) {
				::PVEShowBotHealth <- args[2] != "0" && args[2] != "false"
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
		} else if (args[1] == "maintenance") {
			if (args.len()>2) {
				::PVEMaintenanceMode <- args[2] != "0" && args[2] != "false"
			} else {
				ClientPrint(player, 3, args[0] + args[1] + " ! Missing parameter [bool] (currently " + (PVEMaintenanceMode ? "true)" : "false)"))
			}
			return
		} else if (args[1] == "maintenancemsg") {
			if (args.len()>2) {
				::PVEMaintenanceMessage <- args[2]
				for (local i = 3; i < args.len(); i++) ::PVEMaintenanceMessage <- PVEMaintenanceMessage + " " + args[i]
			} else {
				ClientPrint(player, 3, args[0] + args[1] + " ! Missing parameter [string] (currently `" + PVEMaintenanceMessage "`")
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
		} else if (args[1] == "specialbot") {
			if (args.len()>2) {
				if (args[2] == "null") {
					SetSpecialBot(null)
				} else {
					if (args.len()>3)
						PVEClassOptions[args[2]].classname = args[3]
					if (args.len()>4)
						PVEClassOptions[args[2]].difficulty = args[4].tointeger()
					SetSpecialBot(args[2])
				}
			} else {
				ClientPrint(player, 3, args[0] + args[1] + " ! Missing parameter [string] (currently `" + (PVEForceSpecialBotType ? PVEForceSpecialBotType : "null") + "`")
			}
			return
		} else if (args[1] == "joinbots") {
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
		ClientPrint(player, 3, "deactivate - disable pve if currently active")
		ClientPrint(player, 3, "list - list all current presets")
		ClientPrint(player, 3, "kb - kill all bots")
		//ClientPrint(player, 3, "rb - respawn all bots immediately")
		//ClientPrint(player, 3, "morehumans [0/1] - increase human count")
		ClientPrint(player, 3, "healthbar [0/1] - show cumulative healthbar")
		//ClientPrint(player, 3, "restart - restart current game (mp_restartgame)")
		ClientPrint(player, 3, "mirror [0/1] - enable/disable mirror mode (bots on blu)")
		ClientPrint(player, 3, "botcount [integer] - force a certain amount of bots to be in game")
		ClientPrint(player, 3, "joinbots - join the bot team")
	}
}, "[configname] - forcefully change bot config")

########################
# PVE UPDATE FUNCTIONS #
########################
::PVEUpdate <- function() {
	PVECheckOptions()
	if (PVEShowBotHealth)
		PVEUpdateHealthbar()
	if ("infiniteammo" in PVECurrentClass && PVECurrentClass.infiniteammo)
		PVERegenerateAmmo()
	if (PVERedImmediateRespawn)
		PVEHandleImmediateRespawns()
}

::PVECheckOptions <- function() {
	if (Convars.GetInt("mp_autoteambalance") != 0) {
		PVELoadClassConfig(PVEVoteOption1)
		Convars.SetValue("mp_autoteambalance", 0)
	} else if (Convars.GetInt("tf_classlimit") != 0) {
		PVELoadClassConfig(PVEVoteOption2)
		Convars.SetValue("tf_classlimit", 0)
	} else if (Convars.GetInt("mp_maxrounds") != PVEMaxRounds) {
		PVELoadClassConfig(PVEVoteOption3)
		Convars.SetValue("mp_maxrounds", PVEMaxRounds)
	} else if (Convars.GetStr("mp_humans_must_join_team") == TEAM_NAMES[PVEBotTeam]) {
		# the server changes this to red after round end on team switch
		Convars.SetValue("mp_humans_must_join_team", TEAM_NAMES[PVEHumanTeam])
	}
}
# experimental
::PVEUpdateHealthbar <- function() {
	local health = 0
	local maxhealth = 0
	for (local i = 1; i <= MaxPlayers; i++) {
		local p = PlayerInstanceFromIndex(i)
		if (p&&p.GetTeam() == PVEBotTeam) {
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

::PVEUserIDIter <- 1
::PVERegenerateAmmo <- function() {
	local p = PlayerInstanceFromIndex(PVEUserIDIter)
	if (p) {
		if (p.GetTeam() == PVEBotTeam) {
			local health = p.GetHealth()
			p.Regenerate(true)
			p.SetHealth(health)
		}
	}
	::PVEUserIDIter <- PVEUserIDIter+1
	if (PVEUserIDIter > MaxPlayers)
		::PVEUserIDIter <- 1
}

::PVERespawnTimer <- 0
::PVEHandleImmediateRespawns <- function() {
	if (PVEDeadPlayers.len()>0 && PVERespawnTimer==0) {
		PVERespawnTimer = -1
		local p = PVEDeadPlayers.pop()
		if (p.IsValid() && PVERedImmediateRespawn && p.GetTeam() == PVEBotTeam) {
			# only respawn after round if allowed by config
			if (PVERedImmediateRespawnAfterRound || GetRoundState() < 5)
				p.ForceRegenerateAndRespawn()
		}
	}
	PVERespawnTimer++
	PVERespawnTimer = PVERespawnTimer % PVERedImmediateRespawnFakeWaves
}

::PVEDeadPlayers <- []
RegisterEvent("OnGameEvent_player_death", function(params) {
	# ignore dead ringer feign
	if (PVEDisabled || params.death_flags & 32) return;
	local player = GetPlayerFromUserID(params.userid)
	# only remove cosmetics if cosmetics can be applied
	if (!player || player.GetTeam() == PVEHumanTeam) return;
	# remove cosmetics to prevent duplication
	RemoveAllItems(player, true)
	if (PVERedImmediateRespawn) {
		PVEDeadPlayers.push(player)
	}
})

#################################
# PVE PLAYER POST SPAWN HANDLER #
#################################

::PVEPlayerPostInit <- function(params) {
	if (!PVEInitialized) return;
	PVEEquipHumansAsBotsFn(params)
	PVEBuildInSpawnFn(params)
	PVEDamageBot(params)
}

# executed after spawn / after resupply locker has been touched
RegisterEvent("OnGameEvent_post_inventory_application", PVEPlayerPostInit)

# damage bots with one point of health (useful to move heavies out of spawn)
::PVEDamageBot <- function(params)
{
	if (PVEDisabled) return;
	local player = GetPlayerFromUserID(params.userid)
	if (player != null && player.IsFakeClient())
	{
		EquipBot(player)
		if ("damageonce" in PVECurrentClass && PVECurrentClass.damageonce)
			RunDelayed(function() {
				if (!player || !player.IsValid()) return
				player.TakeDamage(1.0, 0, 0)
			})
	}
}

# allow human players to blend in with the bots
::PVEEquipHumansAsBotsFn <- function(params) {
	if (!PVETreatNonCosmeticRedPlayersAsBots) return;
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
						if (cosmetic.id == id) id_in_current_cosmetics = true
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
		heldWeapon.ValidateScriptScope()
		local scope = heldWeapon.GetScriptScope()
		local try_build = false
		scope["think_pve_respawn"] <- function() {
			local object = NetProps.GetPropEntity(self, "m_hObjectBeingBuilt")
			if (object)
				NetProps.SetPropBool(object, "m_bServerOverridePlacement", true)

            local buttons = NetProps.GetPropInt(player, "m_nButtons");
			if (player.GetActiveWeapon() != self) {
				try_build = false
				return
			}
			if (try_build) {
				self.PrimaryAttack()
				try_build = false
			} else if ((buttons & Constants.FButtons.IN_ATTACK) != 0) {
				for (local entity; entity = Entities.FindByClassname(entity, "func_respawnroom");) {
					EntFireByHandle(entity, "ToggleActive", "", 0, null, null)
					EntFireByHandle(entity, "ToggleActive", "", 0.1, null, null)
				}
				try_build = true
			}
		}
		AddThinkToEnt(heldWeapon, "think_pve_respawn")
	}
}
# reset the player model on team change to prevent visual bugs
RegisterEvent("OnGameEvent_player_team", function(params){
	local player = GetPlayerFromUserID(params.userid);
	if (!player.IsFakeClient() && params.team == PVEHumanTeam) {
		# reset the player model if the player is not a bot
		# (would break vsh and zi (+vip maybe) but these modes break already)
		# this is no problem as the model is only changed if
		# PVETreatNonCosmeticRedPlayersAsBots is true
		# TODO: find a better place to reset player models
		player.SetCustomModel("")
		# remove all items/cosmetics on team switch too
		RemoveAllItems(player, true)
	}
})

#################
# PVE MAP SETUP #
#################

# required by cp_freaky_fair
::PVEMapMirrored <- false
::PVESetup <- function(params)
{
	if ("full_reset" in params) ::PVEStartTime <- Time()
	if (!PVEInitialized) return;
	local flag_count = 0
	local flag_blu = null
	for (local entity; entity = Entities.FindByClassname(entity, "Item_teamflag");) {
		flag_count++
		if (entity.GetTeam() == TEAM_BLU) {
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
	if (!is_koth && !IsInMedievalMode()) {
		# prevent red wins on 3/5cp maps
		local multiround = false
		for (local entity; entity = Entities.FindByClassname(entity, "team_control_point_master");) {
			entity.KeyValueFromInt("cpm_restrict_team_cap_win", 1)
		}
		for (local entity; entity = Entities.FindByClassname(entity, "team_control_point_round");) {
			entity.KeyValueFromInt("cpr_restrict_team_cap_win", 2)
			multiround = true
		}
		for (local e; e = Entities.FindByClassname(e, "trigger_capture_area");) {
			EntFireByHandle(e, "SetTeamCanCap", "2 0", 10.0, null, null)
		}
		# only change points to red if there is a single round (e.g.) not on hydro/dustbowl
		if (!multiround) {
			local lowest_index = 999
			local lowest_point = null
			local highest_index = -1
			local highest_point = null
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
				#printl(index)
				# locking only works from 5 seconds into the match and upward
				EntFireByHandle(e, "setowner", "2", 11 - index * 0.1, e, e)
				if (PVENextPointCapForceLinear && !IsAttackDefenseMode())
					EntFireByHandle(e, "setlocked", "1", 12 - index * 0.1, e, e)
			}
			if (PVENextPointCapForceLinear && !IsAttackDefenseMode() && lowest_point && lowest_point.GetTeam() == TEAM_BLU)
				EntFireByHandle(lowest_point, "SetUnlockTime", "5", 15, lowest_point, lowest_point)
			if (PVENextPointCapForceLinear && !IsAttackDefenseMode() && highest_point && highest_point.GetTeam() == TEAM_BLU){
				::PVEMapMirrored <- true
				EntFireByHandle(highest_point, "SetUnlockTime", "5", 15, highest_point, highest_point)
			}
		}
	}
}
RegisterEvent("OnGameEvent_teamplay_setup_finished", PVESetup)
RegisterEvent("OnGameEvent_teamplay_round_start", PVESetup)

RegisterEvent("OnGameEvent_teamplay_point_captured", function(params) {
	if (!PVEInitialized || !PVEResetBotsOnCapturedPoint) return;
	for (local i = 1; i < MaxPlayers; i++) {
		local p = PlayerInstanceFromIndex(i)
		if (p && p.IsFakeClient()) {
			p.ForceRegenerateAndRespawn()
		}
	}
})

RegisterEvent("OnGameEvent_teamplay_point_captured", function(params) {
	if (!PVEInitialized) return;
	local is_koth = false
	for (local entity; entity = Entities.FindByClassname(entity, "team_round_timer");) {
		if (entity.GetName() == "zz_blue_koth_timer" || entity.GetName() == "zz_red_koth_timer") {
			is_koth = true
			break;
		}
	}
	if (!is_koth && PVENextPointCapForceLinear && !IsInMedievalMode() && !IsAttackDefenseMode()) {
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
	} else if (IsAttackDefenseMode()) {
		Entities.FindByClassname(null, "team_control_point_master").KeyValueFromInt("cpm_restrict_team_cap_win", 2)
	}
})
# move bots to correct team on spawn and continue to add bots until done
RegisterEvent("OnGameEvent_player_spawn", function(params)
{
	if (PVEDisabled) return
	local player = GetPlayerFromUserID(params.userid)
	if (player && player.IsFakeClient())
	{
		MoveTeam(player)
		AddBots()
	}
})

##########################
# PVE TIMER MODIFICATION #
##########################
::PVEStartTime <- Time()
::PVESetupTime <- 0
::PVETimerRef <- null
::PVEUpdateTimer <- function() {
	# only count up if attacking
	# -> this allows defending humans to win
	if (PVEHumanTeam == TEAM_RED) return;
	if (!PVETimerRef || !PVETimerRef.IsValid()) {
		::PVETimerRef <- Entities.FindByClassname(null, "team_round_timer")
		return
	}
	if (NetProps.GetPropBool(PVETimerRef, "m_bIsDisabled")) {
		return
	}
	if (NetProps.GetPropInt(PVETimerRef, "m_nSetupTimeLength") + 5 > Time() - PVEStartTime){
		::PVESetupTime = NetProps.GetPropInt(PVETimerRef, "m_nSetupTimeLength")
		return
	}
	if (PVETimerRef.GetName() == "zz_" + TEAM_NAMES[PVEHumanTeam] + "_koth_timer" || PVETimerRef.GetName() == "zz_teamplay_waiting_timer") {
		::PVETimerRef <- Entities.FindByClassname(PVETimerRef, "team_round_timer")
		return
	}

	local t = format("%d", Time() - PVEStartTime - PVESetupTime)
	EntFireByHandle(PVETimerRef, "SetTime", t, 0.0, null, null)
	EntFireByHandle(PVETimerRef, "SetMaxTime", t, 0.0, null, null)
	EntFireByHandle(PVETimerRef, "Pause", "0", 0.0, null, null)
	::PVETimerRef <- null
}

############
# PVE MAIN #
############
::RunDelayed <- function(f) {
	DelayedFunctionQueue.insert(0, f)
}
::DelayedFunctionQueue <- []

::PVERunning <- false
::PVEState <- 0
::PVEDisabled <- false
::PVEInitialized <- PVEIsOnDedicatedServer
::PVELastBotCount <- 0
::PVEMaintenanceMode <- false
::PVEMaintenanceMessage <- "This Server is currently undergoing maintenance."
::PVEMainLoop <- function() {
	if (PVEMaintenanceMode)
		MSGALL(PVEMaintenanceMessage)
	if (!PVERunning) return
	if (GetHumanCount() == 0) {
		::PVERunning <- false
		::PVEState <- 0
		::PVELastBotCount <- 0
		::PVEMaintenanceMode <- false
		printl("[PVE] PAUSING")
		NetProps.SetPropString(self, "m_iszScriptThinkFunction", "")
		RemoveBots()
		PVEMirror(false)
		::PVEClassCheckInitialized <- false
		return
	}
	PVEUpdateTimer()
	if (GetBotCount() == 0 && PVEState == 0) {
		::PVEState <- 1
		::PVELastBotCount <- 0
		printl("[PVE] STARTING")
		PVEInitCVars()
	} else if (GetBotCount() == 0 && PVEState == 1) {
		::PVEState <- 2
		printl("[PVE] ADDING BOTS")
		AddBots()
	} else if (PVEState == 2 && GetBotCount() == PVEBotCount){
		printl("[PVE] FINALIZING")
		::PVEState <- 3
		FinalizeBotSetup()
	} else if (PVEState == 2 && GetBotCount() >= PVELastBotCount) {
		# failsafe to prevent bots breaking
		::PVELastBotCount <- GetBotCount()
	} else if (PVEState != 3 || GetBotCount() != PVEBotCount) {
		printl("[PVE] INVALID STATE")
		RemoveBots()
		::PVELastBotCount <- 0
		::PVEState <- 0
		::PVERunning <- false
		if (!PVEMaintenanceMode)
			NetProps.SetPropString(self, "m_iszScriptThinkFunction", "")
	}
	PVEUpdate()
	KillEnts()
	if (DelayedFunctionQueue.len() > 0) DelayedFunctionQueue.pop()()
}

# initialize PVE once the first player spawns
RegisterEvent("OnGameEvent_post_inventory_application", function(params)
{
	if (PVEDisabled) return;
	if (PVERunning || PVEForceDisable) {

	} else {
		::PVERunning <- true
		AddThinkToEnt(Entities.FindByClassname(null, "tf_player_manager"), "PVEMainLoop")
		RemoveBots()
	}
})

# disable pve by default on listen servers
if (!PVEIsOnDedicatedServer || PVEForceDisable) PVELoadClassConfig("disable")
else if (PVEIsOnDedicatedServer && !PVEForceDisable) ::PVEDisabled <- false

# experimental: overwrite ClearGameEventCallbacks to prevent VScript maps from
# 				causing conflicts with this script
if (PVEExperimentalTryVScriptMaps) {
	::OldClear <- ClearGameEventCallbacks
	::ClearGameEventCallbacks <- function(actually_clear=false) {
		if (actually_clear) {
			OldClear()
			OldClear(true)
		}
	}
}

::MSGALL <- function(message) {
	for (local i = 1; i < MaxPlayers; i++) {
		local p = PlayerInstanceFromIndex(i)
		if (!p) continue
		ClientPrint(p, 4, message)
	}
}
::TXTALL <- function(message) {
	for (local i = 1; i < MaxPlayers; i++) {
		local p = PlayerInstanceFromIndex(i)
		if (!p) continue
		ClientPrint(p, 3, message)
	}
}

if (PVEIsOnDedicatedServer && PVEForceDisable && !PVEMaintenanceMode) {
	RegisterEvent("OnGameEvent_player_spawn", function(params){
		if (PVEIsOnDedicatedServer && PVEForceDisable && !PVEMaintenanceMode) {
			::PVEMaintenanceMode <- true
			::PVEMaintenanceMessage <- "PVE has been disabled on this map.\nPlease enable it in the config or change the map."
			AddThinkToEnt(Entities.FindByClassname(null, "tf_player_manager"), "PVEMainLoop")
		}
	})
}

CollectEventSetup()
