#!/bin/bash
# sieve.sh

# 에라토스테네스의 체(Sieve of Erastosthenes)
# 소수를 찾아주는 고대의 알고리즘.

# 이 스크립트는 똑같은 C 프로그램보다 두 세배는 더 느리게 동작합니다.

LOWER_LIMIT=1       # 1 부터.
UPPER_LIMIT=100000    # 1000 까지.
# (시간이 주체못할 정도로 남아 돈다면 이 값을 더 높게 잡아도 됩니다.)

PRIME=1
NON_PRIME=0

let SPLIT=UPPER_LIMIT/2
# 최적화:
# 오직 상한값의 반만 확인해 보려고 할 경우 필요.


declare -a Primes
# Primes[] 는 배열.


initialize ()
{
# 배열 초기화.

i=$LOWER_LIMIT
until [ "$i" -gt "$UPPER_LIMIT" ]
do
  Primes[i]=$PRIME
  let "i += 1"
done
# 무죄가 밝혀지기 전까지는 배열의 모든 값을 유죄(소수)라고 가정.
}

print_primes ()
{
# Primes[] 멤버중 소수라고 밝혀진 것들을 보여줍니다.

i=$LOWER_LIMIT

until [ "$i" -gt "$UPPER_LIMIT" ]
do

  if [ "${Primes[i]}" -eq "$PRIME" ]
  then
    printf "%8d" $i
    # 숫자당 8 칸을 줘서 예쁘게 보여줍니다.
  fi
  
  let "i += 1"
  
done

}

sift () # 소수가 아닌 수를 걸러냅니다.
{

let i=$LOWER_LIMIT+1
# 1 이 소수인 것은 알고 있으니, 2 부터 시작합니다.

until [ "$i" -gt "$UPPER_LIMIT" ]
do

if [ "${Primes[i]}" -eq "$PRIME" ]
# 이미 걸러진 숫자(소수가 아닌 수)는 건너뜁니다.
then

  t=$i

  while [ "$t" -le "$UPPER_LIMIT" ]
  do
    let "t += $i "
    Primes[t]=$NON_PRIME
    # 모든 배수는 소수가 아니라고 표시합니다.
  done

fi  

  let "i += 1"
done  


}


# 함수들을 순서대로 부릅니다.
initialize
sift
print_primes
# 이런것을 바로 구조적 프로그래밍이라고 한답니다.

echo

exit 0



# ----------------------------------------------- #
# 다음 코드는 실행되지 않습니다.

# 이것은 Stephane Chazelas 의 향상된 버전으로 실행 속도가 좀 더 빠릅니다.

# 소수의 최대 한계를 명령어줄에서 지정해 주어야 됩니다.

UPPER_LIMIT=$1                  # 명령어줄에서의 입력.
let SPLIT=UPPER_LIMIT/2         # 최대수의 중간.

Primes=( '' $(seq $UPPER_LIMIT) )

i=1
until (( ( i += 1 ) > SPLIT ))  # 중간까지만 확인 필요.
do
  if [[ -n $Primes[i] ]]
  then
    t=$i
    until (( ( t += i ) > UPPER_LIMIT ))
    do
      Primes[t]=
    done
  fi  
done  
echo ${Primes[*]}

exit 0
