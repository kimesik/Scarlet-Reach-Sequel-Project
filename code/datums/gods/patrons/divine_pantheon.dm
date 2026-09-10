/datum/patron/divine
	name = null
	associated_faith = /datum/faith/divine/standard

/datum/patron/divine/astrata
	name = "Astrata"
	domain = "Goddess of the Sun, Law and Order"
	desc = "The Sun-Tyrant and Noc's twin sister. Astrata leads the Pantheon with an iron fist. \
	She demands obedience and respect as she leads both mortals and fellow gods through calamity after calamity. \
	As time passes, her grip only gets tighter and her patience for the Profane thinner."
	worshippers = "Grenzelhoftians, Lawmen, Commoners"
	mob_traits = list(TRAIT_APRICITY)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/ignition				= CLERIC_T0,
					/obj/effect/proc_holder/spell/self/astrata_gaze				= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/lightningbolt/sacred_flame_rogue	= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/scorch					= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/heal					= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/revive				= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T4,
					/obj/effect/proc_holder/spell/invoked/invoked_reverence		= CLERIC_T4
	)
	confess_lines = list(
		"ASTRATA IS MY LIGHT!",
		"ASTRATA BRINGS LAW!",
		"I SERVE THE GLORY OF THE SUN!",
	)
	miracle_healing_lines = list(
		"A wreath of gentle light passes over %TARGET!"
	)
	storyteller = /datum/storyteller/astrata
	rites = "Rune of Sun"

/datum/patron/divine/astrata/situational_bonus(mob/living/follower, mob/living/target)
	return list((GLOB.tod == "day"), 2)

/datum/patron/divine/astrata/kazengun
	name = "Aisata"
	desc = "The Usurper of the Sun and Noc's twin sister. Aisata leads the Pantheon with an iron fist. \
	She demands obedience and respect as she leads both mortals and fellow gods through calamity after calamity. \
	As time passes, her grip only gets tighter and her patience for the Profane thinner."
	associated_faith = /datum/faith/divine/kazengun
	parentpatron = /datum/patron/divine/astrata
	noresearch = TRUE
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/ignition				= CLERIC_T0,
					/obj/effect/proc_holder/spell/self/astrata_gaze/kazengun	= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/lightningbolt/sacred_flame_rogue	= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/scorch					= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/heal					= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/revive				= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T4,
					/obj/effect/proc_holder/spell/invoked/invoked_reverence		= CLERIC_T4
	)

/datum/patron/divine/noc
	name = "Noc"
	domain = "God of the Moon, Magic and Knowledge"
	desc = "The Wise Father and Astrata's twin brother. Noc guides wanderers, scholars and magicians, but his moonlight shines upon all. \
	Considered to be aloof and irresponsible, but revered for his command of the arcane. \
	More concerningly, some suspect him to be the patron of vampires."
	worshippers = "Travelers, Wizards, Scholars"
	mob_traits = list(TRAIT_NIGHT_OWL, TRAIT_NOCINSPIRE)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/noc_sight				= CLERIC_T0,
					/obj/effect/proc_holder/spell/targeted/touch/darkvision/miracle	= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/invisibility/miracle	= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/noc_spell_bundle			= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T3,
	)
	confess_lines = list(
		"NOC IS NIGHT!",
		"NOC SEES ALL!",
		"I SEEK THE MYSTERIES OF THE MOON!",
	)
	miracle_healing_lines = list(
		"A shroud of soft moonlight falls upon %TARGET!"
	)
	storyteller = /datum/storyteller/noc
	rites = "Rune of Moon"

/datum/patron/divine/noc/situational_bonus(mob/living/follower, mob/living/target)
	return list((GLOB.tod == "night"), 2)

/datum/patron/divine/noc/kazengun
	name = "Noishi"
	desc = "The Moon Prince and Aisata's twin brother. Noishi guides wanderers, scholars and magicians, but his moonlight shines upon all. \
	Considered to be aloof and irresponsible, but revered for his command of the arcane. \
	More concerningly, some suspect him to be the patron of bloodsuckers."
	associated_faith = /datum/faith/divine/kazengun
	parentpatron = /datum/patron/divine/noc
	noresearch = TRUE
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/noc_sight/kazengun	= CLERIC_T0,
					/obj/effect/proc_holder/spell/targeted/touch/darkvision/miracle	= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/invisibility/miracle	= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/noc_spell_bundle			= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T3,
	)

