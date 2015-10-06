#!/bin/bash

for planet in "Mercury 36" "Venus 67" "Earth 93" "Mars 142" "Jupiter 483"
do
set -- $planet

echo "$1     해까지 거리 $2,000,000 마일" 

done

exit 0 
