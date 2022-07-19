# dl-hp-ab
Download Harry Potter audiobooks

## Description

These bash scripts will download and organize Harry Potter audiobooks from [0].

If [eyeD3](https://eyed3.readthedocs.io/en/latest/) is installed, the ID3 metadata will be updated with correct audiobook information.

The scripts could be changed to download from alternative sources such as [1] or [2], but this is left as an exercise for the reader.  Note that Chapter 7 in Book 5 is corrupt in all the sources.

## Dependencies

* `youtube-dl` or `yt-dlp`
* `eyeD3` (optional to fix ID3 metadata)

## Usage

```
bash download-harry-potter-*-audiobook.bash
```

0. https://stephenkingaudiobooks.com/tag/harry-potter/
0. https://hpaudiobooks.club/
0. https://potdio.com/category/j-k-rowling/
