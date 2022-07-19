#!/usr/bin/bash
# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

# shellcheck disable=SC2034

# https://harrypotter.fandom.com/wiki/Harry_Potter_and_the_Order_of_the_Phoenix
DATE_PUBLISHED=2003-06-21
BOOK_NUM=5
BOOK_TITLE="Harry Potter and the Order of the Phoenix"
CHAPTERS=(
"Dudley Demented"
"A Peck of Owls"
"The Advance Guard"
"Number Twelve Grimmauld Place"
"The Order of the Phoenix"
"The Noble and Most Ancient House of Black"
"The Ministry of Magic"
"The Hearing"
"The Woes of Mrs Weasley"
"Luna Lovegood"
"The Sorting Hat's New Song"
"Professor Umbridge"
"Detention with Dolores"
"Percy and Padfoot"
"The Hogwarts High Inquisitor"
"In The Hog's Head"
"Educational Decree Number Twenty-Four"
"Dumbledore's Army"
"The Lion and the Serpent"
"Hagrid's Tale"
"The Eye of the Snake"
"St Mungo's Hospital for Magical Maladies and Injuries"
"Christmas on the Closed Ward"
"Occlumency"
"The Beetle at Bay"
"Seen and Unforeseen"
"The Centaur and the Sneak"
"Snape's Worst Memory"
"Careers Advice"
"Grawp"
"O.W.L.s"
"Out of the Fire"
"Fight and Flight"
"The Department of Mysteries"
"Beyond the Veil"
"The Only One He Ever Feared"
"The Lost Prophecy"
"The Second War Begins"
)

URLS_DL=(
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-phoenix-audio/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-phoenix-audio/2/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-phoenix-audio/3/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-phoenix-audio/4/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-phoenix-audio/5/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-phoenix-audio/6/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-phoenix-audio/7/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-phoenix-audio/8/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-phoenix-audio/9/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-phoenix-audio/10/'
)

# shellcheck disable=SC1091
source source.bash
