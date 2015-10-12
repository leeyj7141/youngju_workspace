#!/bin/bash

case $(arch) in 
i386	) "80386 기반의 머신";;
i486 	) "80486 기반의 머신";;
i586	) "Pentium 기반의 머신";;
i686	) "Pentium 2+기반의 머신";;
* 	) echo "다른 형태의 머신";; 
esac
exit 0 
