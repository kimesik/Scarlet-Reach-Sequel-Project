/datum/patron/inhumen
	name = null
	associated_faith = /datum/faith/inhumen/standard
	undead_hater = FALSE
	var/crafting_recipes = list(/datum/crafting_recipe/roguetown/structure/zizo_shrine)			//Allows construction of unique bad shrine.
	profane_words = list("cock","dick","fuck","shit","pussy","cuck","cunt","asshole", "pintle")	//Same as master but names of the Ascendants are allowed now.
	confess_lines = list(
		"PSYDON IS THE DEMIURGE!",
		"THE TEN ARE WORTHLESS COWARDS!",
		"THE TEN ARE DECEIVERS!",
	)

/datum/patron/inhumen/on_gain()
	. = ..()
	if(ishuman(usr))
		var/mob/living/carbon/human/H = usr
		if(H.mind)
			H.mind.teach_crafting_recipe(/datum/crafting_recipe/roguetown/structure/zizo_shrine)

/datum/patron/inhumen/zizo
	name = "Zizo"
	domain = "Goddess of Progress, Undeath and Ambition"
	desc = "An elf turned goddess, the first of the Ascendants, who achieved divinity by mastering the arcane. Her followers and enemies alike pin the Celestial Empire's collapse on her, \
	but she has no tears to shed for the past. She seeks to bring upon a better, more progressive future for mortals, whether they want it or not."
	worshippers = "Necromancers, Rogue Artificers, the Undead"
	mob_traits = list(TRAIT_CABAL, TRAIT_ZIZOSIGHT, TRAIT_ZOMBIE_IMMUNE)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison					= CLERIC_ORI,
					/obj/effect/proc_holder/spell/self/zizo_snuff						= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/profane/miracle 	= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/raise_lesser_undead/miracle 	= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/rituos/miracle 				= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/wound_heal					= CLERIC_T3,
	)
	confess_lines = list(
		"PRAISE ZIZO!",
		"LONG LIVE ZIZO!",
		"ZIZO IS QUEEN!",
	)
	miracle_healing_lines = list(
		"Vital energies congeal about %TARGET!"
	)
	storyteller = /datum/storyteller/zizo
	rites = "Rune of ZIZO"

/datum/patron/inhumen/zizo/situational_bonus(mob/living/follower, mob/living/target)
	// set up a ritual pile of bones (or just cast near a stack of bones whatever) around us for massive bonuses
	var/situational_bonus = 0
	for (var/obj/item/natural/bone/O in oview(5, follower))
		situational_bonus += (0.5)
	for (var/obj/item/natural/bundle/bone/S in oview(5, follower))
		situational_bonus += (S.amount * 0.5)
	if (situational_bonus > 0)
		situational_bonus = min(situational_bonus, 5)
	return list((situational_bonus > 0), situational_bonus)

/datum/patron/inhumen/zizo/kazengun
	name = "Zimiko"
	associated_faith = /datum/faith/inhumen/kazengun
	noresearch = TRUE

/datum/patron/inhumen/zizo/gronn
	name = "The Plotting Wolf"
	desc = "The cunning great wolf, the patron of shamans and rulers. She's deemed to be the strongest of all Great Beasts, \
	not because of raw might, but because of her intelligence and drive. Many Gronns believe Zizo to be a human avatar of \
	the Plotting Wolf, born into this world to tear down the falsehoods of the old civilization."
	associated_faith = /datum/faith/inhumen/gronn
	noresearch = TRUE

/datum/patron/inhumen/graggar
	name = "Graggar"
	domain = "God of Violence, Conquest and Domination"
	desc = "A dwarf turned god, the second of Ascendants, who achieved divinity by eating the slain Devil's heart. \
	Graggar is a ruthless deity who exalts strength and dominance, and has little patience for cowards and those who can't back up their privilege with might. \
	His followers do not seek honor or fairness, only victory and the right to rule through force. \
	Graggar demands conquest, subjugation, and the endless struggle for supremacy."
	worshippers = "Warlords, Slavers, the Cruel"
	mob_traits = list(TRAIT_HORDE, TRAIT_ORGAN_EATER)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison					= CLERIC_ORI,
					/obj/effect/proc_holder/spell/self/graggar_bloodrage				= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal					= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/call_to_slaughter 				= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/blood_net 			= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/revel_in_slaughter 			= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal					= CLERIC_T4,
	)
	confess_lines = list(
		"GRAGGAR IS THE BEAST I WORSHIP!",
		"THROUGH VIOLENCE, DIVINITY!",
		"THE GOD OF CONQUEST DEMANDS BLOOD!",
	)
	miracle_healing_lines = list(
		"A riotous roar of energy envelops %TARGET!"
	)
	storyteller = /datum/storyteller/graggar
	rites = "Rune of Violence"