/datum/patron/divine/dendor
	name = "Dendor"
	domain = "God of the Soil and Nature"
	desc = "The Treefather and the oldest of the Pantheon, second only to Psydon himself in age and experience. \
	The fierce guardian of the wilds feared by many, and thus the Holy See only formally considers him a part of the Pantheon, \
	but his druids are often respected and sought-after, thought to be capable of protecting mortals from beasts and werewolves."
	worshippers = "Druids, Shapeshifters, Wildlings"
	mob_traits = list(TRAIT_KNEESTINGER_IMMUNITY, TRAIT_LEECHIMMUNE)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/spiderspeak 			= CLERIC_T0,
					/obj/effect/proc_holder/spell/targeted/blesscrop			= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/targeted/wildshape			= CLERIC_T2,
					/obj/effect/proc_holder/spell/targeted/beasttame			= CLERIC_T2,
					/obj/effect/proc_holder/spell/targeted/conjure_glowshroom	= CLERIC_T3,
					/obj/effect/proc_holder/spell/targeted/conjure_vines 		= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T4,
					/obj/effect/proc_holder/spell/self/howl/call_of_the_moon	= CLERIC_T4,
	)
	confess_lines = list(
		"DENDOR PROVIDES!",
		"THE TREEFATHER BRINGS BOUNTY!",
		"I ANSWER THE CALL OF THE WILD!",
	)
	miracle_healing_lines = list(
		"A rush of primal energy spirals about %TARGET!"
	)
	storyteller = /datum/storyteller/dendor
	rites = "Rune of Beasts"

/datum/patron/divine/dendor/situational_bonus(mob/living/follower, mob/living/target)
	var/list/natural_stuff = list(/obj/structure/flora/roguegrass, /obj/structure/flora/roguetree, /obj/structure/flora/rogueshroom, /obj/structure/soil, /obj/structure/flora/newtree, /obj/structure/flora/tree, /obj/structure/glowshroom)
	var/situational_bonus = 0
	// the more natural stuff around US, the more we heal
	for (var/obj/O in oview(5, follower))
		if (O in natural_stuff)
			situational_bonus = min(situational_bonus + 0.1, 2)
	for (var/obj/structure/flora/roguetree/wise/O in oview(5, follower))
		situational_bonus += 1.5
	return list((situational_bonus > 0), situational_bonus)

/datum/patron/divine/dendor/kazengun
	name = "Denno"
	desc = "The Treefather and the oldest of the Pantheon, second only to Saidon himself in age and experience. \
	The fierce guardian of the wilds feared by many, and thus the Holy See only formally considers him a part of the Pantheon, \
	but his shrine guardians are often respected and sought-after, thought to be capable of protecting mortals from beasts and shapeshifters."
	associated_faith = /datum/faith/divine/kazengun
	parentpatron = /datum/patron/divine/dendor
	noresearch = TRUE

/datum/patron/divine/abyssor
	name = "Abyssor"
	domain = "Deity of Seas and Rain."
	desc = "The Lord of Abyss and the strongest of the Pantheon, but also the most alien and unpredictable, even its reasons for joining the Pantheon are unknown. \
	It communes with its worshippers via disturbing dreams and strange visions, spurring them to seek to appease its mysterious whims. \
	Its most fanatical followers try to make Abyssor resurface, believing its fury would defeat the Profane... or the rest of the Pantheon."
	worshippers = "Etruscans, Sailors, Fatalists"
	mob_traits = list(TRAIT_ABYSSOR_SWIM, TRAIT_SEA_DRINKER)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/aquatic_compulsion	= CLERIC_T0,
					/obj/effect/proc_holder/spell/self/abyssor_wind				= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/abyssor_bends			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/abyssheal				= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/call_mossback			= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T4,
					/obj/effect/proc_holder/spell/invoked/call_dreamfiend		= CLERIC_T4,
					/obj/effect/proc_holder/spell/invoked/abyssal_infusion		= CLERIC_T4
	)
	confess_lines = list(
		"ABYSSOR COMMANDS THE WAVES!",
		"THE OCEAN'S FURY IS ABYSSOR'S WILL!",
		"I AM DRAWN BY THE PULL OF THE TIDE!",
	)
	miracle_healing_lines = list(
		"A mist of salt-scented vapour settles on %TARGET!"
	)

	storyteller = /datum/storyteller/abyssor
	rites = "Rune of Storm"

