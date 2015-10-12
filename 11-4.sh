#!/bin/bash

read var1 <data-file
echo "var1 = $var1"
read var2 var3 <data-file
echo "var2 = $var2 var3 = $var3"

echo "--------------------------------------"
while read line 
do 
echo "$line"
done <data-file

echo "--------------------------------------"

echo "모든 사용자 목록:"
OIFS=$IFS; IFS=:
while read name passwd uid gid fullname ignore 
do
echo "$name ($fullname)"
done </etc/passwd
IFS=$OIFS
exit 0 
