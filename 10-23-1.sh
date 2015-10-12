#!/bin/bash
#
#case "$1" in 
#"") echo "사용법: ${0##*/}<filename>"; exit 65 ;; 
#-*) FILENAME=./$1;;
#
#* ) FILENAME=$1;;
#esac

case "$1" in
"") echo "사용법: ${0##*/} <filename>"; exit 65;;  # 명령어 줄 매개변수를 안 적었거나 
                                                         # 첫번째 매개변수가 비어 있을 때
# ${0##*/} 는 매개변수 치환인 ${var##pattern} 이기 때문에 결과는 $0 이 됩니다.

-*) FILENAME=./$1;;   # 첫번째 인자($1)인 filename이 대쉬(-)로 시작한다면
                      # ./$1 로 바꿉니다.
                      # 따라서, 다른 명령어들은 이것을 옵션으로 해석하지 못하게 됩니다.

* ) FILENAME=$1;;     # 아무 것도 아니면, $1.
esac
