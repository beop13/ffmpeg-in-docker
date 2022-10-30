#!/bin/bash

LIST_PATH=$1

i=0
while IFS="|" read -u 9 -r link filepath filename
do
    i=$(( $i + 1 ))
    echo ">>>>>>>>> Processing id $i"
    echo "link $link"
    echo "filepath $filepath"
    echo "filename $filename"
    $( dirname -- "$0"; )/download.sh $link $filepath $filename
done 9< "$LIST_PATH"