/datum/virtue/origin
	var/origin_title
	var/region_title
	var/origin_language

/datum/virtue/origin/racial/reach
	name = "Aemerlond - Readtun"
	desc = "A once-bustling trade center and the capitol of Aemerlond, also colloquially known as the Scarlet Reach. It is now devastated in the wake of the Rosa Wars and the Mad Duke's reign. Considered the armpit of the world."
	custom_text = "Grants free language."
	region_title = "Readtun"
	extra_language = TRUE
	origin_title = "Aemerlond"
	races = list(/datum/species/human/northern,
				/datum/species/demihuman,
				/datum/species/elf/wood,
				/datum/species/human/halfelf,
				/datum/species/anthromorph,
				/datum/species/vulpkanin,
				/datum/species/anthromorphsmall,
				/datum/species/lizardfolk,
				/datum/species/dullahan,
)

/datum/virtue/origin/racial/reach/heartfelt
	name = "Aemerlond - Heartfelt"
	desc = "I originate from the sodden valleys of Heartfelt, a struggling kingdom beset by Ascendant forces. Its court is dominated by scheming, such that coups are an annual occurance in this chaotic land."
	region_title = "Heartfelt"
	origin_desc = "The Barony of Heartfelt is Readtun's closest geographical neighbour and frequent incidental companion in ill-stricken fortunes. Many words have \
	been used to describe the barony's vibrant political domain, with one foremost among them: failing. Crises born of scheming, circumstance and sometimes pure bad luck \
	make Heartfeltian visitors a somewhat common sight in the Reach, ever petitioning for aid or support in ventures spanning from securing noble lineages to reclaiming \
	fiefs overrun by followers of the Ascendant. For all the good and ill between the two states, they share an undeniable (if tenuous) bond, for only do the two together \
	understand just how precarious existence atop a divine graveyard can really be."

/datum/virtue/origin/racial/reach/trethewey
	name = "Aemerlond - Trethewey"
	desc = "A small county perpetually indebted to the rest of the duchy, once known as 'Rockhill.' It is nearly superstitious practice to blame Trethewey for literally anything bad that happens in the duchy."
	region_title = "Trethewey"

/datum/virtue/origin/grenzelhoft
	name = "Grenzelhoftian Empire"
	desc = "I originate from the woods of Grenzelhoft, the heart of the Divine Pantheon. The Empire is at war with Otava."
	origin_title = "Grenzelhoft"
	origin_language = /datum/language/grenzelhoftian
	restricted = TRUE
	races = list(/datum/species/elf/dark,
				/datum/species/elf/sun,
				/datum/species/halforc,
				/datum/species/tabaxi,
				/datum/species/goblinp,
				/datum/species/akula,
				/datum/species/lamia
)
	origin_desc = "Grenzelhoft is a massive realm to the west of Otava, covered by temperate forests and plains. It's the first polity to form after the collapse of the Celestial Empire, \
	primarily controlled by the imperial dynasty of Holstein and its cadet branches, with local nobles holding a relatively small amount of power. \
	Currently, it's engaged in an on-again-off-again war against Otava over land disputes. \
	<br><br>\
	Grenzelhoftians are known for sour cuisine, strong martial traditions and the only professional standing army on the continent, composed of volunteers and non-hereditary nobles. \
	But many in Otava consider Grenzelhoftians uncouth and uneducated. \
	<br><br>\
	Most Grenzelhoftians, at least nominally, worship Astrata and consider their realm a living example of her Perfect Order. It is also the birthplace of the Holy See and the Inquisition, \
	with many pilgrims visiting the Empire and its holy sites yearly. Aside from Astrata, Noc, Eora, Ravox, Necra, Pestra and Malum are also widely worshipped, but worship of Dendor, Abyssor and Xylix is frowned upon if allowed. \
	Worshippers of PSYDON and the Four are persecuted and arrested if found, but well-hidden Zizoist cults persist and infiltrate many layers of the Grenzelhoftian society."