/datum/patron/divine/abyssor/situational_bonus(mob/living/follower, mob/living/target)
	// if we're standing in water
	return list((istype(get_turf(follower), /turf/open/water)), 1.5)

/datum/patron/divine/abyssor/kazengun
	name = "Abysawa"
	desc = "The Lord of Abyss and the strongest of the Pantheon, but also the most alien and unpredictable, even its reasons for joining the Pantheon are unknown. \
	It communes with its worshippers via disturbing dreams and strange visions, spurring them to seek to appease its mysterious whims. \
	Its most fanatical followers try to make Abysawa resurface, believing its fury would defeat the Profane... or the rest of the Pantheon."
	associated_faith = /datum/faith/divine/kazengun
	parentpatron = /datum/patron/divine/abyssor
	noresearch = TRUE

/datum/patron/divine/ravox
	name = "Ravox"
	domain = "God of Warfare, Glory and Strategy"
	desc = "The Warmaster. The patron of warriors and commanders, for whom war is more than senseless violence, but a craft to perfect and master. Revered and loathed in equal proportions, \
	many see him as the Bulwark of the Pantheon, others think of him as a glory hound."
	worshippers = "Avars, Commanders, Wandering Warriors"
	mob_traits = list(TRAIT_SHARPER_BLADES)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/tug_of_war			= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/divine_strike			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/call_to_arms				= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/persistence			= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T4,
	)
	confess_lines = list(
		"RAVOX IS GLORIOUS!",
		"THROUGH STRIFE, GRACE!",
		"THROUGH PERSISTENCE, GLORY!",
	)
	miracle_healing_lines = list(
		"An air of righteous defiance rises near %TARGET!"
	)
	storyteller = /datum/storyteller/ravox
	rites = "Rune of Justice"

/datum/patron/divine/ravox/situational_bonus(mob/living/follower, mob/living/target)
	var/situational_bonus = 0
	var/is_divine = ispath(target.patron?.type, /datum/patron/divine)
	// the bloodier the area around our target is, the more we heal
	for (var/mob/living/carbon in oview(5, follower))
		if (is_divine)
			situational_bonus = min(situational_bonus + 0.5, 2.5)
	return list((situational_bonus > 0), situational_bonus)

/datum/patron/divine/ravox/kazengun
	name = "Ratake"
	desc = "The Swordmaster. The patron of sword-saints and shoguns, for whom war is more than senseless violence, but a craft to perfect and master. Revered and loathed in equal proportions, \
	many see him as the Bulwark of the Pantheon, others think of him as a glory hound."
	associated_faith = /datum/faith/divine/kazengun
	parentpatron = /datum/patron/divine/ravox
	noresearch = TRUE
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/tug_of_war			= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/divine_strike/kazengun	= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/self/call_to_arms				= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/persistence/kazengun	= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T4,
	)

/datum/patron/divine/necra
	name = "Necra"
	domain = "Goddess of Death and the Underworld"
	desc = "The Undermaiden. A selfish ruler of the Underworld, she joined the Pantheon to take care of the faithful who perish and guide them to her realm, away from the Unspeakable One. \
	An acceptable arrangement, considering that the alternative is undeath or Gehenna."
	worshippers = "Nihilists, Mourners, Gravekeepers"
	mob_traits = list(TRAIT_SOUL_EXAMINE, TRAIT_NOSTINK)	//No stink is generic but they deal with dead bodies so.. makes sense, I suppose?
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/necras_sight			= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/avert					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/fieldburials			= CLERIC_T1,
					/obj/effect/proc_holder/spell/targeted/abrogation			= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/speakwithdead			= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T4,
	)
	confess_lines = list(
		"NECRA WILL SAVE MY SOUL!",
		"THE UNDERMAIDEN IS OUR FINAL REPOSE!",
		"I FEAR NOT DEATH, MY LADY AWAITS ME!",
	)
	miracle_healing_lines = list(
		"A sense of quiet respite radiates from %TARGET."
	)
	storyteller = /datum/storyteller/necra
	rites = "Rune of Death"

/datum/patron/divine/necra/situational_bonus(mob/living/follower, mob/living/target)
	// if the target is closer to death
	return list((target.health <= target.maxHealth * 0.25), 2.5)

