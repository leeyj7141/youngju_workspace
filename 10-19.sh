#!/bin/bash

LIMIT=19

echo 
echo "3,11을 제이화고 1부터 20까지 출력."
 
a=0

while [ $a -le "$LIMIT" ] 
do
a=$((a+1))

 if [ "$a" -eq 3 ] || [ "$a" -eq 11 ]
 then
  continue
 fi

 echo -n "$a "  
done

a=0
while [ "$a" -le "$LIMIT" ] 
do
a=$((a+1))

if [ "$a" -gt 2 ]
then
 break
fi

echo -n "$a "
done
echo; echo ; echo
exit 0 
