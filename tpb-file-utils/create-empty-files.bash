# SPDX-FileCopyrightText: Steven Ward
# SPDX-License-Identifier: OSL-3.0

# Run this script from the target directory.
# Examples:
# bash create-empty-files.bash file-list-tpb-12470350.txt
# bash create-empty-files.bash file-list-tpb-12480393.txt

FILE_LIST="$1"

if [[ -z "$FILE_LIST" ]]
then
	printf 'Error: Must give file with names of files and directories\n' 1>&2
	printf 'Usage: bash %q FILE_LIST\n' "$SCRIPT_NAME" 1>&2
	exit 1
fi

if [[ ! -f "$FILE_LIST" ]]
then
	printf 'Error: file not found: %q\n' "$FILE_LIST" 1>&2
	printf 'Usage: bash %q FILE_LIST\n' "$SCRIPT_NAME" 1>&2
	exit 1
fi

grep '/$' -- "$FILE_LIST" | xargs --delimiter='\n' -- mkdir --verbose --parents &&
grep '[^/]$' -- "$FILE_LIST" | xargs --delimiter='\n' -- touch