/datum/patron/divine/necra/kazengun
	name = "Neriko"
	desc = "The Undermaiden. A selfish ruler of the Underworld, she joined the Pantheon to take care of the faithful who perish and guide them to her realm, away from the Dark Lady. \
	An acceptable arrangement, considering that the alternative is undeath or Gehenna."
	associated_faith = /datum/faith/divine/kazengun
	parentpatron = /datum/patron/divine/necra
	noresearch = TRUE

/datum/patron/divine/xylix
	name = "Xylix"
	domain = "God of Trickery, Inspiration and Madness"
	desc = "The Laughing God. Xylix is known for inspiring many mortals with fey moods and pushing them to the peaks of greatness... or the depths of despair and insanity. \
	The wildcard of the Pantheon, distrusted by all and known to occassionally help the Profane for his amusement, but tolerated for his cunning and insight."
	worshippers = "Jesters, Tricksters and Madmen"
	mob_traits = list(TRAIT_XYLIX)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison				= CLERIC_ORI,
					/obj/effect/proc_holder/spell/self/xylixslip					= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 				= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/fetch/miracle 	= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/repel/miracle 	= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/mockery					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal				= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/mastersillusion			= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/wound_heal				= CLERIC_T3,
	)
	confess_lines = list(
		"ASTRATA IS MY LIGHT!",
		"NOC IS NIGHT!",
		"DENDOR PROVIDES!",
		"ABYSSOR COMMANDS THE WAVES!",
		"RAVOX IS GLORIOUS!",
		"NECRA WILL SAVE MY SOUL!",
		"HAHAHAHA! AHAHAHA! HAHAHAHA!",
		"PESTRA SOOTHES ALL ILLS!",
		"MALUM IS MY MUSE!",
		"EORA BRINGS US TOGETHER!",
		"LONG LIVE ZIZO!",
		"GRAGGAR IS THE BEAST I WORSHIP!",
		"MATTHIOS IS MY LORD!",
		"BAOTHA IS MY JOY!",
		"REBUKE THE HERETICAL, PSYDON ENDURES!",
	)
	miracle_healing_lines = list(
		"A mirthful breeze swirls around %TARGET!"
	)
	storyteller = /datum/storyteller/xylix
	rites = "Rune of Trickery"

/datum/patron/divine/xylix/situational_bonus(mob/living/follower, mob/living/target)
	// half of the time, heal a little (or a lot) more - flip the coin
	return list(prob(50), rand(1, 2.5))

/datum/patron/divine/xylix/kazengun
	name = "Xyji"
	desc = "The Laughing God. Xyji is known for inspiring many mortals with fey moods and pushing them to the peaks of greatness... or the depths of despair and insanity. \
	The wildcard of the Pantheon, distrusted by all and known to occassionally help the Profane for his amusement, but tolerated for his cunning and insight."
	associated_faith = /datum/faith/divine/kazengun
	parentpatron = /datum/patron/divine/xylix
	noresearch = TRUE
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison				= CLERIC_ORI,
					/obj/effect/proc_holder/spell/self/xylixslip/kazengun			= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 				= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/fetch/miracle 	= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/projectile/repel/miracle 	= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/mockery					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal				= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/mastersillusion			= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/wound_heal				= CLERIC_T4,
	)

/datum/patron/divine/pestra
	name = "Pestra"
	domain = "Goddess of Medicine, Compassion and Charity"
	desc = "The Healer. Pestra's compassion extends to all mortals, with her devotees engaging not only in medicine, but also charity, social work and counselling."
	worshippers = "The Sick, Physicians, Benefactors"
	mob_traits = list(TRAIT_EMPATH, TRAIT_ROT_EATER)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/diagnose				= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/pestra_leech			= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/heal					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/infestation			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/attach_bodypart		= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/cure_rot				= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T4,
	)
	confess_lines = list(
		"PESTRA SOOTHES ALL ILLS!",
		"ALL LIFE IS SACRED!",
		"THE HEALER WEEPS AT MY SUFFERING!",
	)
	miracle_healing_lines = list(
		"An aura of clinical care encompasses %TARGET!"
	)
	storyteller = /datum/storyteller/pestra
	rites = "Rune of Plague"

/datum/patron/divine/pestra/situational_bonus(mob/living/follower, mob/living/target)
	if (!iscarbon(follower))
		return list(FALSE, 0)

	// situational bonus only if whatever we're healing is low on blood
	var/mob/living/carbon/C = target
	return list((C.blood_volume <= (BLOOD_VOLUME_NORMAL / 2)), 2.5)