/datum/virtue/origin/etrusca
	name = "Etruscan City-States"
	desc = "I originate from tropical Etrusca, an archipelago of maritime city-states located off the eastern coast of Otava. Skilled traders and sailors, Etruscans have probably rubbed shoulders with more races than most mortals know exist."
	origin_title = "Etrusca"
	origin_language = /datum/language/etruscan
	restricted = TRUE
	races = list(/datum/species/elf/dark,
				/datum/species/elf/sun,
				/datum/species/moth,
				/datum/species/halforc,
				/datum/species/goblinp
)
	origin_desc = "An archipelago of maritime city-states located off the eastern coast of the Otavan countryside.<br> \
	Etrusca is not one unified state, existing instead as many different polities, with shared origins, but each with their own regional traditions, laws and dialects. \
	<br><br>\
	Etruscans are known for their advanced seafaring technology, extensive commercial laws and great interest in other races and cultures, but they are equally infamous for piracy and trickery. \
	<br><br>\
	Abyssor is the most widely worshipped deity in Etrusca, followed by Matthios and Xylix. There's also a prominent minority of Eorans. Worship of PSYDON is allowed and accepted but rare, \
	meanwhile worship of the Four is shunned and forbidden, but not actively persecuted, in part thanks to Matthiosite merchants paying and doing a lot to keep the Astratan Inquisition out of Etrusca."

/datum/virtue/origin/otava
	name = "Otavan Sovereignty"
	desc = "I originate from the gently rolling hills of Otava, a kingdom with its origins in PSYDON's Pantocratorate. The Sovereignty is at war with Grenzelhoft."
	origin_title = "Otava"
	origin_language = /datum/language/otavan
	restricted = TRUE
	races = list(/datum/species/elf/sun,
				/datum/species/halforc,
				/datum/species/goblinp
)
	origin_desc = "An ancient kingdom located amongst hills and knolls, which traces its origin to the Pantocratorate. Despite its secular status, \
	in reality the Otavan Orthodoxy has a large amount of power and influence in the realm, \
	with many outside scholars calling the Patriarch of Otava a gray eminence and true power behind the Otavan Throne, \
	and some even accusing of the Orthodoxy fuelling and motivating the war between Otava and Grenzelhoft. \
	<br><br>\
	Otavans are known for their winemaking, scandalous literature, fine dining and nobility's convoluted and archaic traditions and rules. \
	But many in Grenzelhoft consider Otavans decadent and gluttonous. \
	<br><br>\
	Otava is almost exclusively Psydonic, with worship of the Ten and the Four banned and vigorously persecuted by government-sponsored bounty hunters and the Orthodoxy's Witchfinders. \
	Despite this, however, Otavan nobility is heavily infiltrated and corrupted by Baothan cults and Noccian extremists who work to tear each other and the Orthodoxy down. \
	It's also suspected that several Necran death cults operate out of Otava, ignored by the Orthodoxy due to their aid in hunting traitors, heretics and the profane inside the kingdom."

/datum/virtue/origin/racial/gronn
	name = "Gronnic Highlands"
	desc = "I originate from the cold highlands of Gronn, a loose alliance of tribes and clans nestled in the Skol River Valley. Gronnic culture is fierce, martial and vengeful, and blood feuds still split the clans to this day."
	origin_title = "Gronn"
	origin_language = /datum/language/gronnic
	races = list(/datum/species/halforc,
				/datum/species/goblinp,
				/datum/species/human/northern,
				/datum/species/human/halfelf,
				/datum/species/demihuman,
				/datum/species/lupian,
				/datum/species/kobold,
				/datum/species/anthromorph,
				/datum/species/ogre
)
	origin_desc = "An alliance of northmen, orcs and goblins nestled in the Skol River Valley, bound together by shared hatred for other nations and mutual interest in plundering them. \
	The Gronnic Highlands and Hammerhold were once one people, but when High King Harlon began to unite tribes of the land, he was opposed by fiercely independent sea raiders of the north, \
	led by Chieftain Gronn and Great Shaman Stygh. The war ended in a magical cataclysm which scorched a whole stripe of land, becoming a factual and formal border between Gronns and Hammerholdians. \
	<br><br>\
	Gronns are infamous for vengeful but honest attitudes and frequent raids into other nations. Their culture elevates martial prowess and kinship and strongly disapproves of \
	cowardice and laziness. \
	<br><br>\
	Gronns worship the Great Beasts, their ancestral religion, which many modern Gronns equate with the Four Ascendants. There are also sizeable Dendorite and Abyssorite minorities, but other gods of the Pantheon \
	are not worshipped by anyone but thralls and foreigners. Worship of other deities is not forbidden, but widely considered shameful for Gronns."

