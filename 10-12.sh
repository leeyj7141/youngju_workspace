#!/bin/bash

EXPECTED_ARGS=2
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ] 
then
 echo "사용법:`basename $0` phone# text-file"
 exit $E_BADARGS
fi

if [ ! -f "$2" ] 
then 
 echo "$2 는 텍스트 파일이 아닙니다."
 exit $E_BADARGS
fi

fax make $2

for file in $( ls $2.0*) 

do 
 fil="$fil $file"
done

efax -d /dev/ttyS3 -o 1 -t "T$1" $fil