/datum/patron/divine/pestra/kazengun
	name = "Pesiko"
	desc = "The Healer. Pesiko's compassion extends to all mortals, with her devotees engaging not only in medicine, but also charity, social work and counselling."
	associated_faith = /datum/faith/divine/kazengun
	parentpatron = /datum/patron/divine/pestra
	noresearch = TRUE

/datum/patron/divine/pestra/effluvia
	name = "Saint's Cocoon"
	desc = "The Saint's Cocoon, a nascent goddess who rules from a time hereafter. She whispers discordant secrets to her followers."
	associated_faith = /datum/faith/divine/effluvia
	parentpatron = /datum/patron/divine/pestra
	noresearch = TRUE

/datum/patron/divine/malum
	name = "Malum"
	domain = "God of Creation and Fire"
	desc = "The Forgelord. To Malum, creation is the end rather than a mean, as he teaches that great works for killing or saving are great works either way. The well-oiled guillotine and the well-sharpened axe are tools, and there is no good and evil to their craft."
	worshippers = "Smiths, Miners, Engineers"
	mob_traits = list(TRAIT_FORGEBLESSED, TRAIT_BETTER_SLEEP)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/malum_flame_rogue 	= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/vigorousexchange		= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/heatmetal				= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/hammerfall			= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T3,
	)
	confess_lines = list(
		"MALUM IS MY MUSE!",
		"TRUE VALUE IS IN THE TOIL!",
		"I AM AN INSTRUMENT OF CREATION!",
	)
	miracle_healing_lines = list(
		"A dispassionate glow smoulders around %TARGET!"
	)
	storyteller = /datum/storyteller/malum
	rites = "Rune of Forge"

/datum/patron/divine/malum/situational_bonus(mob/living/follower, mob/living/target)
	// extra healing for every source of fire/light near us
	var/list/firey_stuff = list(/obj/machinery/light/rogue/torchholder, /obj/machinery/light/rogue/campfire, /obj/machinery/light/rogue/hearth, /obj/machinery/light/rogue/wallfire, /obj/machinery/light/rogue/wallfire/candle, /obj/machinery/light/rogue/forge)
	var/situational_bonus = 0
	for (var/obj/O in oview(5, follower))
		if (O.type in firey_stuff)
			situational_bonus = min(situational_bonus + 0.5, 2.5)
	return list((situational_bonus > 0), situational_bonus)

/datum/patron/divine/malum/kazengun
	name = "Mamuke"
	associated_faith = /datum/faith/divine/kazengun
	parentpatron = /datum/patron/divine/malum
	noresearch = TRUE
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/malum_flame_rogue/kazengun = CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/vigorousexchange/kazengun	= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/heatmetal/kazengun	= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/hammerfall/kazengun	= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T3,
	)

/datum/patron/divine/eora
	name = "Eora"
	domain = "Goddess of Love, Family and Art"
	desc = "The Allmother, her love for mortals and her fellow gods even greater than that of Pestra's, but all the more alien for it. Many mortals turn to her for solace and guidance, \
	and weddings are often made in her witness even by those who don't worship her."
	worshippers = "Artists, Devoted Family Men, Doting Grandparents"
	mob_traits = list(TRAIT_EMPATH, TRAIT_EXTEROCEPTION)
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/eora_blessing			= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/bless_food            = CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/bud					= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/heartweave			= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/eoracurse				= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T4,
					/obj/effect/proc_holder/spell/invoked/pomegranate			= CLERIC_T4,
	)
	confess_lines = list(
		"EORA BRINGS US TOGETHER!",
		"HER BEAUTY IS EVEN IN THIS TORMENT!",
		"I LOVE YOU, EVEN AS YOU TRESPASS AGAINST ME!",
	)
	miracle_healing_lines = list(
		"A gentle light blossoms around %TARGET!"
	)
	traits_tier = list(TRAIT_EORAN_CALM = CLERIC_T0, TRAIT_EORAN_SERENE = CLERIC_T2)
	storyteller = /datum/storyteller/eora
	rites = "Rune of Love"

/datum/patron/divine/eora/situational_bonus(mob/living/follower, mob/living/target)
	// if the either the target or we are a pacifist, increase bonuses
	var/situational_bonus = 0
	if (HAS_TRAIT(target, TRAIT_PACIFISM))
		situational_bonus = 2.5
	if (HAS_TRAIT(follower, TRAIT_PACIFISM))
		situational_bonus += 1.5
	return list((situational_bonus > 0), situational_bonus)

