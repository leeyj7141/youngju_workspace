#!/bin/bash

echo -n "'var1' 변수값을 넣으세요:" 
read var1 

echo "var1 = $var1"

echo 

echo -n "'var2'와 'var3의 값을 넣으세요(빈 칸이나 탭으로 구분): " 
read var2 var3 
echo "var2 = $var2 	var3 = $var3" 

exit 0 
