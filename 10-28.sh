#!/bin/bash

PS3='제일 좋아하는 야채를 고르세요: '

echo 
choice_of()
{
select vegetable 
do 
echo 
echo " 제일 좋아하는 야채가 $vegetable 군요."
echo "껄껄~~"
echo 
break 
done 
}
choice_of 콩 쌀 당근 무 토마토 시금치

exit 0
