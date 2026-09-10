/datum/faith/divine/standard
	name = "Divine Pantheon"
	desc = "A loose alliance of ten deities led by Astrata the Sun-Tyrant. The most widespread and accepted religion in Scarlet Reach, \
		led by the primarily Astratan <b>Grenzelhoftian Holy See</b> which claims to represent all of the Ten. \
		PSYDON's death and the rise of the Ascendants forced these unlikely allies to band together against the encroaching darkness, \
		yet it's clear that not every deity of this pantheon has the coalition's best interests at heart."
	worshippers = "Citizens of Scarlet Reach, conservative religious-folk, many commonfolk."
	godhead = /datum/patron/divine/astrata

/datum/faith/divine/kazengun
	name = "Heavenly Court"
	desc = "A sacred hierarchy of ten deities who hold rightful authority in Heaven. East Kazengunites see the Ten as successors of SAIDON, \
	bearers of His legacy who teach mortals how to live righteously. Virtuous souls are believed to reincarnate in greater bodies, while those who sin and defile \
	shall be reduced to the mindless bodies of animals."
	worshippers = "East Kazengunites."
	godhead = /datum/patron/divine/noc/kazengun

/datum/faith/divine/kazengun/New()
	uniquelist = GLOB.kazfaith

/datum/faith/divine/effluvia
	name = "The Nascent Goddess"
	desc = "The people of Effluvia offer gifts and prayers to the so-called Nascent Goddess, who is said to gestate in a cocoon to the center of <b>Mercuriam</b>, the ancient bronze city. \
	They believe that one day she will awaken and bring forth a new golden age. Until then, \
	they listen closely to the whispers she provides through thick walls of her shell. Scholars outside of Effluvia suspect the goddess to be a creation of Pestra."
	worshippers = "The fluvians of Effluvia."
	godhead = /datum/patron/divine/pestra/effluvia

/datum/faith/divine/effluvia/New()
	uniquelist = GLOB.fluvfaith

/datum/faith/divine/standard/gronn

/datum/faith/divine/standard/gronn/New()
	uniquelist = GLOB.gronnfaith
