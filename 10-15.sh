#!/bin/bash

var1=unset
previous=$var1

while echo "이전 변수 = $previous"
 echo
 previous=$var1
 [ "$var1" != end ] 
do
echo "변수값을 넣으세요 #1 (끝내려면 end)"
 read var1
 echo "변수 #1 = $var1"
done

exit 0 