/datum/virtue/origin/racial/gronn/New()
	. = ..()
	uniquefaith = GLOB.gronnfaith

/datum/virtue/origin/racial/gronn/wastes
	name = "Gronnic Highlands - Stygian Wastes"
	region_title = "Stygian Wastes"
	desc = "I originate from the terrifying Stygian Wastes, a region between Gronn and Hammerhold immolated by Great Shaman Stygh's powerful spells. Magical creatures prowl the burning wasteland, clawing forth from cracks in the broken earth."
	origin_desc = null

/datum/virtue/origin/raneshen
	name = "Raneshen Emirates"
	desc = "I originate from the savannas and shrublands of Raneshi. Home to the zealous sun elves, the region sits at the arid eastern edge of the continent."
	origin_title = "Raneshi"
	origin_language = /datum/language/celestial
	restricted = TRUE
	races = list(/datum/species/elf/dark,
				/datum/species/halforc,
				/datum/species/goblinp,
				/datum/species/lupian,
				/datum/species/moth,
				/datum/species/akula,
				/datum/species/kobold,
				/datum/species/vulpkanin,
				/datum/species/dracon,
				/datum/species/harpy
)
	origin_desc = "Once the heart and intellectual center of the Celestial Empire, after the collapse Raneshi was reduced to bickering emirates ruled by the surviving sun elven academic and military elite. \
	Eventually, those divided realms made the Agreement, becoming a confederation led by a wazir elected by emirs. \
	<br><br>\
	Raneshens are known for their hospitality, intellectualism and very high literacy rates. However, slavery is prominent in the region, with many of slaves purchased from dark elves and Gronn raiders, \
	which causes foreigners to perceive Raneshens as untrustworthy, insidious and cruel. \
	<br><br>\
	Raneshens almost exclusively worship Astrata, although most cities harbour secret societies of Noccian scholars and archeologists. The Emirates don't recognize the Pantheon or authority of the Grenzelhoftian Holy See, \
	but are willing to work with the Inquisition to combat internal threats in form of Matthiosite warbands and Graggarite cultists"

/datum/virtue/origin/naledi
	name = "Naledi"
	desc = "I originate from the deserts and savannas of Naledi, a distant region known for its magicians and refugees. Baotha destroyed Naledi's government in a storm \
	of decadence, rampant spellcasting and violence, but its people remain."
	origin_title = "Naledi"
	origin_language = /datum/language/celestial
	restricted = TRUE
	races = list(/datum/species/elf/dark,
				/datum/species/halforc,
				/datum/species/goblinp,
				/datum/species/lupian,
				/datum/species/moth,
				/datum/species/akula,
				/datum/species/lizardfolk,
				/datum/species/kobold,
				/datum/species/vulpkanin,
				/datum/species/dracon,
				/datum/species/harpy,
				/datum/species/tieberian
)
	origin_desc = "Naledi was once a province of the Celestial Empire, but then its mostly Psydonic population waged a war against the capital, \
	achieving independence and building close ties with the Pantocratorate. About one dozen years ago, Baotha and her disciples thoroughly corrupted \
	Naledi's ruling dynasty, setting up the realm for a bloody civil war that destroyed Naledi as a nation-state, leaving its people scattered and divided. \
	Naledian refugees are a depressingly common sight in the present times. \
	<br><br>\
	Naledians are known for their spirituality, curiosity, magical aptitude and independence, with their culture placing an emphasis on seeking greater truths and \
	achieving a better understanding of the world. However, many of them also harbour in their hearts a deep-seated sorrow or even rage. \
	<br><br>\
	Most Naledians worship PSYDON, though reject the Orthodoxy and its dogma, considering one's faith to be a personal journey. They are tolerant of those who follow deities of the Pantheon, \
	but fiercely despise the Four and see them as the Devil's servants rather than mortals who ascended into godhood. Nonetheless, it's not uncommon to hear of Naledians who fell to Zizo, \
	hoping to restore their devastated homeland to its former glory using magic and power of undeath."

