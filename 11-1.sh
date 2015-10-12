#!/bin/bash

PI=3.14159265358979
DecimalConstant=31373
Message1="안녕들 하신가."
Message2="지구인 여려분."

echo 
printf "Pi를 소수점 이하 2자리만 표시 = %1.2f" $PI
echo 
printf "Pi를 소수점 이하 9자리만 표시 = %1.9f" $PI

printf "\n"

printf "상수 = \t%d\n" $DecimalConstant 
printf "%s %s \n" $Message1 $Message2

echo 

echo 
Pi12=$(printf "%1.12f" $PI) 
echo "Pi를 소수점 12자리만 표시 = $Pi12" 
Msg=`printf "%s %s \n" $Message1 $Message2` 
echo $Msg; echo $Msg 

exit 0 
