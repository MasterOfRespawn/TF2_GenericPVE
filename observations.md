PVE Bot Observations
====================
The observations made here have probably already been made but I wanted to write
them down anyway.

categories
----------
All bots fall in one of three general categories: objective, passive and medic.

Objective
---------
Scout, Soldier, Pyro, Demo, Heavy.

These bots require a valid objective to move at all.
A valid objective is Capturable/Defendable Control Points/the Payload cart and 
the intelligence. It needs to be a 'valid' intelligence, SD/RD/PD pickups do not
work. They start to move to attack enemies even if they have no objective.
However, without an objective, even if they attack, they stay as close to spawn
as possible.


Passive
-------
Engineer, Sniper, Spy

These bots have additional behavior as their roles do not revolve around a
direct objective. They focus on their class specific tasks.

### Engineer
Engineers are going to build their buildings around the objective if an one is 
present. If no objective is present, they start building outside of spawn.
(Sometimes even this does not work.)

While their buildings are not fully upgraded and they do not have enough metal,
they seek the closest ammo source, prioritizing dispensers over ammo packs (from
very quick observation) even if the dispenser is empty. Once they have enough
metal, they continue to upgrade their buildings.

Once all buildings are upgraded, they will start to crouch next to them, hitting
them with their wrench indefinitely, prioritizing the sentry.
If both dispenser and sentry are sapped, they will try to remove the sentry 
sapping sapper first, only doing anything about the dispenser if the sentry is 
fine. If their sentry is destroyed, they return to the building phase, unlike
with the dispenser.

While building/upgrading they will attack enemies with their shotgun and (if 
they do not have any more ammo for the shotgun) the pistol. They also use the
wrench at close range (however they hit spies more often accidentally then
intentionally).

### Sniper
Snipers have not been tested much, as it is not fun to play against a full team
of them.
However, they choose vantage points (close to the objective if possible) to aim
at the enemy team. The vantage points often move with the objective.

Sometimes they capture the objective but they do this more on accident.

Seriously though, why would you want to fight a team of snipers?

### Spy
Spies disguise immediately after spawning and do not follow objectives at all.
Instead they try to stay close to the enemy spawn entrances until they see an
enemy. 

Once they see someone, their entire mission changes to trying to backstab
this person. They also try to avoid early contact with their victim, to not 
raise suspicion because of player collision.

As soon as the spy reaches its target, they immediately swing their knife, 
whether the target looks at them or not, which can result in them trying to
facestab or actually succeeding at a backstab.

If they are not disguised and see an enemy, they start to shoot their gun.

If instead an attack hits them or closely misses, they use their invis-watch.
Once invisible, they mostly redisguise and try to find another victim at the
enemy spawn once again.


Medic
-----
Medic bots do not need an objective to move, instead they need a healing target.
As long as they do not have anybody to heal, they will not move out of spawn.
A valid Healing target is a bot of any other class or any human player (even as
medic).
If multiple possible healing targets are present, they will choose based on a
priority score, mostly favoring heavies, demos and soldiers.
They do not move to the objective on their own and do not do anything else
except trying to defend themselves if somebody comes too close to them.


arena(/vsh)/plr/sd/rd(/pd)/pass/zi
----------------------------------
In these modes, there are no valid objectives for the bots which results in all
objective bots not to move at all.

On sd_doomsday specifically, not even passive bots work(only spies somewhat do).
PassTime crashes the game (may be because of the plugin, most probably because
of bot issues).

navmeshes
---------
As is common knowledge, all tfbots require a navmesh to function on any given
map. The thing I personally did not know is some maps having a pre built navmesh
embedded in their bsp (if I understand correctly) or stored in the vpks.

This means not all maps need their navmeshes to be created manually.
