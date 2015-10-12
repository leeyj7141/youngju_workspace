#!/bin/bash

y=`eval ps ax |sed -n '/ppp/p' |awk '{print $1 }'`

kill -9 $y 

chmod 666 /dev/ttyS3

rm /var/local/LCK..ttyS3

exit 0 
