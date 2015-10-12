#!/bin/bash

echo 
echo "set \`uname -a\` 하기 전의 위치 매개변수:"
echo "첫번째 명령어줄 인자 =$1"
echo "두번째 명령어줄 인자 = $2"
echo "세번째 명령어줄 인자 = $3"

echo 

set `uname -a`

echo "set \`uname -a\` 한 다음의 위치 매개변수:"

echo "'uname -a'의 첫번째 필드 = $1"
echo "'uname -a'의 두번째 필드 = $2"
echo "'uname -a'의 세번째 필드 = $3"
echo 

exit 0 