/datum/patron/inhumen/graggar/situational_bonus(mob/living/follower, mob/living/target)
	var/situational_bonus = 0
	// the bloodier the area around our target is, the more we heal
	for (var/obj/effect/decal/cleanable/blood/O in oview(5, follower))
		situational_bonus = min(situational_bonus + 0.1, 5)
	return list((situational_bonus > 0), situational_bonus)

/datum/patron/inhumen/graggar/kazengun
	name = "Gaiyuke"
	desc = "A dwarf turned god, the second of Ascendants, who achieved divinity by eating the slain Devil's heart. \
	Gaiyuke is a ruthless deity who exalts strength and dominance, and has little patience for cowards and those who can't back up their privilege with might. \
	His followers do not seek honor or fairness, only victory and the right to rule through force. \
	Gaiyuke demands conquest, subjugation, and the endless struggle for supremacy."
	associated_faith = /datum/faith/inhumen/kazengun
	noresearch = TRUE
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison					= CLERIC_ORI,
					/obj/effect/proc_holder/spell/self/graggar_bloodrage/kazengun		= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal					= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/call_to_slaughter 				= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/blood_net 			= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/revel_in_slaughter 			= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal					= CLERIC_T4,
	)

/datum/patron/inhumen/graggar/gronn
	name = "The Grinning Moose"
	desc = "The vicious great moose, the patron of warriors and berserkers. His worshippers see him not only as a god, \
	but also as the greatest prey to hunt, convinced that slaying and eating his flesh would make them gods too. \
	Graggar is seen as a human avatar of the Grinning Moose by modern Gronns, and too wish to challenge and defeat him one day."
	associated_faith = /datum/faith/inhumen/gronn
	noresearch = TRUE
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison					= CLERIC_ORI,
					/obj/effect/proc_holder/spell/self/graggar_bloodrage/gronn			= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal					= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/call_to_slaughter 				= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/blood_net 			= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/revel_in_slaughter 			= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal					= CLERIC_T4,
	)

/datum/patron/inhumen/matthios
	name = "Matthios"
	domain = "God of Exchange, Alchemy, Theft and Camaraderie"
	desc = "A human turned god, the third of Ascendants, who achieved divinity by stealing the Panacea from Astrata and giving it to mortals in exchange for worship and godhood. \
	He guides those who live in the dark, away from the flame of civilization; and those who believe in his cause bring the wealth of the undeserving in the light to the deserving in the dark."
	worshippers = "Thieves, Merchants, Downtrodden Commoners"
	mob_traits = list(TRAIT_COMMIE, TRAIT_MATTHIOS_EYES, TRAIT_CULTIC_THIEF)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison					= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/appraise						= CLERIC_ORI,
					/obj/effect/proc_holder/spell/targeted/touch/lesserknock/miracle	= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/transact						= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/equalize						= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/churnwealthy					= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal					= CLERIC_T4,
	)
	confess_lines = list(
		"MATTHIOS STEALS FROM THE WORTHLESS!",
		"MATTHIOS IS JUSTICE!",
		"MATTHIOS IS MY LORD!",
	)
	miracle_healing_lines = list(
		"Aureate embers coruscate around %TARGET!"
	)
	storyteller = /datum/storyteller/matthios
	rites = "Rune of Transaction"

/datum/patron/inhumen/matthios/situational_bonus(mob/living/follower, mob/living/target)
	// other matthiosians benefit from our miracles more
	return list(HAS_TRAIT(target, TRAIT_COMMIE), 2.5)

/datum/patron/inhumen/matthios/kazengun
	name = "Matoko"
	associated_faith = /datum/faith/divine/kazengun
	noresearch = TRUE
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison					= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/appraise						= CLERIC_ORI,
					/obj/effect/proc_holder/spell/targeted/touch/lesserknock/miracle/kazengun = CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/transact						= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/equalize						= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/churnwealthy					= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal					= CLERIC_T4,
	)

