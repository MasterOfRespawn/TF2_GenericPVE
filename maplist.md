MAPLIST
=======
This list is not the most up to date.
Use this as a general rule of thumb to guess whether a map might work or not.

- [ ] testing in progress
- [X] testing done (probably don't try)

Summer Update 2025
------------------
This has not yet been tested. All maps load however and PVE starts successfully.
- [ ] pl_aquarius
- [X] koth_blowout
    - visual issues (areaportals)
- [ ] koth_boardwalk
- [ ] cp_cargo
- [ ] pl_citadel
- [ ] cp_conifer
- [ ] koth_demolition
- [ ] cp_fulgur
    - last point has spawn nearby -> impossible (?) to cap with 50 heavies
- [ ] koth_mannhole
- [X] ctf_pressure
    - visual issues (areaportals)

Attack/Defend
-------------
- [ ] cp_altitude
- [ ] cp_brew
- [ ] cp_dustbowl
- [ ] cp_egypt
- [ ] cp_fortezza
- [ ] cp_gorge
- [ ] cp_gravelpit
- [ ] cp_haarp
- [X] ctf_hadal - objective bots break, (maybe passive?)
    - as it is a map containing an intelligence, only passive bots work
    - engineers only protect the last point, first half not very exciting
- [ ] cp_hardwood
- [ ] cp_junction
- [ ] cp_mercenarypark
- [ ] cp_mossrock
- [ ] cp_mountainlab
- [ ] cp_overgrown
- [X] cp_snowplow - broken
    - bots don't navigate
- [X] cp_steel - cheesable
    - bots don't care about point E until all other points are capped
- [X] cp_sulfur - cheesable
    - bots don't care about the center point until all other points are capped

Capture the Flag
-------------
Only passive bots work, testing is required which passive class is best for this
- [ ] ctf_2fort
- [ ] ctf_2fort_invasion
- [ ] ctf_applejack
- [ ] ctf_doublecross
- [ ] ctf_frosty
- [ ] ctf_landfall
- [ ] ctf_pelican_peak
- [ ] ctf_penguin_peak
- [ ] ctf_sawmill
- [ ] ctf_turbine
- [ ] ctf_well

Control Points (symmetrical)
----------------------------
Probably boring as half the points can be captured before the heavies reach them
- [ ] cp_5gorge
- [ ] cp_badlands
- [ ] cp_canaveral
- [ ] cp_coldfront
- [ ] cp_fastlane
- [ ] cp_foundry
- [ ] cp_freight
- [ ] cp_granary
- [ ] cp_gullywash
- [ ] cp_gravelpit
- [ ] cp_metalworks
- [ ] cp_powerhouse
- [ ] cp_process
- [ ] cp_reckoner
- [ ] cp_snakewater
- [ ] cp_standin
- [ ] cp_sunshine
- [ ] cp_vanguard
- [ ] cp_well
- [ ] cp_yukon

King of the Hill
----------------
- [ ] koth_badlands
    - bots can cap
- [ ] koth_brazil
    - bots can cap
- [ ] koth_cachoeira
    - bots can cap
- [ ] koth_cascade
    - bots can cap
- [ ] koth_harvest_final
    - bots can cap
- [ ] koth_highpass
    - bots can cap
- [ ] koth_king
    - bots can cap, 
    - fix visual bugs (func_lod)
- [ ] koth_lakeside
    - bots can cap
- [ ] koth_lazarus
    - bots can cap
- [ ] koth_megaton
    - no observed VScript interferences yet
- [ ] koth_nucleus - theoretically works (needs testing)
    - cleanup breaks central point collision (fix integrated)
- [ ] koth_overcast
    - minor visual bugs
- [X] koth_probed
    - pathing work, do not know how to leave the ufo however
- [ ] koth_rotunda
    - prop_dnyamic (moving train) issues (fix integrated)
- [ ] koth_sawmill
    - bots can block the sawblade
- [ ] koth_sharkbay
    - bots often fall in the water
- [ ] koth_snowtower
    - bots can cap
- [ ] koth_suijin
    - areaportals + prop_dnyamic issues (fix integrated)
- [ ] koth_viaduct
    - bots can cap

Payload
-------
- [ ] pl_badwater
- [ ] pl_barnblitz
- [ ] pl_borneo
- [ ] pl_breadspace
- [ ] pl_camber
- [ ] pl_cashworks - not pretty (fixed)
- [ ] pl_embargo - vscript
- [ ] pl_emerge
- [ ] pl_enclosure
- [ ] pl_frontier
- [ ] pl_goldrush
- [ ] pl_hoodoo
- [ ] pl_odyssey - vscript
- [X] pl_patagonia - very big -> high edict count -> high crash rate
    - fixable in agressive mode
    - agressive mode is activated automatically to prevent crashes
      (this causes the map to look bad) (not recommended)
- [ ] pl_phoenix
- [ ] pl_pier
- [ ] pl_rumford
- [ ] pl_snowycoast
- [ ] pl_swiftwater
- [ ] pl_thundermountain
- [ ] pl_upward
- [ ] pl_venice
- [ ] pl_cactuscanyon - not in casual rotation but might be fun? (TESTING REQUIRED)

Payload Race
------------
pathing breaks, not very fun (engineers sometimes work)
- [X] plr_bananabay
- [X] plr_hacksaw
- [X] plr_hightower
- [X] plr_nightfall
- [X] plr_pipeline

Special/Other
-------------
- [X] cp_burghausen - better not
    - not very fun
    - first point is a chokepoint
    - at least heavies are way too many
- [ ] cp_degrootkeep
    - bots get stuck at a window trying to navigate to point A
    - once A and B are captured once, all go to C
    - if C is not captured, they move out to the rest of the map
    - 50/50 fun/unfun
- [X] tc_hydro - meh
    - treated like a 5cp map, loosing is impossible for BLU
    - because points can not be lost, half the map is inaccessible
- [ ] cp_freaky_fair
    - every kill gives more money to spend on upgrades to progress further
    - bots get outdamaged after a while

Special Delivery
----------------
Pathing breaks, not even engis work. Spies at least move
- [X] sd_doomsday - no

Robot Destruction
-----------------
Not in casual rotation, does not crash, objective bots do not work
- [X] rd_asteroid

Player Destruction
------------------
Bots aimless, does not crash, objective bots do not work
- [X] pd_atom_smash
- [X] pd_selbyen
- [X] pd_watergate

Versus Saxton Hale
------------------
Broken in general, do not try. (autodisabled)
- [X] vsh_distillery
- [X] vsh_maul
- [X] vsh_nucleus
- [X] vsh_outburst
- [X] vsh_skirmish
- [X] vsh_tinyrock

Mannpower
---------
- [ ] ctf_foundry
- [ ] ctf_gorge
- [ ] ctf_hellfire
- [ ] ctf_thundermountain

PassTime
--------
Crashes on startup, do not try. (autodisabled)
- [X] pass_brickyard
- [X] pass_district
- [X] pass_timbertown

Zombie Infection
----------------
Crashes on zombification, do not try. (autodisabled)
-> no maps in casual rotation
