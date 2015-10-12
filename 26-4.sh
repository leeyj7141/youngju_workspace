#!/bin/bash
#
#exchange()
#{
#local temp=${Countries[$1]}
# Countries[$1]=${Countries[$2]}
# Countries[$2]=$temp
#return 
#}
#
#declare -a Countries 
#
#Countries=(Netherlands Ukraine Zair Turkey Russia Yemen Syria Brazil Argentina Nicaragua Japan Mexico)
#
#clrea
#echo "0: ${Countries[*]}"
#number_of_elements=${#Countries[@]}
#let "comparisons = $number_of_elements -1"
#
#count=1
#
#while [ $comparisons -gt 0 ] 
#do
# index=0 
#while [ $index -lt $comparisons ] 
#do
# if [ ${Countries[$index]} \> ${Countries[`expr $index + 1`]}]
# then 
#  exchange $index `expr $index +1`
# fi 
# let "index +=1"
#done
#
#let "comparisons -=1"
#
#echo 
#echo "$count: ${Countries[@]}"
#echo 
#let "count +=1"
#done
#exit 0


# 불완전한 버블 정렬

# 버블 정렬 알고리즘을 머리속에 떠올려 보세요. 이 스크립트에서는...

# 정렬할 배열을 매번 탐색할 때 마다 인접한 두 원소를 비교해서 
# 순서가 다르면 두 개를 바꿉니다.
# 첫번째 탐색에서는 "가장 큰" 원소가 제일 끝으로 갑니다.
# 두번째 탐색에서는 두번째로 "가장 큰" 원소가 끝에서 두 번째로 갑니다.
# 이렇게 하면 각 탐색 단계는 배열보다 작은 수 만큼을 검색하게 되고,
# 뒤로 갈수록 탐색 속도가 빨라지는 것을 느낄 수 있을 겁니다.


exchange()
{
  # 배열의 두 멤버를 바꿔치기 합니다.
  local temp=${Countries[$1]} # 바꿔치기할 두 변수를 위한 임시 저장소
  Countries[$1]=${Countries[$2]}
  Countries[$2]=$temp
  
  return
}  

declare -a Countries  # 변수 정의, 밑에서 초기화 되기 때문에 여기서는 안 써도 됩니다.

Countries=(Netherlands Ukraine Zair Turkey Russia Yemen Syria Brazil Argentina Nicaragua Japan Mexico Venezuela Greece England Israel Peru Canada Oman Denmark Wales France Kashmir Qatar Liechtenstein Hungary)
# X로 시작하는 나라 이름은 생각이 안 나네요, 쩝...

clear  # 시작하기 전에 화면을 깨끗이 지우고...

echo "0: ${Countries[*]}"  # 0번째 탐색의 배열 전체를 보여줌.

number_of_elements=${#Countries[@]}
let "comparisons = $number_of_elements - 1"

count=1 # 탐색 횟수.

while [ $comparisons -gt 0 ]   # 바깥쪽 루프의 시작
do

  index=0  # 각 탐색 단계마다 배열의 시작 인덱스를 0으로 잡음

  while [ $index -lt $comparisons ] # 안쪽 루프의 시작
  do
    if [ ${Countries[$index]} \> ${Countries[`expr $index + 1`]} ]
    # 순서가 틀리면...
    # \> 가 아스키 비교 연산자였던거 기억나시죠?
    then
      exchange $index `expr $index + 1`  # 바꿉시다.
    fi  
    let "index += 1"
  done # 안쪽 루프의 끝
  

let "comparisons -= 1"
# "가장 큰" 원소가 제일 끝으로 갔기 때문에 비교횟수를 하나 줄일 필요가 있습니다.

echo
echo "$count: ${Countries[@]}"
# 각 탐색 단계가 끝나면 결과를 보여줍니다.
echo
let "count += 1"   # 탐색 횟수를 늘립니다.

done  # 바깥쪽 루프의 끝

# 끝!

exit 0
