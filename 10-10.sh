#!/bin/bash

ARGS=1
OUTFILE=symlinks.list

if [ $# -ne "$ARGS" ] 
then
 directory=`pwd`
else
 directory=$1
fi

echo "\"$directory\" 디렉토리의 심볼릭 링크들" 

for file in "$( find $directory -type l )" 
do 
echo "$file"
done |sort > "$OUTFILE"

exit 0 
