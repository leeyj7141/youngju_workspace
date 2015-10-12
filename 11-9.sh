#!/bin/bash

setvar_rot_13()
{
local varname=$1 varvalue=$2
eval $varname='$(echo "$varvalue" |tr a-z n-za-m)'
}
setvar_rot_13 var1 "foobar"
echo $var1

echo $var1 |tr a-z n-za-m

exit 0 
