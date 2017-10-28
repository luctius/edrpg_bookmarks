# Overview
Spidermind Games released their RPG based on Elite Dangerous, named
[Elite Dangerous RPG](http://www.edrpg.co.uk/).  However the pdf they released
did not include a Contents Overview in the meta-data. This is an attempt to
rectify that.

I created the meta-data which can then be merged with the existing pdf with a
tool called pdftk.

[Here is a preview of what I mean](https://github.com/luctius/edrpg_bookmarks/blob/master/edrpg_bookmarks_preview.png)

## Requirements
This requires [pdftk](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/). I
use it under Linux and use the distribution provided version (apt get install
pdftk), but I assume the free or server version from the pdftk website work
equally well.

## Usage:
With the commandline, just run the following line:
`pdftk edrpg_corebook_download.pdf update_info edrpg_bookmarks_without_formatting.txt output bookcopy.pdf`

## Files
The scripts directory contains some linux scripts which helped me with creating
this. The difference between the 'edrpg_bookmarks_without_formatting.txt' and
'edrpg_bookmarks.txt' is that the latter includes spaced outlines in front of
the bookmarks to help be identify to which level the bookmark belongs. The
problem is that pdftk does not like that and complains. Thus I used the script
'undo_formatting.sh' to automaticly created the first one without the formatting
so that pdftk works without a hitch.

Long story short, if you just want the bookmarks, just use
'edrpg_bookmarks_without_formatting.txt'.

