# dl-hp-ab
Download Harry Potter audiobooks

## Description

These bash scripts will download and organize Harry Potter audiobooks from either [0] or [1].

If [eyeD3](https://eyed3.readthedocs.io/en/latest/) is installed, the ID3 metadata will be updated with correct audiobook information.

The scripts could be changed to download from alternative sources.

Note that in all the sources where Stephen Fry narrates, Chapter 7 in Book 5 is corrupt.

## Dependencies

* `youtube-dl` or `yt-dlp`
* `eyeD3` (optional to fix ID3 metadata)

## Usage

```
bash download-book.bash hp1-uk.bash && bash sanitize-id3-tags.bash hp1-uk.bash
bash download-book.bash hp2-uk.bash && bash sanitize-id3-tags.bash hp2-uk.bash
bash download-book.bash hp3-uk.bash && bash sanitize-id3-tags.bash hp3-uk.bash
bash download-book.bash hp4-uk.bash && bash sanitize-id3-tags.bash hp4-uk.bash
bash download-book.bash hp5-uk.bash && bash sanitize-id3-tags.bash hp5-uk.bash
bash download-book.bash hp6-uk.bash && bash sanitize-id3-tags.bash hp6-uk.bash
bash download-book.bash hp7-uk.bash && bash sanitize-id3-tags.bash hp7-uk.bash
mkdir --verbose -- 'Harry Potter Audio Books 1-7; Read by Stephen Fry [MP3]/'
mv --verbose -- 'Book '?' - Harry Potter and the '* 'Harry Potter Audio Books 1-7; Read by Stephen Fry [MP3]/'

bash download-book.bash hp1-us.bash && bash sanitize-id3-tags.bash hp1-us.bash
bash download-book.bash hp2-us.bash && bash sanitize-id3-tags.bash hp2-us.bash
bash download-book.bash hp3-us.bash && bash sanitize-id3-tags.bash hp3-us.bash
bash download-book.bash hp4-us.bash && bash sanitize-id3-tags.bash hp4-us.bash
bash download-book.bash hp5-us.bash && bash sanitize-id3-tags.bash hp5-us.bash
bash download-book.bash hp6-us.bash && bash sanitize-id3-tags.bash hp6-us.bash
bash download-book.bash hp7-us.bash && bash sanitize-id3-tags.bash hp7-us.bash
mkdir --verbose -- 'Harry Potter Audio Books 1-7; Read by Jim Dale [MP3]/'
mv --verbose -- 'Book '?' - Harry Potter and the '* 'Harry Potter Audio Books 1-7; Read by Jim Dale [MP3]/'
```

0. https://potdio.com/category/stephen-fry/
0. https://potdio.com/category/jim-dale/
0. https://potdio.com/category/j-k-rowling/
0. https://hpaudiobooks.club/series/stephen/
0. https://hpaudiobooks.club/series/jim-dale/
0. https://stephenkingaudiobooks.com/tag/harry-potter/
