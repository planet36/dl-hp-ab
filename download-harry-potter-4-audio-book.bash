#!/usr/bin/bash
# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

# shellcheck disable=SC2034

# https://harrypotter.fandom.com/wiki/Harry_Potter_and_the_Goblet_of_Fire
DATE_PUBLISHED=2000-07-08
BOOK_NUM=4
BOOK_TITLE="Harry Potter and the Goblet of Fire"
CHAPTERS=(
"The Riddle House"
"The Scar"
"The Invitation"
"Back to The Burrow"
"Weasley's Wizard Wheezes"
"The Portkey"
"Bagman and Crouch"
"The Quidditch World Cup"
"The Dark Mark"
"Mayhem at the Ministry"
"Aboard the Hogwarts Express"
"The Triwizard Tournament"
"Mad-Eye Moody"
"The Unforgivable Curses"
"Beauxbatons and Durmstrang"
"The Goblet of Fire"
"The Four Champions"
"The Weighing of the Wands"
"The Hungarian Horntail"
"The First Task"
"The House-Elf Liberation Front"
"The Unexpected Task"
"The Yule Ball"
"Rita Skeeter's Scoop"
"The Egg and the Eye"
"The Second Task"
"Padfoot Returns"
"The Madness of Mr Crouch"
"The Dream"
"The Pensieve"
"The Third Task"
"Flesh, Blood and Bone"
"The Death Eaters"
"Priori Incantatem"
"Veritaserum"
"The Parting of the Ways"
"The Beginning"
)

URLS_DL=(
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-goblet-fire/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-goblet-fire/2/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-goblet-fire/3/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-goblet-fire/4/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-goblet-fire/5/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-goblet-fire/6/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-goblet-fire/7/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-goblet-fire/8/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-goblet-fire/9/'
)

# shellcheck disable=SC1091
source source.bash
