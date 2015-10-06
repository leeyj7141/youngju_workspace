#!/bin/bash

#FILES="/usr/sbin/privatepw
#/usr/sbin/pwck
#/usr/sbin/go500gw
#/usr/bin/fakefile
#/sbin/mkreiserfs
#/sbin/ypbind"

FILES="/usr/sbin/privatepw
/usr/sbin/pwck
/usr/sbin/go500gw
/usr/bin/fakefile
/sbin/mkreiserfs
/sbin/ypbind"

echo 
echo test

for file in $FILES
do
 if [ ! -e "$file" ] 
 then 
  echo "$file 은 존재하지 않는 파일입니다."; echo 
  continue 
 fi


 ls -l $file |awk '{print $9 "     파일 크기:" $5}' 
 whatis `basename $file` 
 echo 
done

exit 0 
