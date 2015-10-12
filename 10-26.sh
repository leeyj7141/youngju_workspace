#!/bin/bash

SUCCESS=0
FAILURE=-1

isalpha ()
{
if [ -z "$1" ] 
then
 return $FAILURE
fi

case "$1" in 
[a-zA-Z]*) return $SUCCESS;;
*	) return $FAILURE;;
esac
}

isalpha2 ()
{
 [ $# -eq 1 ] || return $FAILURE

case $1 in 
 *[!a-zA-Z]*|"") return $FAILURE;;
	*) return $SUCCESS;;
esac
}

check_var ()
{ 
if isalpha "$@"
then
echo "$* = 알파벳"
else 
echo "$* = 알파벳 아님"  
fi
}
a=23skidoo
b=H3llo
c=-What?
d=`echo $b`

check_var $a
check_var $b
check_var $c
check_var $d
check_var 

echo 0 
