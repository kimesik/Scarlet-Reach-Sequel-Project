// Miscellaneous/novelty statpacks

/datum/statpack/wildcard/fortune
	name = "Lucky"
	desc = "You survived all of your early life's trials, but you were neither smart nor tough. You were simply lucky."
	stat_array = list(STAT_FORTUNE = 3)

/datum/statpack/wildcard/negative
	name = "Sick"
	desc = "You were a very ill child, most of your life spent bedridden. You got better, but you didn't have a chance to develop your basic abilities."
	stat_array = list(STAT_STRENGTH = -1, STAT_PERCEPTION = -1, STAT_INTELLIGENCE = -1, STAT_CONSTITUTION = -1, STAT_ENDURANCE = -1, STAT_SPEED = -1)

/datum/statpack/wildcard/random
	name = "Mysterious"
	desc = "Your childhood is an enigma even to yourself, and so are your capabilities."
	stat_array = list(STAT_STRENGTH = list(-2, 2), STAT_PERCEPTION = list(-2, 2), STAT_INTELLIGENCE = list(-2, 2), STAT_CONSTITUTION = list(-2, 2), STAT_ENDURANCE = list(-2, 2), STAT_SPEED = list(-2, 2), STAT_FORTUNE = list(-2, 2))

/datum/statpack/wildcard/boring
	name = "Boring"
	desc = "Your childhood was boring and uneventful. How rare."

/datum/statpack/wildcard/talented
	name = "Talented"
	desc = "You were considered a very talented child, easily picking up new skills, but you didn't have enough time or focus to hone your more basic abilities."
