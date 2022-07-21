# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

# Examples:
:<<EOT
bash print-output-file-names.bash hp1-uk.bash >> test/file-names-uk.txt
bash print-output-file-names.bash hp2-uk.bash >> test/file-names-uk.txt
bash print-output-file-names.bash hp3-uk.bash >> test/file-names-uk.txt
bash print-output-file-names.bash hp4-uk.bash >> test/file-names-uk.txt
bash print-output-file-names.bash hp5-uk.bash >> test/file-names-uk.txt
bash print-output-file-names.bash hp6-uk.bash >> test/file-names-uk.txt
bash print-output-file-names.bash hp7-uk.bash >> test/file-names-uk.txt
bash print-output-file-names.bash hp1-us.bash >> test/file-names-us.txt
bash print-output-file-names.bash hp2-us.bash >> test/file-names-us.txt
bash print-output-file-names.bash hp3-us.bash >> test/file-names-us.txt
bash print-output-file-names.bash hp4-us.bash >> test/file-names-us.txt
bash print-output-file-names.bash hp5-us.bash >> test/file-names-us.txt
bash print-output-file-names.bash hp6-us.bash >> test/file-names-us.txt
bash print-output-file-names.bash hp7-us.bash >> test/file-names-us.txt
EOT

# shellcheck disable=SC1090
source "$1" || exit

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

for I in "${!CHAPTERS[@]}"
do
    CHAPTER_NAME="${CHAPTERS[$I]}"
	printf 'Book %02d - %s/%s.mp3\n' "$BOOK_NUM" "$BOOK_TITLE" "$CHAPTER_NAME"
done

