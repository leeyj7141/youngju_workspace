#!/bin/bash

echo ; echo "아무키나 누른 다음 리턴을 치세요."
read Keypress 

case "$Keypress" in 
 [a-z]	) echo "소문자";;
 [A-Z]	) echo "대문자";;
 [0-9] 	) echo "숫자";;
 * 	) echo "구두점 공백문자 등등";;
esac
exit 0 
