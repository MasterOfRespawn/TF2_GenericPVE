TF2-GenericPVE
==============

This is a recreation of the one thousand uncles PVE mode in VScript but expanded
to have a slightly bigger feature set.
All players are put on BLU and have to fight against a horde of all identically
equipped bots on RED. The goal of the mode is to simply win like usual.
All settings are at the start of the file.

Public server
-------------
We have a server running this plugin at: `152.53.53.243`.
If the server changes, this section will be updated.

Features
--------
- Preset based bot system
- Recreations of engiPVE (one thousand uncles) and spyPVE (one jontillion spies)
- Integrated entity stripper to remove decorational edicts and reduce crashes
- MirrorMode: bots are changed to BLU and RED needs to defend until the time
  runs out. (Not tested much.)
- Dynamic bot count setting (based on maxplayers not current players)
  - More bots on servers with more player spots
- Chat based settings command
  - Permission system to only allow command usage for specified steam IDs
  - ability to change teams as admin
- Does not affect local games in any way until initialized
- Automatically disables itself on maps it is known to crash on
  -> optional map specific configuration
- Automatic navmesh generation if a map is missing a navmesh
  - manual navmesh generation if on a listen server
- Bots can not deal random crits but humans can.

Deviations from normal gameplay
-------------------------------
- The match timer (if present) counts up instead of down.
- On KOTH maps only the red timer counts up so BLU can still win by capping.
- Most non-gameplay entities are automatically removed to reduce stress on the 
  server.
- On CTF maps the BLU intelligence is automatically disabled to prevent the
  bots winning.
  - This causes bots of all classes except engi, sniper and spy to stand still
    in spawn.
- Symmetrical cp maps are automatically 'converted' to attack-defense like maps.
  - This is done by preventing RED from winning and giving all points to RED on
  round start.
  - This affects TC (hydro) aswell causing half of the map to be inaccessible.
  - Like on Uncletopia, there is a cooldown once a point is capped before the
    next point is unlocked. This is to prevent back-capping and affects all 
    classes but can be disabled in the settings.
- Human Engineers are able to build in spawn.
- Depending on the settings bots may respawn immediately.
- The bots may be buffed or have non stock weapons (like in MVM) depending on
  the preset.
- Bot Ragdolls, dropped weapons and non ammo box pickups (like building gibs or 
  crit pumpkins) are deleted to free up edict slots.

Setup
-----
- Download `genericpve.nut`
- Go to your tf2 installation
- Create a the folder `vscripts` under `tf/scripts` if it does not already exist
- Copy `genericpve.nut` to the now created `tf/scripts/vscripts`
- Rename `genericpve.nut` to `mapspawn.nut`
- Start TF2 and load a map
- If running a game locally, send `!pve init` in chat to start

Commands
--------
The script is controlled via chat using
`!pve [subcommand/preset] (class) (difficulty)`

When selecting a preset, the class and difficulty can be changed. 
This is optional.

Valid values for `class` are: `scout`, `soldier`, `pyro`, `demoman`,
`heavyweapons`, `engineer`, `medic`, `sniper` and `spy`

Valid values for `difficulty` are `0` (easy), `1` (medium), `2` (hard) and `3`
(expert).

Available subcommands are:
- `list`
  - lists all available presets
- `init`
  - start pve on a local server
- `deactivate`
  - disable PVE for the current game (can be restarted with `init`)
- `kb`
  - kill all bots
- `rb`
  - respawn all bots
- `morehumans` [0/1]
  - open more player slots for human players
- `healthbar` [0/1]
  - display a healthbar of cumulative bot health
- `restart`
  - restart the current map
- `mirror` [0/1]
  - toggle mirror mode
- `botcount` [0-MAXPLAYERS]
  - force a set amount of bots to join (ignores morehumans)
- `joinbots`
  - join the bot team

Presets
-------
- stock
  - just stock bots with stock loadout.
  - useful with the option to overwrite the preset class and difficulty.
- blank
  - like stock but bots don't have any weapons
- heavy [DEFAULT]
  - Heavies with Sandvich, Holiday Punch and one of a few projectile based
    primaries. Hitscan weapons (especially miniguns) are not fun to fight.
  - Aside from having non heavy weapons, these bots do not have any buffs.
- bonk
  - Scouts without primaries
  - Only equipped with bonk and the fan of war
- dane
  - recreation of engiPVE (a.k.a. one thousand uncles)
  - Shotgun, Widowmaker, Frontier Justice or Pomson as primary
  - faster wrench swing speed, can remove sappers in one hit
  - 185 health, infinite metal
  - do not build teleporters
  - UncleDane cosmetics
- jonto
  - recreation of spyPVE (a.k.a. one jontillion spies)
  - revolver, ambassador, L'Etranger or Enforcer as primary
  - otherwise stock
  - 200 health
  - Jontohil2 cosmetics