/datum/virtue/origin/kazengun
	name = "Kazengun - Eastern Shogunate"
	desc = "I originate from the archipelago of Kazengun, a region also known as East Kazengun, and to the continent dwellers often associated with the whole Kazengun."
	origin_title = "Kazengun"
	origin_language = /datum/language/kazengunese
	restricted = TRUE
	races = list(/datum/species/elf/dark,
				/datum/species/elf/sun,
				/datum/species/halforc,
				/datum/species/moth,
				/datum/species/dwarf/mountain
)
	origin_desc = "Kazengun is a nation in a state of prolonged civil war, split between the Eastern Shogunate, led by Grand Empress Shu Hata and Shogun Makoto Zhuge, and the Western Republic, led by the Council of Five. \
	The civil war caused by a long period of turmoil and feudal conflicts, leading to a great decrease in commoners' quality of life. \
	The downtrodden and the starving across the nation were rallied by five wandering warrior-monks who formed the first Council of Five, and led them in a surprise attack against the Emperor's palace, \
	unprepared for withstanding a massive assault from without and within. The Emperor and most of his family were slain, his daughter the sole survivor, rescued by imperial bodyguards. \
	<br><br>\
	The Shogunate stands with Grand Empress Shu Hata, but it is de facto led and ruled by Shogun Makoto Zhuge, her late father's chief bodyguard. \
	Easterners, also known as Islanders, seek to preserve Hata Dynasty's rule and put an end not only to the peasant rebellion, but also to feudal conflicts. \
	They particularly value staying true to traditions and preserving harmony across different social classes. The backbone of Easterners is composed of \
	government officials, landowner-warriors, shrine clergy and city dwellers. \
	<br><br>\
	Kazengunites had a privilege of getting to meet and get acquainted with all ten deities of the Pantheon early in their history, forming an unique decentralized religion \
	where the Ten are revered as powerful spirits. Worship of SAIDON is also accepted, but relatively rare amongst Islanders, while any reveration or worship of the Four is officially forbidden."

/datum/virtue/origin/kazengun/New()
	. = ..()
	uniquefaith = GLOB.kazfaith

/datum/virtue/origin/kazengun/china
	name = "Kazengun - Western Republic"
	region_title = "West Kazengun"
	desc = "I originate from the mainland of Kazengun, also known as West Kazengun, a far less known region to the continent dwellers."
	origin_desc = "Kazengun is a nation in a state of prolonged civil war, split between the Eastern Shogunate, led by Grand Empress Shu Hata and Shogun Makoto Zhuge, and the Western Republic, led by the Council of Five. \
	The civil war caused by a long period of turmoil and feudal conflicts, leading to a great decrease in commoners' quality of life. \
	The downtrodden and the starving across the nation were rallied by five wandering warrior-monks who formed the first Council of Five, and led them in a surprise attack against the Emperor's palace, \
	unprepared for withstanding a massive assault from without and within. The Emperor and most of his family were slain, his daughter the sole survivor, rescued by imperial bodyguards. \
	<br><br>\
	The Republic stands with the commonfolk, led by the Council of Five who are elected by provinces every 10 years. \
	Westerners, also known as Mainlanders, seek to completely overthrow Hata Dynasty and establish a democratic, classless republic. \
	They particularly value spirituality, justice and honesty. The backbone of Westerners is composed of \
	peasants, the poor, wandering vigilantes, magicians, mystics and deserters. \
	<br><br>\
	Unlike Easterners, Westerners follow a non-theistic religion colloquially known as \"the Way\". They believe that gods have forced mortals into a cycle of reincarnations, \
	but via seeking different life experiences and undergoing a kind of spiritual awakening it's possible to break free and become an enlightened celestial being. \
	This faith was initially popular only amongst hermit monks and magicians, but the rebellion and the perceived inaction of the Ten caused many on the mainland to convert. \
	When Western Kazengunites learned of the Four Transcendents from the continent, it only further fuelled the fire of their uprising."

/datum/virtue/origin/hammerhold
	name = "Hammerhold"
	desc = "I originate from mountainous Hammerhold, a frigid land in the far north. It is sparsely populated: only the hardiest peoples can endure its arctic, barren lands."
	origin_title = "Hammerhold"
	origin_language = /datum/language/dwarvish
	restricted = TRUE
	races = list(/datum/species/elf/dark,
				/datum/species/elf/sun,
				/datum/species/tabaxi,
				/datum/species/moth,
				/datum/species/lizardfolk,
				/datum/species/tieberian
)

