#!/bin/bash

echo 

for file in *
do
 ls -l "$file" 
done

echo ; echo

for file in [jx]*
do
 rm -f $file
 echo "\"$file\" 이 지워졌습니다. "
done

echo 
exit 0 
