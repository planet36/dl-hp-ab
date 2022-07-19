# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

function program_exists
{
    # https://pubs.opengroup.org/onlinepubs/9699919799/utilities/command.html
    command -v "${@}" > /dev/null
}

source "$1" || exit

if [[ ! -v DATE_PUBLISHED ]]
then
    echo "Error: variable DATE_PUBLISHED not set"
    echo "This file may be sourced only after required variables are set"
    exit 1
fi

if [[ ! -v BOOK_NUM ]]
then
    echo "Error: variable BOOK_NUM not set"
    echo "This file may be sourced only after required variables are set"
    exit 1
fi

if [[ ! -v BOOK_TITLE ]]
then
    echo "Error: variable BOOK_TITLE not set"
    echo "This file may be sourced only after required variables are set"
    exit 1
fi

if [[ ! -v CHAPTERS ]]
then
    echo "Error: variable CHAPTERS not set"
    echo "This file may be sourced only after required variables are set"
    exit 1
fi

cd "HP$BOOK_NUM - $BOOK_TITLE" || exit

if ! program_exists eyeD3
then
    exit 0
fi

# XXX: --preserve-file-times doesn't work
declare -a EYED3_OPTS=(
--remove-all-comments
--remove-all-images
--remove-all-lyrics
--remove-all-objects
--remove-all
--encoding utf8
--v2
--preserve-file-times
--artist "Stephen Fry"
--album-artist "Stephen Fry"
--composer "J.K. Rowling"
--orig-artist "J.K. Rowling"
--genre Audiobook
--disc-total 7
--release-year "${DATE_PUBLISHED/-*}"
--release-date "$DATE_PUBLISHED"
--album "$BOOK_TITLE"
--disc-num "$BOOK_NUM"
--track-total "${#CHAPTERS[@]}"
)

for I in "${!CHAPTERS[@]}"
do
    printf -v CHAPTER '%02d' $((I+1))
    INFILE="$CHAPTER. ${CHAPTERS[$I]}.mp3"
    eyeD3 "${EYED3_OPTS[@]}" --track "$CHAPTER" --title "${CHAPTERS[$I]}" "$INFILE" || exit
done
