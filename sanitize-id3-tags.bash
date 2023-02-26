# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

function program_exists
{
    # https://pubs.opengroup.org/onlinepubs/9699919799/utilities/command.html
    command -v "${@}" > /dev/null
}

# shellcheck disable=SC1090
source "$1" || exit

if [[ -n "$2" ]]
then
    cd "$2" || exit
fi

if [[ ! -v DATE_PUBLISHED ]]
then
    printf 'Error: variable DATE_PUBLISHED not set\n' 1>&2
    exit 1
fi

if [[ ! -v BOOK_NUM ]]
then
    printf 'Error: variable BOOK_NUM not set\n' 1>&2
    exit 1
fi

if [[ ! -v BOOK_TITLE ]]
then
    printf 'Error: variable BOOK_TITLE not set\n' 1>&2
    exit 1
fi

if [[ ! -v CHAPTERS ]]
then
    printf 'Error: variable CHAPTERS not set\n' 1>&2
    exit 1
fi

FOLDER_NAME="Book $BOOK_NUM - $BOOK_TITLE"
cd "$FOLDER_NAME" || exit

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
--artist "$READER"
--album-artist "$READER"
--composer "$AUTHOR"
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
    CHAPTER_NUM=$((I+1))
    CHAPTER_NAME="${CHAPTERS[$I]}"
    INFILE="$CHAPTER_NAME.mp3"
    eyeD3 "${EYED3_OPTS[@]}" --track "$CHAPTER_NUM" --title "$CHAPTER_NAME" "$INFILE" || exit
done