- safedane / safejonto
  - same as dane / jonto respectively
  - no cosmetics
  - less bots overall
  - Use if the server struggles with default dane / jonto
- knight / caber
  - two demoknight bot presets.
  - Equipped with the skullcutter / caber and the wee booties
- sentry
  - engineer bots with only wrenches
  - usually construct sentryguns
  - default for ctf maps (as other bot types break)
- huntsman
  - huntsman only snipers
- glass_canon
  - knife only spy bots
  - have 1 hp
  - fun challenge with certain weapon combos

Bot Counts
----------
There is a setting to increase the human count.
The human count is based on the current maximum player count of the server.
All slots above the humancount are filled by bots.

|maxplayers   |normal|morehumans|
|-------------|------|----------|
|2-24         |4     |8         |
|25-32        |6     |12        |
|33-64(+above)|12    |24        |

This means on a default local server with 24 slots there will be 20 bots, 
on a server with 32 players there will be 26 bots and on a 64 player server
there would be 52 bots. In reality, there are only 50 bots on a 64 player server
as the hud groups team in blocks of 5 so there would be empty space which looked
bad. 

I would not recommend a player count bigger than 64 as the built in edict
cleaner already struggles with 64 players on some maps.

Known Issues
------------
- Somewhat frequent crashes on maps with a high base edict count, especially
  with 64 maxplayers or more
- The server starts lagging if a lot of bots tries to occupy the same spot
  - Spy bots are especially laggy
- certain gamemodes based on VScript may not function correctly. One of three
  things might happen.
  1. PVE does not start
  2. The gamemode breaks
  3. The game crashes
- some gamemodes (pass time) crash the game
- boss maps do not work
- the navmesh autogeneration causes an infinite loop if a navmesh can not be
  generated / found
  - this mostly happens on workshop maps as the file name breaks something
    (navmesh autogeneration is disabled for workshop maps)
- Spy invis watch viewmodel does not appear if the config to reduce viewmodels
  is enabled

Map compatibility
-----------------
Currently only the official map rotation (excluding event maps) has been tested.
Please check [the compatibility list](./maplist.md) for individual maps.

|GAMEMODE |STATE     |NOTES                                                    |
|---------|----------|---------------------------------------------------------|
|PL       |works     |some maps reach the edict limit, bots behave fine        |
|A/D      |works     |bots mostly behave fine, unusual point layouts may break |
|3/5CP    |works     |automatically converted to A/D like maps, same as A/D    |
|KOTH     |works     |RED is blocked from winning, may not be the most fun mode|
|CTF      |works semi|only certain bot types move without a flag, not that fun |
|TC       |works semi|like 3/5CP, cuts of access to half of hydro              |
|VSH      |broken    |VScript interferences. Bot pathing aimless, RED autowins |
|ZI       |crashes   |VScript interferences. Regular crashes on zombification  |
|PD/RD    |broken    |Bot pathing aimless                                      |
|MVM      |crashes   |Bots do not stop spawning resulting in a crash           |
|PLR      |broken    |Bot pathing aimless                                      |
|ARENA    |not tested|Probably just not fun                                    |
|PASSTIME |crashes   |Crashes once the setup time finishes                     |
|MANNPOWER|meh       |like CTF but bots neither use powerups nor the Grappling Hook|

VScript
-------
All vscript maps very probably will not work.
Some maps might work but others might interfere.
Just do not expect them to work and be happy if they do.

Some maps might work but ClearGameEventCallbacks removes all script callbacks,
including the ones used by genericpve.
This might be worked on if more maps use vscript in the future but ZI and VSH
both break the bots pathing aswell so it is not worth to fix. 

Recommended server.cfg
----------------------
```
sv_vote_issue_kick_allowed 1
sv_vote_issue_changelevel_allowed 1
sv_vote_issue_nextlevel_allowed 0
sv_vote_issue_scramble_teams_allowed 0
sv_vote_issue_restart_game_allowed 1

sv_vote_issue_extendlevel_allowed 1
sv_vote_issue_autobalance_allowed 1
sv_vote_issue_classlimits_allowed 1

mp_maxrounds 1

sv_alltalk 1
sv_allow_point_servercommand always
```

Changed convars in server.cfg:
- kick should just be on by default
- changelevel prevents getting stuck on a broken map
- nextlevel is useless as the rounds take forever
- scrable teams can break the bots
- restart game is useful for testing or if players are spawncamped
- extendlevel/autobalance/classlimits are reset by the script but are options
  to communicate with the script via voting. These are mapped to 3 presets by
  default.
- maxrounds is just nice because otherwise the map would never change without a
  changelevel vote being called.
- alltalk is fun if you want to swap to the bot side and hear people be confused
- sv_allow_point_servercommand is required for reliable automatic navmesh
  generation. Otherwise the plugin may wait for an operation which never 
  started.
  This is not required on listen servers (a local game).
