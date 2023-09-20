local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:InitializeData()
    addonTable.data = {}

    -- The Necrotic Wake
    addonTable.data[2387] = {
        name = "Blightbone",
        { "Dodge the frontal cone if not targeted ("..S(320596)..")." },
        { t="heal", n=true, "Focus kill and CC the untankable worms spawned by the cone." },
        { "Stay out of big green pools ("..S(320637)..")." },
    }
    addonTable.data[2388] = {
        name = "Amarth, The Harvester",
        { t="int", "Interrupt "..S(320170).." when possible." },
        { "Dodge the randomly facing frontal breath ("..S(333493)..")." },
        { t="purge", "Remove the enrage if possible ("..S(320012)..")." },
        { t="heal", n=true, "Focus kill the adds that are occasionally summoned ("..S(321226)..")." },
        { "The boss will detonate the adds, doing party damage for each add that is alive ("..S(321247)..")." },
    }
    addonTable.data[2389] = {
        name = "Surgeon Stitchflesh",
        { "The boss is immune on his platform ("..S(327100).."), and must be pulled into the arena by the add's "..S(322681)..", Scorpion-style." },
        { "Dodge green swirls ("..S(327664).."), and move the add in an arc around the platform." },
        { t="heal", n=true, "After hooking, focus kill the boss until he jumps back after 30 seconds. Repeat until the boss dies." },
    }
    addonTable.data[2390] = {
        name = "Nalthor the Rimebinder",
        { "Stay spread, and move out of the circle around the random player that gets rooted. Dispel once everyone is out of the circle ("..S(320788)..")." },
        { "Dodge blue swirls that appear under all players' feet ("..S(320784)..")." },
        { t="dps", "If you get sent down to a lower platform, run to the end and kill the add to fly back up to the boss." },
    }

    -- Plaguefall
    addonTable.data[2382] = {
        name = "Globgrog",
        { t="tank", "Keep the boss on one side of the platform to make spawns easier ("..S(324459)..")." },
        { "Stay very close to make the random frontal cone easier to dodge ("..S(324667)..")." },
        { "Position yourself so that the knockback from "..S(324527).." doesn't send you off the platform." },
        { t="purge", "Remove diseases from allies ("..S(324652)..")." },
        { t="heal", n=true, "Focus kill and CC the adds to prevent them from healing the boss." },
    }
    addonTable.data[2384] = {
        name = "Doctor Ickus",
        { "Dispel "..S(329110).." on the tank and kill the small add that spawns." },
        { "Dodge the AoE leap on a random player ("..S(329217)..")." },
        { t="heal", n=true, "Quickly follow the boss when he jumps away, and focus kill the |cffff4040Plague Bomb|r before it explodes ("..S(321406)..")." },
        { "Kill the red slime that the boss occasionally spawns and interrupt its "..S(321999).." cast." },
    }
    addonTable.data[2385] = {
        name = "Domina Venomblade",
        { t="purge", "Remove the poison from the tank ("..S(325552)..")." },
        { "If you get a purple circle around you, quickly move away ("..S(325245)..")." },
        { "When the boss spawns webs around the room ("..S(332313).."), each player should move to the center of a web to reveal a stealthed add." },
    }
    addonTable.data[2386] = {
        name = "Margrave Stradama",
        { "Stay out of the green pool in the middle." },
        { t="heal", n=true, "Focus kill the add spawned by the boss. It casts a green circle that needs to be soaked by the tank ("..S(322236)..")." },
        { "Dodge the tentacles that appear in waves ("..S(322473)..")." },
    }

    -- Mists of Tirna Scithe
    addonTable.data[2397] = {
        name = "Ingra Maloch",
        { t="heal", n=true, "Prioritize killing |cffff4040Droman Oulfarran|r over |cffff4040Ingra Maloch|r." },
        { "Dodge |cffff4040Droman Oulfarran|r's frontal cast ("..S(323137)..")." },
        { t="int", "Interrupt |cffff4040Ingra Maloch|r's "..S(323057).." when possible." },
    }
    addonTable.data[2392] = {
        name = "Mistcaller",
        { "Dodge the frontal cast ("..S(321834)..")." },
        { t="tank", "The tank has to interrupt "..S(321828).."." },
        { "Avoid the blue fox add, and slow/stun it from range ("..S(321873)..")." },
        { "Kill the clone with the different symbol when the boss uses "..S(321471).."." },
    }
    addonTable.data[2393] = {
        name = "Tred'ova",
        { "Dodge green and blue swirls." },
        { "Outrange your partner to break the purple beam ("..S(322648)..")." },
        { t="heal", n=true, "The tank needs to pick up the adds while everyone focuses them down ("..S(322563)..")." },
        { t="int", "Only interrupt "..S(322450).." if the party is low on health." },
    }

    -- Halls of Atonement
    addonTable.data[2401] = {
        name = "Halkias, the Sin-Stained Goliath",
        { t="tank", n=true, "Do not stand on the tank ("..S(322936)..")." },
        { "Quickly dodge red swirls ("..S(322943)..")." },
        { t="purge", "Immediately dispel the fear that goes on a random DPS ("..S(322977)..")." },
        { "Dodge the rotating cross-pattern laser ("..S(322913).."), which can change direction randomly." },
    }
    addonTable.data[2380] = {
        name = "Echelon",
        { "Quickly dodge red swirls ("..S(319702)..")." },
        { t="heal", n=true, "Gather the adds and kill them near each other ("..S(319733)..")." },
        { "The player that gets a brown circle around them ("..S(319603)..") should move to the dead adds so that the boss destroys them." },
    }
    addonTable.data[2403] = {
        name = "High Adjudicator Aleez",
        { t="int", "Prioritize interrupting "..S(323552).." over "..S(323538).."." },
        { "If fixated by the add, bring it to a red vessel to despawn it ("..S(323848).."). If not fixated, stay away ("..S(323852)..")." },
        { "Dodge big orange swirls ("..S(327475)..")." },
    }
    addonTable.data[2381] = {
        name = "Lord Chamberlain",
        { "Dodge the statue thrown around by the boss, indicated by a red arrow ("..S(323143)..")." },
        { "Dodge the randomly facing frontal cone ("..S(323236)..")." },
        { t="heal", "Keep the tank alive through the 18 second ramping DoT ("..S(323437)..")." },
        { "Dodge all four statues after the boss teleports to the middle of the room." },
        { t="tank", "Stand between the red glowing statue and the boss when he is casting "..S(323393).."." },
    }

    -- De Other Side
    addonTable.data[2395] = {
        name = "Hakkar, the Soulflayer",
        { "If you get a red circle around you, move away ("..S(322746)..")." },
        { t="heal", n=true, "Focus kill the untankable |cffff4040Son of Hakkar|r add that occasionally spawns. It leaves a damaging red pool when it dies." },
        { t="heal", n=true, "At full energy, Hakkar will gain a shield and start channeling "..S(323064)..". DPS through the shield, then interrupt the channel." },
    }
    addonTable.data[2394] = {
        name = "The Manastorms",
        { "Start out attacking |cffff4040Millhouse|r. |cffff4040Millificent|r jumps up to her platform and becomes unattackable." },
        { t="int", "Interrupt "..S(116).." and intercept the purple beam from each crystal that spawns. The beam does stacking damage, but gives a stacking damage buff ("..S(320786)..")." },
        { "The bosses will occasionally swap places with each other." },
        { "|cffff4040Millificent|r will release walking bombs that need to be disarmed ("..S(320811)..")." },
    }
    addonTable.data[2400] = {
        name = "Dealer Xy'exa",
        { "Avoid stepping on swirly white traps ("..S(319619)..")." },
        { "Quickly dodge white lazers that come from random directions ("..S(320326)..")." },
        { "Occasionally, a random player will get a bomb timer ("..S(320232).."). That player needs to step on a trap toward the end of the timer. If done correctly, only they take damage." },
        { "The boss also occasionally casts the same bomb on itself. Every player will need to step on a trap toward the end of the cast." },
    }
    addonTable.data[2396] = {
        name = "Mueh'zala",
        { "Before starting, assign two DPS to go front-left and the rest to go front-right for later in the fight." },
        { t="tank", "Stay within melee range when not avoiding casts." },
        { t="heal", "The boss will regularly debuff two players ("..S(325725).."). Quickly dispel one of them and let the other expire on its own to stagger party damage." },
        { "Avoid purple circles ("..S(325691)..")." },
        { "When the boss starts casting "..S(325258)..", look at his arms to know if you need to dodge left, right, or backwards. He always does a combination of three attacks." },
        { "When the boss starts casting "..S(326171)..", quickly go to your assigned side and run into the green portal, otherwise INSTANT DEATH. Each side will need to kill an add, then activate the nearby totem. The boss will then pull everyone to him and take damage." },
    }

    -- Sanguine Depths
    addonTable.data[2360] = {
        name = "Kryxis the Voracious",
        { t="tank", "Do not face the boss toward the edge, because it frequently casts a knockback ("..S(319650)..")." },
        { t="int", "Interrupt "..S(319654).." as quickly as possible." },
        { "When the boss starts casting "..S(319713)..", move between the targeted player and the boss to split the damage." },
        { "When the boss casts "..S(319685).." at full energy, everyone should be on the same side of the boss. The smash will knock everyone back and spawn an orb from each player. Soak the orbs before they get to the boss." },
    }
    addonTable.data[2361] = {
        name = "Executor Tarvold",
        { "Stay spread, and move away if you get a red circle around you ("..S(322554)..")." },
        { t="heal", n=true, "Focus kill the add that regularly spawns, and move out of the red pool it leaves when it dies." },
    }
    addonTable.data[2362] = {
        name = "Grand Proctor Beryllia",
        { "When the boss starts casting "..S(325360)..", move to the yellow circle." },
        { "Dodge yellow swirls ("..S(326039)..")." },
    }
    addonTable.data[2363] = {
        name = "General Kaal",
        { "Before starting the fight, make sure someone has picked up the Naaru and has the extra action ability ("..S(325742)..")." },
        { "Stay spread, because the boss will mark players and charge to them ("..S(322796)..")." },
        { "Dodge the swirly red blasts that frequently cover a section of the platform ("..S(323810)..")." },
        { "When the boss teleports away and starts casting "..S(322895)..", the player with the extra action ability should use it, and everyone should move into the yellow circle." },
    }

    -- Spires of Ascension
    addonTable.data[2357] = {
        name = "Kin-Tara",
        { t="heal", n=true, "The bosses share health, so stack them together when possible." },
        { "Dodge the pet's waves of dark bolts ("..S(324369)..")." },
        { t="tank", n=true, "Do not stand in front of |cffff4040Kin-Tara|r, because she casts a cleave on the tank ("..S(320866)..")." },
        { t="int", "Interrupt her "..S(327481).." cast as often as possible." },
        { "When she starts flying around, quickly move out of her "..S(321009).." if you are targeted by it." },
    }
    addonTable.data[2356] = {
        name = "Ventunax",
        { "Move away from the dark swirly clouds dropped by the boss, and dodge the dark bolts that come out of them ("..S(323927)..")." },
        { "Dodge the frontal attack ("..S(324205)..")." },
        { "When the boss channels "..S(325424).." at zero Energy, there will be more dark bolts from the clouds." },
    }
    addonTable.data[2358] = {
        name = "Oryphrion",
        { "Stay spread to avoid multiple people getting hit by "..S(323195).."." },
        { t="purge", "Dispel the tank as soon as the boss hits them with "..S(324608).."." },
        { "If you get a blue arrow on your head, move away and stack with other players ("..S(324444).."). Then get out of the blue circle when it expires ("..S(323792)..")." },
        { "Keep the boss out of the blue pools on the ground ("..S(324392)..")." },
        { "When the boss channels "..S(324046)..", the blue pools become blue orbs. Soak the orbs to prevent them from getting to the boss. The boss takes double damage during this." },
    }
    addonTable.data[2359] = {
        name = "Devos, Paragon of Doubt",
        { "Dodge the boss's charge in a random direction ("..S(323943)..")." },
        { "Move away from the dark swirly orb spawned by the boss ("..S(334625)..")." },
        { t="purge", "Dispel the debuff that gets put on a random player ("..S(322817).."), and stay out of the dark pool it leaves." },
        { "When the boss jumps to the middle of the room, she activates the Anima Conduit and flies away, and wind starts blowing. Collect the blue orbs and bring them to the Anima Conduit while dodging the dark pools. One player needs to interact with the spear in the Anima Conduit and throw it at Devos flying around, bringing her down to continue fighting." },
    }

    -- Theater of Pain
    addonTable.data[2391] = {
        name = "An Affront of Challengers",
        { "You fight three bosses at the same time. Kill |cffff4040Dessia|r, then |cffff4040Sathel|r, then |cffff4040Paceran|r." },
        { t="int", "Interrupt |cffff4040Sathel|r's "..S(333292).." cast, because it does a ton of damage. Also interrupt |cffff4040Paceran|r's "..S(320120).." cast, because he teleports away." },
        { t="purge", "Dispel |cffff4040Sathel|r's "..S(320272).." buff, because it heals." },
        { "|cffff4040Dessia|r enrages at low health, gaining an absorb shield and fixating random players. Remove the enrage if capable." },
        { "|cffff4040Sathel|r gains an absorb shield at low health that also makes him immune to interrupts ("..S(320293).."). Focus him down in order to interrupt him again." },
    }
    addonTable.data[2366] = {
        name = "Xav the Unfallen",
        { "Quickly kill the banner spawned by the boss ("..S(331606).."). It slows everyone." },
        { "Dodge the telegraphed slams ("..S(317231).." and "..S(320729)..")." },
        { t="dps", "Occasionally the boss will send two DPS to the pit below to duel each other ("..S(320102).."). One player needs to win within 45 seconds, or they both lose. The winner gets a damage increase, and the loser gets a damage decrease." },
    }
    addonTable.data[2365] = {
        name = "Gorechop",
        { "Dodge the hooks that sweep across the room ("..S(322795).."). You can see safe openings when the hooks appear on either side of the room." },
        { t="heal", n=true, "A couple adds spawn every time the hooks come through. Stay spread while the adds are alive and focus kill them quickly." },
    }
    addonTable.data[2364] = {
        name = "Kul'tharok",
        { t="tank", "Always stay in melee range of the boss, or it casts a really bad stacking DoT ("..S(319669)..")." },
        { "Stay spread, because the boss frequently puts a DoT on random players that pulses AoE damage ("..S(319626).."). Dispell this DoT as often as possible." },
        { "Dodge green swirls, and do not step into the green circle left by the swirl ("..S(319589)..")." },
        { "If the boss starts channeling "..S(319521).." on you, move behind a green circle so it's between you and the boss. At the end of the channel, your soul escapes you body and moves toward the boss, getting stuck in the circle. Collect your soul to regain your abilities, which also gives a big damage buff." },
    }
    addonTable.data[2404] = {
        name = "Mordretha, the Endless Empress",
        { "Dodge the frontal beam that faces and rotates randomly ("..S(323681)..")." },
        { "When everyone gets a green circle around them, spread out so that circles do not overlap ("..S(324449)..")." },
        { "Occasionally the boss will spawn a green swirly rift toward an edge of the area ("..S(323825).."). Move away from the rift as it pulls you toward it ("..S(323831)..")." },
    }

    -- Castle Nathria
    addonTable.data[2398] = {
        name = "Shriekwing",
        { "MAIN PHASE" },
        { t="tank", "Taunt swap after every "..S(328857).."." },
        { "Run out of the raid if you get a red arrow on your head ("..S(342074)..")." },
        { "Dodge the randomly facing frontal in melee ("..S(343005)..")." },
        { "Line-of-sight the "..S(345936).." casts using the pillars." },
        { "INTERMISSION" },
        { "Stay away from the boss as she walks around ("..S(345425)..")." },
        { "Dodge the circles that bounce around the room ("..S(329362)..")." },
        { "Line-of-sight the "..S(345936).." casts using the pillars." },
    }
    addonTable.data[2418] = {
        name = "Huntsman Altimor",
        { "Fan out around Altimor to reduce damage taken from "..S(334404).."." },
        { "Avoid other players' red arrows ("..S(335114)..")." },
        { "MARGORE" },
        { t="tank", "Taunt swap on |cffff4040Margore|r at as low bleed stacks as possible ("..S(334971)..")." },
        { "Help soak the red circle that goes on a random player ("..S(334939)..")." },
        { "BARGAST" },
        { "Move Bargast away from |cffff4040Altimor|r for the "..S(334797).." cast, and heal the soul to full before it gets to |cffff4040Altimor|r." },
        { "Crowd control the |cffff4040Shades of Bargast|r then kill them quickly." },
        { "HECUTIS" },
        { "When the raid is healthy, keep |cffff4040Hecutis|r moving near |cffff4040Altimor|r to drop his stacks of "..S(334860).."." },
        { "If you get a brown circle around you, run out of the raid ("..S(334852)..")." },
    }
    addonTable.data[2383] = {
        name = "Hungering Destroyer",
        { "Before pulling, assign five players to each of the two leech debuffs that will go out on random players ("..S(329298).."). They will stack with each debuffed player to keep them alive." },
        { t="tank", "The tanks should taunt swap after every "..S(329774).." cast." },
        { "Players marked with a blue arrow should move to either side of the boss and fan out from each other ("..S(334266)..")." },
        { "Spread out when the entire raid gets a circle around them ("..S(329742)..")." },
        { "When the boss starts pulling everyone in, run far away until the channel is over ("..S(334522)..")." },
    }
    addonTable.data[2405] = {
        name = "Artificer Xy'Mox",
        { "Always place one portal in the middle of the room and one near a wall ("..S(328437)..")." },
        { t="tank", "The tanks need to run their debuff away from the raid before it explodes ("..S(325361)..")." },
        { "Dodge the beams on the ground." },
        { "PHASE ONE ("..S(327887).."): Fixated players use the portals to avoid the spirits until they despawn." },
        { "PHASE TWO ("..S(329770).."): Assigned players move the seeds away from one side of the room using the portals." },
        { "PHASE THREE ("..S(328880).."): Use movement abilities and the portals to stay out of the weapon explosion." },
    }
    addonTable.data[2402] = {
        name = "Sun King's Salvation",
        { "ADD PHASE" },
        { t="heal", n=true, "Kill priority is Infusers > Occultists > Vanquishers > Assassins > Fiends." },
        { "Stay spread when Assassins or Fiends are active." },
        { t="int", "Make sure to interrupt the Vile Occultists' "..S(333002).." cast." },
        { "Slow down the Infusers with crowd control." },
        { "Heal Kael'thas by healing the Essence Fonts to full, channeling on the Soul Pedestals, and healing him directly." },
        { "Get Kael'thas to 45% and 90% health between add spawns." },
        { "SHADE PHASE" },
        { t="tank", "Keep the Shade faced away from the raid for "..S(326455)..", and taunt swap at as few stacks as possible." },
        { "Stack the phoenixes, slow them, and kill them from range." },
        { "Dodge the randomly facing frontal from the Shade ("..S(328573)..")." },
        { "Help soak the red circle on a random player ("..S(325877)..")." },
    }
    addonTable.data[2406] = {
        name = "Lady Inerva Darkvein",
        { "Before pulling, assign half of your DPS to each marked small add for interrupts." },
        { t="tank", "Keep the boss toward the middle of the room and taunt swap at two stacks of the "..S(325382).." debuff." },
        { t="tank", n=true, "Stay spread and soak red circles." },
        { "Players linked with beams need to despawn the red orbs by linking to all three orbs." },
        { "When the adds spawn, the assigned DPS need to chain interrupt the small ones, and the big one needs to be tanked." },
        { "Drain each filled container when the boss switches focus to the next container." },
    }
    addonTable.data[2412] = {
        name = "The Council of Blood",
        { "Kill |cffff4040Baroness Frieda|r, then |cffff4040Castellan Niklaus|r, then |cffff4040Lord Stavros|r." },
        { t="tank", "Taunt swap on Stavros and Niklaus at few stacks, while also tanking Stavros slightly away from the raid." },
        { t="int", "Interrupt every cast of Frieda's "..S(337110).."." },
        { t="heal", n=true, "Quickly kill the add that shields the bosses." },
        { "When you get the "..S(331634).." debuff, stack with your partner and keep moving." },
        { "At 50% health of each boss, get to your indicated dancing spot and copy the movement of the NPC servants ("..S(328497)..")." },
        { "AFTER FRIEDA DIES" },
        { t="heal", n=true, "Bring the servant adds toward the bosses and cleave them down." },
        { "Dodge the dancers that slide around the room in a square pattern ("..S(327619)..")." },
        { "AFTER NIKLAUS DIES" },
        { "Dodge Stavros's charge by not standing behind him ("..S(327503)..")." },
        { "Avoid explosions from the dancers ("..S(346303)..")." },
    }
    addonTable.data[2399] = {
        name = "Sludgefist",
        { t="tank", "Stay tightly stacked for "..S(335297).." and keep the boss away from the pillars." },
        { "If you get chained to someone, stay very close to them ("..S(335300)..")." },
        { t="tank", "When a tank gets marked for the charge, they need to make sure it hits a pillar ("..S(331209)..")." },
        { t="dps", "The boss takes double damage while stunned after charging." },
        { "Move out of the "..S(332318).." around the boss and dodge brown swirls on the ground ("..S(332572)..")." },
    }
    addonTable.data[2417] = {
        name = "Stone Legion Generals",
        { "The two players that get marked with red arrows need to move off to one side and fan out, while everyone else dodges the blade ("..S(333387)..")." },
        { "The player that gets a brown circle around them needs to move slightly away, while players with a bleed move into the circle ("..S(339690).."). Then everyone else needs to move into the yellow circle that follows to soak the meteor ("..S(339728)..")." },
        { t="heal", n=true, "The tanks need to get aggro on the |cffff4040Goliath|r add that occasionally spawns, and everyone should focus it down." },
        { "During the intermissions, gather red orbs and bring them to Prince Renethal." },
        { "PHASE ONE (|cffff4040General Kaal|r)" },
        { t="tank", "Taunt swap for every "..S(339690).." cast and use it to remove your bleed debuff ("..S(343881)..")." },
        { t="heal", "Dispel players that get "..S(334765).." and focus heal them." },
        { "PHASE TWO (|cffff4040General Grashaal|r)" },
        { t="tank", "Taunt swap at low stacks of "..S(342425).."." },
        { "The player that gets targeted by "..S(344500).." needs to take it out of the raid, and each zone of rocks needs to be soaked by a player every time this ability is cast." },
        { "Dodge brown swirls ("..S(334500)..")." },
        { "PHASE THREE (both)" },
        { "All of the abilities from phase one and two need to be handled. Try to kill the bosses at the same time." },
    }
    addonTable.data[2407] = {
        name = "Sire Denathrius",
        { "PHASE ONE" },
        { "Split your raid in half and alternate which half gets hit by each frontal ("..S(326707)..")." },
        { t="heal", n=true, "Quickly nuke the adds from each frontal." },
        { "Get Denathrius to 70% health after the 6th frontal, but before the last red cone." },
        { "INTERMISSION: Run toward the boss to make it into his circle." },
        { "PHASE TWO" },
        { t="heal", n=true, "Kill the |cffff4040Cabalist|r adds." },
        { t="tank", "Taunt swap on the boss and sword after each cast of "..S(329181)..", and try to aim the boss at the adds." },
        { "When Denathrius pulls everyone to him, run away or into a nearby mirror ("..S(330627)..")." },
        { "Dodge the swords by staying out of their lines on the ground." },
        { "PHASE THREE" },
        { t="tank", "Keep the boss toward the middle of the room and taunt swap at low stacks of "..S(332585).."." },
        { "Stay close to the boss to avoid getting knocked off the platform by "..S(332619).."." },
        { "When Denathrius pulls everyone to him, run away ("..S(330627)..")." },
        { "Stay spread to avoid players marked with the red circles ("..S(332797)..")." },
    }


end