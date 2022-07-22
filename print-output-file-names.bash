# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

# Examples:
:<<EOT
bash print-output-file-names.bash hp1-uk.bash >> tpb-file-utils/file-names-uk.txt
bash print-output-file-names.bash hp2-uk.bash >> tpb-file-utils/file-names-uk.txt
bash print-output-file-names.bash hp3-uk.bash >> tpb-file-utils/file-names-uk.txt
bash print-output-file-names.bash hp4-uk.bash >> tpb-file-utils/file-names-uk.txt
bash print-output-file-names.bash hp5-uk.bash >> tpb-file-utils/file-names-uk.txt
bash print-output-file-names.bash hp6-uk.bash >> tpb-file-utils/file-names-uk.txt
bash print-output-file-names.bash hp7-uk.bash >> tpb-file-utils/file-names-uk.txt
bash print-output-file-names.bash hp1-us.bash >> tpb-file-utils/file-names-us.txt
bash print-output-file-names.bash hp2-us.bash >> tpb-file-utils/file-names-us.txt
bash print-output-file-names.bash hp3-us.bash >> tpb-file-utils/file-names-us.txt
bash print-output-file-names.bash hp4-us.bash >> tpb-file-utils/file-names-us.txt
bash print-output-file-names.bash hp5-us.bash >> tpb-file-utils/file-names-us.txt
bash print-output-file-names.bash hp6-us.bash >> tpb-file-utils/file-names-us.txt
bash print-output-file-names.bash hp7-us.bash >> tpb-file-utils/file-names-us.txt
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

FOLDER_NAME="Book $BOOK_NUM - $BOOK_TITLE"
printf '%s/\n' "$FOLDER_NAME"
for I in "${!CHAPTERS[@]}"
do
    CHAPTER_NAME="${CHAPTERS[$I]}"
    printf '%s/%s.mp3\n' "$FOLDER_NAME" "$CHAPTER_NAME"
done

