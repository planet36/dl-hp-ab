# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

function program_exists
{
    # https://pubs.opengroup.org/onlinepubs/9699919799/utilities/command.html
    command -v "${@}" > /dev/null
}

# shellcheck disable=SC1090
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
    printf 'Error: no download programs (i.e. youtube-dl, yt-dlp) found\n' 1>&2
    exit 1
fi

if [[ ! -v DATE_PUBLISHED ]]
then
    printf 'Error: required variable DATE_PUBLISHED not set\n' 1>&2
    exit 1
fi

if [[ ! -v BOOK_NUM ]]
then
    printf 'Error: required variable BOOK_NUM not set\n' 1>&2
    exit 1
fi

if [[ ! -v BOOK_TITLE ]]
then
    printf 'Error: required variable BOOK_TITLE not set\n' 1>&2
    exit 1
fi

if [[ ! -v CHAPTERS ]]
then
    printf 'Error: required variable CHAPTERS not set\n' 1>&2
    exit 1
fi

if [[ ! -v URLS_DL ]]
then
    printf 'Error: required variable URLS_DL not set\n' 1>&2
    exit 1
fi

FOLDER_NAME="Book $BOOK_NUM - $BOOK_TITLE"
mkdir "$FOLDER_NAME" || exit
cd "$FOLDER_NAME" || exit

for I in "${!URLS_DL[@]}"
do
    URL="${URLS_DL[$I]}"
    $DOWNLOAD_PROGRAM -o "$I.%(playlist_index)s.%(ext)s" "$URL" || exit
    sleep 10s
done

mapfile -t MP3_FILES < <(ls -v -- *.mp3)

if (( ${#MP3_FILES[@]} != ${#CHAPTERS[@]} ))
then
    printf 'Error: number of mp3 files downloaded (%d) != number of chapters (%d)\n' "${#MP3_FILES[@]}" "${#CHAPTERS[@]}" 1>&2
    exit 1
fi

for I in "${!MP3_FILES[@]}"
do
    CHAPTER_NAME="${CHAPTERS[$I]}"
    INFILE="${MP3_FILES[$I]}"
    OUTFILE="$CHAPTER_NAME.mp3"
    mv --verbose -- "$INFILE" "$OUTFILE" || exit
done