/datum/patron/inhumen/matthios/gronn
	name = "The Starving Bear"
	desc = "The greedy Starving Bear, the patron of sea raiders and alchemists. Famine is an unfortunately common tragedy \
	in the Gronnic Highlands, and alchemists and raiders sworn to the Starving Bear do their best to prevent starvation. \
	The Starving Bear's human avatar is thought to be Matthios who promises to make Gronns wealthy at the expense of the old civilization."
	associated_faith = /datum/faith/inhumen/gronn
	noresearch = TRUE

/datum/patron/inhumen/baotha
	name = "Baotha"
	domain = "Goddess of Hedonism, Addiction, Relief and Heartbreak"
	desc = "A tiefling turned goddess, the fourth of Ascendants, who achieved divinity through unimaginable suffering. \
	She seeks to bring comfort to all those who suffer, promising sweet oblivion and pleasant numbness; \
	and she tempts those who have lost much into her fold through offers of relief and pleasure, yet they soon find themselves unable to escape her grasp."
	worshippers = "Addicts, Thrill-seekers, the Suffering Addicts"
	mob_traits = list(TRAIT_DEPRAVED, TRAIT_CRACKHEAD)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison					= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/baothavice					= CLERIC_T0,
					/obj/effect/proc_holder/spell/targeted/touch/loversruin             = CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/baothablessings				= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/griefflower                   = CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/blowingdust		= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/joyride                       = CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/lasthigh                      = CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/painkiller					= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal					= CLERIC_T4,
	)
	confess_lines = list(
		"BAOTHA DEMANDS PLEASURE!",
		"LIVE, LAUGH, LOVE!",
		"BAOTHA IS MY JOY!",
	)
	miracle_healing_lines = list(
		"Lurid whispers entwine about %TARGET!"
	)
	storyteller = /datum/storyteller/baotha
	rites = "Rune of Desire"

/datum/patron/inhumen/baotha/situational_bonus(mob/living/follower, mob/living/target)
	// if we're high on drugs or drunk, our miracles are stronger
	var/situational_bonus = 0
	if (follower.has_status_effect(/datum/status_effect/buff/ozium) || follower.has_status_effect(/datum/status_effect/buff/moondust) || follower.has_status_effect(/datum/status_effect/buff/moondust_purest) || follower.has_status_effect(/datum/status_effect/buff/druqks) || follower.has_status_effect(/datum/status_effect/buff/starsugar))
		situational_bonus += 2.5
	if (follower.has_status_effect(/datum/status_effect/buff/drunk))
		situational_bonus += 1.5
	return list((situational_bonus > 0), situational_bonus)

/datum/patron/inhumen/baotha/kazengun
	name = "Baosumi"
	desc = "A tiefling turned goddess, the fourth of Ascendants, who achieved divinity through unimaginable suffering. \
	She seeks to bring comfort to all those who suffer, promising sweet oblivion and pleasant numbness; \
	and she tempts those who have lost much into her fold through offers of relief and pleasure, yet they soon find themselves unable to escape her grasp."
	associated_faith = /datum/faith/divine/kazengun
	noresearch = TRUE

/datum/patron/inhumen/baotha/gronn
	name = "The Relishing Leopard"
	desc = "The debauched Relishing Leopard, the patron of skalds and thrallmasters. Life in the Gronnic Highlands is harsh, and many find comfort in simple pleasures: \
	from flesh and food to music and drugs. In the resource-scarce land, such pleasures are highly sought-after and the Relishing Leopard is believed to aid those who seek them.\
	Baotha is believed to be the Relishing Leopard's human avatar, who beckons Gronns to the continent with promises of plentiful food and pleasures."
	associated_faith = /datum/faith/inhumen/gronn
	noresearch = TRUE

/////////////////////////////////
// Does God Hear Your Prayer ? //
/////////////////////////////////

