#!/usr/bin/bash
# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

# shellcheck disable=SC2034

# https://harrypotter.fandom.com/wiki/Harry_Potter_and_the_Chamber_of_Secrets
DATE_PUBLISHED=1998-07-02
BOOK_NUM=2
BOOK_TITLE="Harry Potter and the Chamber of Secrets"
CHAPTERS=(
"The Worst Birthday"
"Dobby's Warning"
"The Burrow"
"At Flourish and Blotts"
"The Whomping Willow"
"Gilderoy Lockhart"
"Mudbloods And Murmurs"
"The Deathday Party"
"The Writing on the Wall"
"The Rogue Bludger"
"The Duelling Club"
"The Polyjuice Potion"
"The Very Secret Diary"
"Cornelius Fudge"
"Aragog"
"The Chamber of Secrets"
"The Heir of Slytherin"
"Dobby's Reward"
)

URLS_DL=(
'https://stephenkingaudiobooks.com/stephen-fry-audiobook-harry-potter-and-the-chamber-of-secrets/'
'https://stephenkingaudiobooks.com/stephen-fry-audiobook-harry-potter-and-the-chamber-of-secrets/2/'
'https://stephenkingaudiobooks.com/stephen-fry-audiobook-harry-potter-and-the-chamber-of-secrets/3/'
'https://stephenkingaudiobooks.com/stephen-fry-audiobook-harry-potter-and-the-chamber-of-secrets/4/'
'https://stephenkingaudiobooks.com/stephen-fry-audiobook-harry-potter-and-the-chamber-of-secrets/5/'
)

# shellcheck disable=SC1091
source source.bash