/datum/patron/divine/eora/kazengun
	name = "Eori"
	desc = "The Allmother, her love for mortals and her fellow gods even greater than that of Pesiko's, but all the more alien for it. Many mortals turn to her for solace and guidance, \
	and weddings are often made in her witness even by those who don't worship her."
	associated_faith = /datum/faith/divine/kazengun
	parentpatron = /datum/patron/divine/eora
	noresearch = TRUE
	miracles = list(/obj/effect/proc_holder/spell/targeted/touch/orison			= CLERIC_ORI,
					/obj/effect/proc_holder/spell/invoked/eora_blessing			= CLERIC_T0,
					/obj/effect/proc_holder/spell/invoked/lesser_heal 			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/bless_food/kazengun	= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/bud/kazengun			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/blood_heal			= CLERIC_T1,
					/obj/effect/proc_holder/spell/invoked/heartweave/kazengun	= CLERIC_T2,
					/obj/effect/proc_holder/spell/invoked/eoracurse/kazengun	= CLERIC_T3,
					/obj/effect/proc_holder/spell/invoked/wound_heal			= CLERIC_T4,
					/obj/effect/proc_holder/spell/invoked/pomegranate/kazengun	= CLERIC_T4,
	)

/////////////////////////////////
// Does God Hear Your Prayer ? //
/////////////////////////////////

