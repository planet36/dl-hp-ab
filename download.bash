# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

function program_exists
{
    # https://pubs.opengroup.org/onlinepubs/9699919799/utilities/command.html
    command -v "${@}" > /dev/null
}

source "$1" || exit

DOWNLOAD_PROGRAM=''

if program_exists youtube-dl
then
    DOWNLOAD_PROGRAM='youtube-dl'
elif program_exists yt-dlp
then
    DOWNLOAD_PROGRAM='yt-dlp'
fi

if [[ -z "$DOWNLOAD_PROGRAM" ]]
then
    echo "Error: No download programs (i.e. youtube-dl, yt-dlp) found"
    exit 1
fi

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

if [[ ! -v URLS_DL ]]
then
    echo "Error: variable URLS_DL not set"
    echo "This file may be sourced only after required variables are set"
    exit 1
fi

mkdir "HP$BOOK_NUM - $BOOK_TITLE" || exit
cd "HP$BOOK_NUM - $BOOK_TITLE" || exit

for I in "${!URLS_DL[@]}"
do
    URL="${URLS_DL[$I]}"
    $DOWNLOAD_PROGRAM -o "$I.%(playlist_index)s.%(ext)s" "$URL" || exit
    sleep 10s
done

mapfile -t MP3_FILES < <(ls -v -- *.mp3)

if (( ${#MP3_FILES[@]} != ${#CHAPTERS[@]} ))
then
    echo "Error: number of mp3 files downloaded (${#MP3_FILES[@]}) != number of chapters (${#CHAPTERS[@]})"
    exit 1
fi

for I in "${!MP3_FILES[@]}"
do
    printf -v CHAPTER '%02d' $((I+1))
    INFILE="${MP3_FILES[$I]}"
    OUTFILE="$CHAPTER. ${CHAPTERS[$I]}.mp3"
    mv --verbose -- "$INFILE" "$OUTFILE" || exit
done
