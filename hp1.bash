#!/usr/bin/bash
# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

# shellcheck disable=SC2034

# https://harrypotter.fandom.com/wiki/Harry_Potter_and_the_Philosopher%27s_Stone
DATE_PUBLISHED=1997-06-27
BOOK_NUM=1
BOOK_TITLE="Harry Potter and the Philosopher's Stone"
CHAPTERS=(
"The Boy Who Lived"
"The Vanishing Glass"
"The Letters from No One"
"The Keeper of the Keys"
"Diagon Alley"
"The Journey from Platform Nine and Three-Quarters"
"The Sorting Hat"
"The Potions Master"
"The Midnight Duel"
"Hallowe'en"
"Quidditch"
"The Mirror of Erised"
"Nicolas Flamel"
"Norbert the Norwegian Ridgeback"
"The Forbidden Forest"
"Through the Trapdoor"
"The Man with Two Faces"
)

URLS_DL=(
'https://stephenkingaudiobooks.com/audio-book-harry-potter-stephen-fry-philosophers-stone/'
'https://stephenkingaudiobooks.com/audio-book-harry-potter-stephen-fry-philosophers-stone/2/'
'https://stephenkingaudiobooks.com/audio-book-harry-potter-stephen-fry-philosophers-stone/3/'
'https://stephenkingaudiobooks.com/audio-book-harry-potter-stephen-fry-philosophers-stone/4/'
)

# shellcheck disable=SC1091
source source.bash