// Astrata - In daylight, church, cross, or ritual chalk.
/datum/patron/divine/astrata/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer near psycross
	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(cross.divine == FALSE)
			to_chat(follower, span_danger("That defiled cross interupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer in the church
	if(istype(get_area(follower), /area/rogue/indoors/town/church))
		return TRUE
	// Allows prayer during daytime if outside.
	if(istype(get_area(follower), /area/rogue/outdoors) && (GLOB.tod == "day" || GLOB.tod == "dawn"))
		return TRUE
	to_chat(follower, span_danger("For Astrata to hear my prayer I must either be in her blessed daylight, within the church, or near a psycross.."))
	return FALSE


// Noc - In moonlight, church, cross, or ritual chalk
/datum/patron/divine/noc/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer near psycross
	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(cross.divine == FALSE)
			to_chat(follower, span_danger("That defiled cross interupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer in the church
	if(istype(get_area(follower), /area/rogue/indoors/town/church))
		return TRUE
	// Allows prayer during nightime if outside.
	if(istype(get_area(follower), /area/rogue/outdoors) && (GLOB.tod == "night" || GLOB.tod == "dusk"))
		return TRUE
	// Allows praying atop ritual chalk of the god.
	for(var/obj/structure/ritualcircle/noc in view(1, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Noc to hear my prayer I must either be in his blessed moonlight, within the church, or near a psycross."))
	return FALSE


// Dendor - In grove, bog, cross, or ritual chalk
// Yes, he is NOT calling the master cus he's unique. Whole bog is his prayer zone. Druids exist for a reason instead of in the church.
/datum/patron/divine/dendor/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer near psycross
	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(cross.divine == FALSE)
			to_chat(follower, span_danger("That defiled cross interrupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer in the druid tower + houses in the forest
	if(istype(get_area(follower), /area/rogue/indoors/shelter/woods))
		return TRUE
	// Allows prayer in outdoors wilderness, such as bog
	if(istype(get_area(follower), /area/rogue/outdoors/rtfield))
		return TRUE
	for(var/obj/structure/flora/roguetree/wise in view(4, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("I must either be in Dendor's wilds, the Grove, near a wise tree, or near a pantheon cross for the 'Tree Father' to hear my prayers..."))
	return FALSE


// Abyssor - Near water, cross, or within the church.
/datum/patron/divine/abyssor/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer near psycross
	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(cross.divine == FALSE)
			to_chat(follower, span_danger("That defiled cross interrupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer in the church
	if(istype(get_area(follower), /area/rogue/indoors/town/church))
		return TRUE
	// Allows prayer near any body of water turf.
	for(var/turf/open/water in view(4, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Abyssor to hear my prayer I must either pray within the church, near a pantheon cross, or at any body of water so that the tides of prayer may flow.."))
	return FALSE


// Ravox - Near a knight statue, cross, or within the church
/datum/patron/divine/ravox/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer near psycross
	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(cross.divine == FALSE)
			to_chat(follower, span_danger("That defiled cross interrupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer in the church
	if(istype(get_area(follower), /area/rogue/indoors/town/church))
		return TRUE
	// Allows prayer near any knight statue and its subtypes.
	for(var/obj/structure/fluff/statue/knight/K in view(4, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Ravox to hear my prayer I must either pray within the church, near a pantheon cross, or near a knighly statue in memorium of the fallen.."))
	return FALSE


// Necra - Near a grave, cross, or within the church
/datum/patron/divine/necra/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer near psycross
	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(cross.divine == FALSE)
			to_chat(follower, span_danger("That defiled cross interrupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer in the church
	if(istype(get_area(follower), /area/rogue/indoors/town/church))
		return TRUE
	// Allows prayer near a grave.
	for(var/obj/structure/closet/dirthole/grave/G in view(4, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Necra to hear my prayer I must either pray within the church, near a pantheon cross, or near a grave where we all go to be given our final embrace.."))
	return FALSE


// Xylix - Near a gambling machine, cross, or within the church
/datum/patron/divine/xylix/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer near psycross
	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(cross.divine == FALSE)
			to_chat(follower, span_danger("That defiled cross interrupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer in the church
	if(istype(get_area(follower), /area/rogue/indoors/town/church))
		return TRUE
	// Allows prayer near gambling machines.
	for(var/obj/structure/roguemachine/lottery_roguetown/L in view(4, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Xylix to hear my prayer I must either pray within the church, near a pantheon cross, or near a machine of fortune blessed by the grand jester.."))
	return FALSE


// Pestra - Near a well, cross, within the physicians, or within the church
/datum/patron/divine/pesta/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer near psycross
	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(cross.divine == FALSE)
			to_chat(follower, span_danger("That defiled cross interrupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer in the church
	if(istype(get_area(follower), /area/rogue/indoors/town/church))
		return TRUE
	// Allows prayer in the appothocary's building.
	if(istype(get_area(follower), /area/rogue/indoors/town/physician))
		return TRUE
	// Allows prayer near wells. Weird one, but makes sense for health and disease. Miasma, water, etc.
	for(var/obj/structure/well/W in view(4, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Pestra to hear my prayer I must either pray within the church, phyisican's building, near a psycross, or near a well to observe the full circle of life.."))
	return FALSE


// Malum - Near a smelter, hearth, cross, within the smithy, or within the church
/datum/patron/divine/malum/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer near psycross
	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(cross.divine == FALSE)
			to_chat(follower, span_danger("That defiled cross interrupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer in the church
	if(istype(get_area(follower), /area/rogue/indoors/town/church))
		return TRUE
	// Allows prayer in the smith's building.
	if(istype(get_area(follower), /area/rogue/indoors/town/dwarfin))
		return TRUE
	// Allows prayer near hearths.
	for(var/obj/machinery/light/rogue/hearth/H in view(4, get_turf(follower)))
		return TRUE
	// Allows prayer near smelters.
	for(var/obj/machinery/light/rogue/smelter/H in view(4, get_turf(follower)))
		return TRUE
	to_chat(follower, span_danger("For Malum to hear my prayer I must either pray within the church, the smithy's workshop, near a pantheon cross, near a smelter, or hearth to bask in Malum's glory.."))
	return FALSE

// Eora - Near a gambling machine, cross, or within the church
/datum/patron/divine/eora/can_pray(mob/living/follower)
	. = ..()
	// Allows prayer near psycross
	for(var/obj/structure/fluff/psycross/cross in view(4, get_turf(follower)))
		if(cross.divine == FALSE)
			to_chat(follower, span_danger("That defiled cross interupts my prayers!"))
			return FALSE
		return TRUE
	// Allows prayer in the church
	if(istype(get_area(follower), /area/rogue/indoors/town/church))
		return TRUE
	// Allows Eorans to pray using flowers
	var/obj/item/held_item = follower.get_active_held_item()
	if(istype(held_item, /obj/item/reagent_containers/food/snacks/grown/rogue/poppy))
		qdel(held_item)
		return TRUE
	// Allows player to pray while wearing eoran bud.
	if(HAS_TRAIT(follower, TRAIT_PACIFISM))
		return TRUE
	to_chat(follower, span_danger("For Eora to hear my prayer I must either pray within the church, near a pantheon cross, offering her poppy flowers, or wearing one of her blessed flowers atop my head.."))
	return FALSE
