#!/bin/bash

E_BADDIR=65

var=/usr/local/youngju

error()
{
printf "$@" >&2
echo 
exit $E_BADDIR
}

cd $var || error $"%s 로 바꿀 수 없습니다." "$var" 

