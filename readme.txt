Strife Coop Project (StrifeCoop) v0.9 beta (hotfix version)

Developed by Nash Muhandes

Features

- Supports up to 4 players.
- Fixed player starts. All maps now have properly-functioning player starts.
- All players' stats and the story's quest status are synchronized. One player accepting a quest will update all players' quest logs, turning in a quest will affect all players, etc.
- All players can hear Blackbird's comm unit transmissions (and see subtitles printed on screen) simultaneously.
- Enemies will randomly target any player as long as they are within distance and line of sight.

Optional features

Note: Gameplay-altering features are only changeable by the host, while the UI-related ones can be changed by each player individually.

- You must gather your party before venturing forth! All players must group together before being allowed to exit the level.
- Enable or disable movement collision between players.
- Share ammo with your friends! Select the weapon you'd like to drop ammo for, highlight the "drop ammo" icon in your inventory bar and press the Drop Item key. This will drop ammunition in amounts of 50, 25, 10, 5 and 1, depending on how many you have left.
- Visible chat bubbles above an NPC's head when they are talking to a player.
- Player locators visible on your viewport.

Beta features

WARNING: May be unbalanced. Needs more fine tuning.

- Enemy health scaling. Enemies' max health increases by 50% for every player online.
- Increased ammo yields when picking up dropped ammo. Ammo amount increases 50% for every player online.
- Support for late player joining. If you start a coop game with 2 players and save the session, a 3rd (or 4th) player can join in at a later date and the newly-joining players' stats and quests should all sync correctly. I am not sure how reliable GZDoom's netcode is with regards to this use case, so do this at your own risk!

Issues

- Overall gameplay balance (with regards to ammo, monster health, etc) is still shaky. This will require a looooot of balancing and fine tuning. Remember, the original game was never made with more than 1 player in mind.
- It is possible to sequence break certain events (even more than in single player), due to the simple nature of players being able to be on any part of the map at any given time, therefore possibly triggering certain events out of order. I have deliberately not addressed any of these for now. Play cooperatively.
- I have done nothing with regards to prevent you from bricking the quest. The same things that will result in quest dead ends in single player still applies here.
- Raising the alarms in town is janky - eventually, there will be no more Acolytes teleporting in, if you've killed all of them. If you happen to die and respawn, the Acolytes may ignore you, until you alert them again.

Compatibility

- GZDOOM ONLY! No Zandronum support, not now or probably ever.
- At the time of this writing, GZDoom devbuild g4.6pre-133-g996b4f9f5 (or later) is REQUIRED. I have made several engine-side fixes that StrifeCoop relies on to function properly.
- Strife Coop Project is compatible with the commercial IWAD only.
- Stfife: Veteran Edition is currently unsupported. I may consider it in a future update.
- StrifeCoop is NOT COMPATIBLE with any mods that edit the built-in Strife helper library (STRFHELP). I had to edit and recompile it for some of the fixes StrifeCoop implements.
- StrifeCoop is definitely NOT compatible with gameplay mods that do not take multiplayer into consideration, or have not specifically implemented network-friendly practices in their implementation.
- StrifeCoop is compatible with language packs, except for the ones where the timings of the slideshows has been altered. In such cases, StrifeCoop MUST be loaded AFTER the language packs (see the "Important" section below).
- StrifeCoop, as its name implies, is obviously meant to be played in cooperative mode only. I have made no changes to deathmatch mode and therefore it's unsupported.

IMPORTANT

StrifeCoop must be loaded absolutely last in your load order. Do not let other mods overwrite anything from StrifeCoop. And ESPECIALLY if you are using language packs which alter the slideshow timings. This is non-negotiable!
