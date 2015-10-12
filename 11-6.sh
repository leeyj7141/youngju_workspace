#!/bin/bash

echo 
let a=11
let a=a+5

echo "11+5=$a"

let "a <<= 3"
echo "\"\$a\" (=16)를 3번 왼쪽 쉬프트 =$a"

let "a /= 4"
echo "128 / 4 = $a"
let "a -= 5" 
echo "32 -5 = $a"

let "a = a* 10"
echo "27 * 10 = $a"

let "a %= 8 " 
echo "270 modulo 8 = $a (270 / 8 = 33. 나머지 $a)"

echo 
exit 0 
