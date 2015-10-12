#!/bin/bash

echo 
echo "\\ 로 끝나는 문자열을 입력하고 <ENTER>를 누르세요."
echo " 그 다음에 두 번째 문자열을 입력하고 <ENTER> 를 다시 누르세요."
read var1 

echo "var1 = $var1"

echo ; echo 
echo "\\ 로 끝나는 다른 문자열을 입력하고 <ENTER>를 누르세요."
read -r var2 

echo "var2 = $var2" 
echo 
exit 0 