// Zizo - When the sun is blotted out, zchurch, bad-cross, or ritual chalk
/datum/patron/inhumen/zizo/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer in the Zzzzzzzurch(!)
	if(istype(get_area(follower), /area/rogue/indoors/shelter/mountains))
		return TRUE
	// Allows prayer near EEEVIL psycross
	for(var/obj/structure/fluff/psycross/zizocross/cross in view(4, get_turf(follower)))
		if(cross.divine == TRUE)
			to_chat(follower, span_danger("That acursed cross interupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer near a grave.
	for(var/obj/structure/closet/dirthole/grave/G in view(4, get_turf(follower)))
		return TRUE
	// Allows prayer during the sun being blotted from the sky.
	if(hasomen(OMEN_SUNSTEAL))
		return TRUE
	// Allows praying atop ritual chalk of the god.
	for(var/obj/structure/ritualcircle/zizo in view(1, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Zizo to hear my prayers I must either be in the church of the abandoned, near an inverted psycross, atop a drawn Zizite symbol, or while the sun is blotted from the sky!"))
	return FALSE


// Graggar - When bleeding, near blood on ground, zchurch, bad-cross, or ritual chalk
/datum/patron/inhumen/graggar/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer in the Zzzzzzzurch(!)
	if(istype(get_area(follower), /area/rogue/indoors/shelter/mountains))
		return TRUE
	// Allows prayer near EEEVIL psycross
	for(var/obj/structure/fluff/psycross/zizocross/cross in view(4, get_turf(follower)))
		if(cross.divine == TRUE)
			to_chat(follower, span_danger("That acursed cross interupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer if actively bleeding.
	if(follower.bleed_rate > 0)
		return TRUE
	// Allows prayer near blood.
	for(var/obj/effect/decal/cleanable/blood in view(3, get_turf(follower)))
		return TRUE
	// Allows praying atop ritual chalk of the god.
	for(var/obj/structure/ritualcircle/graggar in view(1, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Graggar to hear my prayers I must either be in the church of the abandoned, near an inverted psycross, near fresh blood or draw blood of my own!"))
	return FALSE

// Matthios - When near coin of at least 100 mammon, zchurch, bad-cross, or ritual talk
/datum/patron/inhumen/matthios/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer in the Zzzzzzzurch(!)
	if(istype(get_area(follower), /area/rogue/indoors/shelter/mountains))
		return TRUE
	// Allows prayer near EEEVIL psycross
	for(var/obj/structure/fluff/psycross/zizocross/cross in view(4, get_turf(follower)))
		if(cross.divine == TRUE)
			to_chat(follower, span_danger("That acursed cross interupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer if the user has more than 100 mammon on them.
	var/mammon_count = get_mammons_in_atom(follower)
	if(mammon_count >= 100)
		return TRUE
	// Spend 5/10 mammon to pray. Megachurch pastors be like.....
	var/obj/item/held_item = follower.get_active_held_item()
	var/helditemvalue = held_item.get_real_price()
	if(istype(held_item, /obj/item/roguecoin) && helditemvalue >= 5)
		qdel(held_item)
		return TRUE
	// Allows praying atop ritual chalk of the god.
	for(var/obj/structure/ritualcircle/matthios in view(1, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Matthios to hear my prayers I must either be in the church of the abandoned, near an inverted psycross, flaunting wealth upon me of at least 100 mammon, or offer a coin of at least five mammon up to him!"))
	return FALSE

// Baotha
/datum/patron/inhumen/baotha/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer in the Zzzzzzzurch(!)
	if(istype(get_area(follower), /area/rogue/indoors/shelter/mountains))
		return TRUE
	// Allows prayer near EEEVIL psycross
	for(var/obj/structure/fluff/psycross/zizocross/cross in view(4, get_turf(follower)))
		if(cross.divine == TRUE)
			to_chat(follower, span_danger("That acursed cross interupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayers in the bath house - whore.
	if(istype(get_area(follower), /area/rogue/indoors/town/bath))
		return TRUE
	// Allows prayers if actively high on drugs.
	if(follower.has_status_effect(/datum/status_effect/buff/ozium) || follower.has_status_effect(/datum/status_effect/buff/moondust) || follower.has_status_effect(/datum/status_effect/buff/moondust_purest) || follower.has_status_effect(/datum/status_effect/buff/druqks) || follower.has_status_effect(/datum/status_effect/buff/starsugar))
		return TRUE
	// Allows prayers if the user is drunk.
	if(follower.has_status_effect(/datum/status_effect/buff/drunk))
		return TRUE
	// Allows praying atop ritual chalk of the god.
	for(var/obj/structure/ritualcircle/baotha in view(1, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Baotha to hear my prayers I must either be in the church of the abandoned, near an inverted psycross, within the town's bathhouse, or actively partaking in one of various types of nose-candy!"))
	return FALSE
