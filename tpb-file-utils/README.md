# Description

These file lists contain the names of the directories and MP3 files from their respective audiobook torrents (found on thepiratebay).
- file-list-tpb-12470350.txt
- file-list-tpb-12480393.txt

Use `create-empty-files.bash` to create a directory tree of empty files that mimics the structure and file names of the content of the torrents mentioned above.

These scripts fix the names of the directories and MP3 files to be in agreement with the published novels.
- `rename-files-tpb-12470350.bash`
- `rename-files-tpb-12480393.bash`

These commands generate the file lists.
```sh
find 'Harry Potter Audio Books 1-7; Read by Stephen Fry [MP3]' -type d -printf '%p/\n' , -type f -name '*.mp3' -printf '%p\n' | sort > file-list-tpb-12470350.txt
find 'Harry Potter Audio Books 1-7; Read by Jim Dale [MP3]' -type d -printf '%p/\n' , -type f -name '*.mp3' -printf '%p\n' | sort > file-list-tpb-12480393.txt
```
