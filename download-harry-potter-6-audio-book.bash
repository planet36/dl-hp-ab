#!/usr/bin/bash
# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

# shellcheck disable=SC2034

# https://harrypotter.fandom.com/wiki/Harry_Potter_and_the_Half-Blood_Prince
DATE_PUBLISHED=2005-07-16
BOOK_NUM=6
BOOK_TITLE="Harry Potter and the Half-Blood Prince"
CHAPTERS=(
"The Other Minister"
"Spinner's End"
"Will and Won't"
"Horace Slughorn"
"An Excess of Phlegm"
"Draco's Detour"
"The Slug Club"
"Snape Victorious"
"The Half-Blood Prince"
"The House of Gaunt"
"Hermione's Helping Hand"
"Silver and Opals"
"The Secret Riddle"
"Felix Felicis"
"The Unbreakable Vow"
"A Very Frosty Christmas"
"A Sluggish Memory"
"Birthday Surprises"
"Elf Tails"
"Lord Voldemort's Request"
"The Unknowable Room"
"After the Burial"
"Horcruxes"
"Sectumsempra"
"The Seer Overheard"
"The Cave"
"The Lightning-Struck Tower"
"Flight of the Prince"
"The Phoenix Lament"
"The White Tomb"
)

URLS_DL=(
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-prince/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-prince/2/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-prince/3/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-prince/4/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-prince/5/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-prince/6/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-prince/7/'
'https://stephenkingaudiobooks.com/harry-potter-stephen-fry-prince/8/'
)

# shellcheck disable=SC1091
source source.bash
