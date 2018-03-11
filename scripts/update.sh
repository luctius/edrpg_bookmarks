#!/bin/sh

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
then
    echo "Usage: $0: <bookmark_text> <pdf> <pdf_output>"
    exit 1
fi

FILE=$1
PDF=$2
OUT_PDF=$3
#./scripts/undo_format.sh ${FILE}
./scripts/undo_format.sh ${FILE} tmp.txt
pdftk ${PDF} update_info tmp.txt output ${OUT_PDF}
rm -f tmp.txt
