#!/bin/sh
FILE=edrpg_bookmarks.txt
PDF=edrpg_corebook_download_orig.pdf
./scripts/undo_format.sh ${FILE}
./scripts/undo_format.sh ${FILE} tmp.txt
pdftk ${PDF} update_info tmp.txt output edrpg_corebook_download_bookmarked.pdf
rm -f tmp.txt
