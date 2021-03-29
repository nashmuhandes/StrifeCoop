Strife Coop Project (StrifeCoop) v1.0

Developed by Nash Muhandes

Features

- IWADs supported: Sigil: Quest for the Sigil (1.2-1.31) and Strife: Veteran Edition.
- Supports up to 4 players.
- Fixed player starts. All maps now have properly-functioning player starts.
- All players' stats and the story's quest status are synchronized. One player accepting a quest will update all players' quest logs, turning in a quest will affect all players, etc.
- All players can hear Blackbird's comm unit transmissions (and see subtitles printed on screen) simultaneously.
- SVE support includes the super secret level, the talismans and the reward for collecting all 3 talismans.
- Enemies will randomly target any player as long as they are within distance and line of sight.
- Supports latent player joining (for example, starting a 2-player game, saving, quitting and then loading the saved game with a newly-joining 3rd player).

Optional core features

- You must gather your party before venturing forth! All players must group together before being allowed to exit the level.
- Visible chat bubbles above an NPC's head when they are talking to a player.
- Visual player disguise when picking up the Officer's uniform.
- Bad ending (triggerable when all players are killed by The Entity).

Optional game balance features

- Enemy health scaling. Enemies' max health increases by 25% for every online player.
- Extra ammo drops. Spawns an extra ammo pickup for every online player.
- Enemies drop gold coins when killed. With health scaling enabled, ammo tends to run out faster. The extra coins would help players purchase more ammo.
- Uber Entity!

Issues

- Overall gameplay balance with regards to enemy health and ammo is still imperfect.
- It is possible to sequence break certain events (even more than in single player), due to the simple nature of players being able to be on any part of the map at any given time, therefore possibly triggering certain events out of order. I have deliberately not addressed any of these for now. Play cooperatively.
- I have done nothing with regards to prevent you from bricking the quest. The same things that will result in quest dead ends in single player still applies here.
- During the early phases of the game, if the alarms are raised in town, it is possible to eventually kill all the guards, therefore no more of them will teleport into town when the alarms are raised again at a later time.
- After being killed by any enemy and respawning yourself, they will "forget" you and just stand idle until they are attacked again.

Compatibility

- GZDoom only! No Zandronum support, not now or probably ever.
- At the time of this writing, GZDoom devbuild g4.6pre-189-g03473abea (or later) is REQUIRED. I have made several engine-side fixes that StrifeCoop relies on to function properly.
- Strife Coop Project is compatible with the commercial IWAD and the Veteran Edition IWAD only.
- Demo/teaser IWADs are not supported.
- StrifeCoop is NOT COMPATIBLE with any mods that edit the built-in Strife helper library (STRFHELP). I had to edit and recompile it for some of the fixes StrifeCoop implements.
- StrifeCoop is definitely NOT compatible with gameplay mods that do not take multiplayer into consideration, or have not specifically implemented network-friendly practices in their implementation.
- StrifeCoop is compatible with language packs, except for the ones where the timings of the slideshows has been altered. In such cases, StrifeCoop MUST be loaded AFTER the language packs (see the "Important" section below).
- StrifeCoop, as its name implies, is obviously meant to be played in cooperative mode only. I have made no changes to deathmatch mode and therefore it's unsupported.

IMPORTANT

StrifeCoop must be loaded absolutely last in your load order. Do not let other mods overwrite anything from StrifeCoop. And ESPECIALLY if you are using language packs which alter the slideshow timings. This is non-negotiable!

DESYNCS? Be sure to check the following:

- Make sure every player has the EXACT copy of the IWAD. The game WILL desync if everyones' IWADs don't match!
- When playing with other mods, be absolutely certain that every player has the exact copies of the mods loaded in the exact order.
- When loading saved games, be absolutely sure that everyone has the correct save file loaded.

Stability

StrifeCoop has been thoroughly playtested live on stream and it is confirmed to be absolutely stable and can be played from start to finish through all endings. See the following links for proof:
https://www.youtube.com/watch?v=exQP3GahsBk (Part 1 - bad ending)
https://www.youtube.com/watch?v=ca-kGjwS_Vc (Part 2 - good ending)

Follow my works

https://twitter.com/NashMuhandes
https://twitch.tv/NashMuhandes
https://discord.gg/AsrnE5k

Thanks for playing!
