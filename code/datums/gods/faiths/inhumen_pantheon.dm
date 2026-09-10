/datum/faith/inhumen/standard
	name = "Ascendants"
	desc = "The four mortals who rose from the ashes of the Celestial Empire and achieved godhood via magic, brutality, cunning and exalted suffering. Their worshippers see the Four Ascendants as <b>True Divinity</b>, \
	proof that mortals can rise above their limits. The Holy See and disciples of the Old God decry them as false gods and deceivers, sometimes going as far as claim that they are the Devil's surviving servants. \
	For a long time, this was enough to suppress the <b>Profane</b> and stem their cults' growth, but this trend seems to have changed recently."
	worshippers = "Cultists, Outcasts, the Ambituous."
	godhead = /datum/patron/inhumen/zizo

/datum/faith/inhumen/kazengun
	name = "Transcendents"
	desc = "The four mighty mortals who achieved Xian — the state of supreme spiritual awakening and freedom from the cycle of rebirths. Unlike the continent's worshippers of the Four, \
	West Kazengunites don't view the Four as gods worthy of worship, but rather as exceptional individuals to emulate in order to achieve transcendence themselves."
	worshippers = "West Kazengunites."
	godhead = /datum/patron/inhumen/graggar/kazengun

/datum/faith/inhumen/kazengun/New()
	uniquelist = GLOB.kazfaith

/datum/faith/inhumen/gronn
	name = "Great Beasts"
	desc = "Those who hail from the Gronnic Highlands worship the Four Great Beasts, violent and erratic animalistic deities. \
	In the recent years, Gronns have come to believe that the Four Ascendants are human avatars of the Great Beasts, turning them \
	from a violent yet isolationist religion into a ruthless raider force. To them, there is no greater sin than to don the falsehoods of civilization \
	and to bow before the weak godlings of the Pantheon."
	worshippers = "Gronns."
	godhead = /datum/patron/inhumen/zizo/gronn

/datum/faith/inhumen/gronn/New()
	uniquelist = GLOB.gronnfaith

/datum/faith/inhumen/standard/effluvia

/datum/faith/inhumen/standard/effluvia/New()
	uniquelist = GLOB.fluvfaith
