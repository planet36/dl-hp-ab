#!/usr/bin/bash
# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

# shellcheck disable=SC2034

# https://harrypotter.fandom.com/wiki/Harry_Potter_and_the_Prisoner_of_Azkaban
DATE_PUBLISHED=1999-07-08
BOOK_NUM=3
BOOK_TITLE="Harry Potter and the Prisoner of Azkaban"
CHAPTERS=(
"Owl Post"
"Aunt Marge's Big Mistake"
"The Knight Bus"
"The Leaky Cauldron"
"The Dementor"
"Talons and Tea Leaves"
"The Boggart in the Wardrobe"
"Flight of the Fat Lady"
"Grim Defeat"
"The Marauder's Map"
"The Firebolt"
"The Patronus"
"Gryffindor versus Ravenclaw"
"Snape's Grudge"
"The Quidditch Final"
"Professor Trelawney's Prediction"
"Cat, Rat and Dog"
"Moony, Wormtail, Padfoot and Prongs"
"The Servant of Lord Voldemort"
"The Dementor's Kiss"
"Hermione's Secret"
"Owl Post Again"
)

URLS_DL=(
'https://stephenkingaudiobooks.com/book-harry-potter-stephen-fry-prisoner-of-azkaban/'
'https://stephenkingaudiobooks.com/book-harry-potter-stephen-fry-prisoner-of-azkaban/2/'
'https://stephenkingaudiobooks.com/book-harry-potter-stephen-fry-prisoner-of-azkaban/3/'
'https://stephenkingaudiobooks.com/book-harry-potter-stephen-fry-prisoner-of-azkaban/4/'
'https://stephenkingaudiobooks.com/book-harry-potter-stephen-fry-prisoner-of-azkaban/5/'
'https://stephenkingaudiobooks.com/book-harry-potter-stephen-fry-prisoner-of-azkaban/6/'
)

# shellcheck disable=SC1091
source source.bash
