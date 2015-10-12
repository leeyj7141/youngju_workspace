#!/bin/bash

E_BADARGS=65
E_NOFILE=66

if [ $# -ne 2 ] 
then 
 echo "사용법:`basename $0` string filename"
 exit $E_BADARGS
fi

if [ ! -f "$2" ]
then 
 echo "\"$2\" 은 존재하지 않는 파일입니다."
 exit $E_NOFILE
fi

for word in $( strings "$2" |grep "$1" ) 
do
 echo $word
done

strings "$2" | grep "$1" | tr -s "$IFS" '[\n*]'

exit 0 
