#!/bin/bash

until [ "$var1" = end ] 
do
echo "변수값을 넣으세요 #1" 
echo "(끝내려면 end)"
read var1 
echo "변수 #1 = $var1 "
done 

exit 0 
