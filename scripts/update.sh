#!/bin/sh
FILE=edrpg_bookmarks.txt
PDF=edrpg_corebook_download_1.1.pdf
OUT_PDF=edrpg_corebook_download_bookmarked_1.1.pdf
./scripts/undo_format.sh ${FILE}
./scripts/undo_format.sh ${FILE} tmp.txt
pdftk ${PDF} update_info tmp.txt output ${OUT_PDF}
rm -f tmp.txt
