#!/bin/bash

E_BADARGS=65

directory=$1
fstring=$2

if [ $# -ne 2 ]
then
 echo "사용법:`basename $0` directory string"
 exit $E_BADARGS
fi

for file in $( find $directory -type f -name '*' |sort ) 
do 
 strings -f $file |grep "$fstring" # |sed -e "s%$directory%%"
done
exit 0 
