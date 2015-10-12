#!/bin/bash

dir1=/usr/local
dir2=/var/spool

pushd $dir1
echo "Now in directory `pwd`." 

pushd $dir2
echo "지금은 `pwd` 디렉토리에 있습니다."

echo "DIRSTACK 배열의 TOP 항목은 $DIRSTACK 입니다."
popd
echo "이제 `pwd` 디렉토리로 돌아왔습니다."

popd
echo "이제 원래의 `pwd` 디렉토리로 돌아왔습니다."
exit 0 
