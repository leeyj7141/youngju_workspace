#!/bin/bash
#이중 소괄호 

echo 
((a = 23))
echo "a (inital value) = $a"
((a++)) 
echo "a (after a++) = $a"
echo ((a--))
echo "a (after a--) = $a"

((++a))
echo "a (after ++a) = $a"

((--a))
echo "a (after --a) = $a"

echo 
((t = a<45?7:11 )) 
echo "if a < 45, then t = 7 ,else t = 11."
echo "t = $t"

echo 

# -----------------------------
# 이스터 에그(Easter Egg) 경고!
# -----------------------------
#  Bash에는 ksh에서 많은 부분을 따온 C 형태의 연산자가 
#+ 문서화되지 않은 형태로 많이 존재합니다.
#  Bash 문서에서는 ((...)) 를 쉘 연산이라고 합니다만,
#+ 그 이상의 것이 존재합니다.
#  비밀을 밝혀서 미안해요, Chet.

# ((...)) 를 쓴 "for", "while" 루프도 참고하세요.

# 이 이스터 에그들은 Bash 버전 2.04 이후에서만 동작합니다.

exit 0



