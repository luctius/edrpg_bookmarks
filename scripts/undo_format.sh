#!/bin/sh
FILE=edrpg_bookmarks.txt
FILE_OUT="$(basename "${FILE}" .txt)_without_formatting.txt"

if [ ! -z "$1" ]
then
    FILE="$1"
fi
if [ ! -z "$2" ]
then
    FILE_OUT="$2"
fi

sed "s/^[ ]\+//g" ${FILE} > ${FILE_OUT} 
