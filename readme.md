TF2-GenericPVE
==============

This is a recreation of the one thousand uncles PVE mode in VScript but expanded
to have a slightly bigger feature set (like mvm upgrades).
All players are put on BLU and have to fight against a horde of all identically
equipped bots on RED. The goal of the mode is to simply win like usual.
Most settings are at the start of the file.

Public server
-------------
There is a server running this script at: `152.53.53.243`.
If the server or ip changes, this section will be updated.

Features
--------
- Preset based bot system
- Integrated entity stripper to remove decorational edicts and reduce the 
  likelyhood of crashes
- Chat based command system
  - Permission system to only allow command usage for specified steam IDs
- Does start in local games until initialized
- Automatic navmesh generation if a map is missing a navmesh
- Custom engineer bot behavior for the wrangler and short circuit

Differences to normal gameplay
------------------------------
- The match timer (if present) counts up instead of down.
- On KOTH maps only the red timer counts up so BLU can still win by capping.
- Most non-gameplay entities are automatically removed to reduce stress on the 
  server.
- On CTF maps the BLU intelligence is automatically disabled to prevent the
  bots winning.
- Symmetrical cp maps are automatically 'converted' to attack-defense like maps.
  - This is done by preventing RED from capping points and setting all points to
  be owned by RED on round start.
  - Like on Uncletopia, there is a cooldown for spies once a point is capped 
    before the next point is unlocked.
- Human Engineers are able to build in spawn.
- Depending on the settings bots may respawn immediately.
- The bots may be buffed or have non stock weapons (like in MVM) depending on
  the preset.
- Bot Ragdolls, dropped weapons and all pickups (like ammo boxes, building gibs
  or crit pumpkins) are deleted to free up entity slots.

Differences to one thousand uncles on uncletopia
------------------------------------------------
- While some strippers have been ported over to this script, some have not.
  - The last stage of egypt has no door modifications
  - freaky fair has no specific accuracy logic
  - the capture time on junction is unchanged and bots do not get crits
  - Because of technical limitations the setup time on ctf is implemented via 
    script instead of an extra setup timer
  - The changes performed on enclosure are not implementable via VScript
  - hydro remains mostly unchanged
- Bots respawn the tick after they died instead of after 0.1 seconds (7 ticks)
- The RED koth timer counts up.
- Default bot weapons are removed on spawn instead of in an 1 second interval
- The list of entities removed by the integrated stripper is different to the
  stripper configs on uncletopia.
- The [Uncletopia navmeshes](https://github.com/leighmacdonald/uncletopia/tree/master/roles/srcds/files/navmeshes) are not included
- Bots do not cause chat messages when joining the game or changing their name
- the creation of object gibs and ammo boxes is prevented by modifying files 
  instead of hooking game functions
- (mv1ku) bots keep their weapons after death

Setup
-----
- Download the [latest zip](https://github.com/MasterOfRespawn/TF2_GenericPVE/releases/latest) from the releases
- Go to your tf2 installation
- Extract `mv1ku.zip` in `tf/custom` so the folder structure is 
  `tf/custom/mv1ku/scripts`, etc.
- Start TF2 and load a map
- If running a game locally, send `!1ku` or `!mv1ku` in chat to start
- If on a dedicated server, set `sv_allow_point_servercommand` to `always`. 
  Otherwise some features may not work as intended.

### zip file contents
The zip contains some slightly optimized server files to reduce the likelyhood 
of entity related crashes. These files are server files so they dont affect
joining the client joining other servers in any way.
The python script to generate the zip file contents will be uploaded soon.
|File                              |Purpose                                                                  |
|----------------------------------|-------------------------------------------------------------------------|
|scripts/vscripts/mapspawn.nut     |Main script containing the pve logic                                     |
|scripts/tf_weapon_*.txt           |Modified weapon definitions to remove dropped weapons / ammo boxes       |
|scripts/items/1ku_upgrades_XXX.txt|Version X of the mv1ku upgrade definition file                           |
|models/buildables/*.phy           |Modified engineer object models to remove object gib drops               |
|maps/*.res                        |Server resource file so clients download the required upgrade script     |
|1ku_item_whitelist.txt            |Tournament mode whitelist to prohibit all cosmetics for raised bot counts|

Commands
--------
To start a game of one thousand uncles, send `!1ku` in chat. For one thousand
uncles with mvm upgrades, send `!mv1ku`. 
There are some extra challenges / unused features which can be accesed using
`!1kuchallenge` and `!mv1kuchallenge`.

If hosted on a dedicated server, the script will automatically start mv1ku.

Known Issues
------------
- the blue spawn does not move on converted 5cp maps
- the wrangler displays the bullet reserve of your sentry as secondary ammo