/datum/virtue/origin/avar
	name = "Avar"
	desc = "I originate from the open plains of Avar, a nomadic people residing the Aavnic steppes. The only settled land consists of small, independent city-states, often engulfed in war with eachother."
	origin_title = "Avar"
	origin_language = /datum/language/aavnic
	restricted = TRUE
	races = list(/datum/species/elf/dark,
				/datum/species/elf/sun,
				/datum/species/moth,
				/datum/species/akula,
				/datum/species/lizardfolk,
				/datum/species/lamia,
				/datum/species/dracon
)

/datum/virtue/origin/racial/underdark
	name = "Underdark"
	desc = "I originate from the treacherous Underdark, a cavernous region beneath Otava and Grenzelhoft. This unforgiving land is dominated by the prosperous and cruel dark elves and their pets. Most surfacedwellers only come here in chains."
	origin_title = "the Underdark"
	origin_language = /datum/language/otavan
	added_traits = list(TRAIT_UNDERDARK)
	races = list(/datum/species/elf/dark,
				/datum/species/moth,
				/datum/species/kobold,
				/datum/species/halforc,
				/datum/species/goblinp,
				/datum/species/anthromorph,
				/datum/species/anthromorphsmall
)

/datum/virtue/origin/racial/underdark/effluvia
	name = "Underdark - Effluvia"
	region_title = "Effluvia"
	desc = "I originate from the rotting caverns of Effluvia, a region of the Underdark teeming with poisonous waters. Infested with giant insects and spiders, this region is largely considered uninhabitable by all but the desperate."

/datum/virtue/origin/racial/underdark/effluvia/New()
	. = ..()
	uniquefaith = GLOB.fluvfaith

// /datum/virtue/origin/unusual
// 	name = "Unusual"
// 	desc = "I originate from a foreign region in which my race is a minority. The customs of this land have become my own, at the cost of my heritage."
// 	triumph_cost = 2
// 	custom_text = "Allows selection of foreign origin upon spawn."

// /datum/virtue/origin/apply_to_human(mob/living/carbon/human/recipient)
// 	recipient.dna.species.origin = origin_title
// 	recipient.dna.species.region = region_title
// 	if(!extra_language)
// 		recipient.grant_language(origin_language)

// /datum/virtue/origin/unusual/apply_to_human(mob/living/carbon/human/recipient)
// 	addtimer(CALLBACK(src, .proc/unusual_apply, recipient), 50)

// /datum/virtue/origin/unusual/proc/unusual_apply(mob/living/carbon/human/recipient)
// 	var/list/virtue_choices = list()
// 	for(var/path as anything in GLOB.virtues)
// 		var/datum/virtue/V = GLOB.virtues[path]
// 		if (!V.name)
// 			continue
// 		if (!istype(V, /datum/virtue/origin))
// 			continue
// 		if (V.restricted == TRUE)
// 			if(!(recipient.dna.species.type in V.races))
// 				continue
// 		if (istype(V, /datum/virtue/origin/racial))
// 			if((recipient.dna.species.type in V.races))
// 				continue
// 		if (istype(V, /datum/virtue/origin/unusual))
// 			continue
// 		virtue_choices[V.name] = V
// 	if(length(virtue_choices))
// 		var/result = tgui_input_list(recipient, "From where do you come?", "ORIGINS", virtue_choices)
// 		if(result)
// 			recipient.dna.species.skin_tone_wording = "Custom"
// 			var/datum/virtue/virtue_chosen = virtue_choices[result]
// 			apply_virtue(recipient, virtue_chosen)
// 			if(virtue_chosen.extra_language == TRUE)
// 				recipient.grant_language(recipient.client.prefs.extra_language)
// 		else
// 			var/chosen_virtue = new recipient.dna.species.origin_default
// 			apply_virtue(recipient, chosen_virtue)
// 			to_chat(recipient, "Denied foreign origin! Resetting to default. Triumph cost refunded!")
// 			recipient.adjust_triumphs(3)
// 	else
// 		var/chosen_virtue = new recipient.dna.species.origin_default
// 		apply_virtue(recipient, chosen_virtue)
// 		to_chat(recipient, "No foreign origins available! Resetting to default. Triumph cost refunded!")
// 		recipient.adjust_triumphs(3)
