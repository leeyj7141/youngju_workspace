#!/bin/bash

outer=1

for a in 1 2 3 4 5 
do
echo "바깥쪽 루프의 $outer 단계."
echo "----------------------"
inner=1

 for b in 1 2 3 4 5 
 do 
  echo "안쪽 루프의 $inner 단계."
  let inner+=1  # ((inner+=1))
 done

let "outer+=1"
echo 
done

exit 0
