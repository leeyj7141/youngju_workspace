#!/bin/bash

PS3='제일 좋아하는 야채를 고르세요:'

echo 

select vegetable in "콩" "당근" "감자" "양파" "순무"
do
echo 
echo " 제일 좋아하는 야채가 $vegetable 이네요. "
echo "깔깔~~"
break 
done
exit 0 
