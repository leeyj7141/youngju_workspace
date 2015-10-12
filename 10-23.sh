#!/bin/bash


clear

person=person
while 
clear
echo "끝내려면 end 를 입력하세요"
[  $person != end ] 
do 
 
 echo "	주소록"
 echo "  ------"
 echo "다음중 한 명을 고르세요:"
 echo 
 echo "[E]vans.Roland"
 echo "[J]ones.Mildred"
 echo "[S]mith.Julie"
 echo "[Z]ane.Morris"
 echo
 
 read person
 case "$person" in 
  "E" | "e" ) 
  echo 
  echo "Roland Evans" 
  echo "4321 Floppy Dr."
  echo "Hardscrabble, CO 80753"
  echo "(303) 4324-43829432"
  echo "(303) 432-43241"
  echo "revans@zzy.net"
  echo "Business partner & old friend" 
 ;;
 
  "J" | "j" ) 
  echo
 echo "Mildred Jones" 
 echo "249 E 7th.,Apt.19"
 echo "New York, NY 10009"
 echo "(212) 533-2814"
 echo "(212) 533-9972 fax"
 echo "milliej@olisaida.com"
 echo " Firlfriend"
 echo "Birthday: Feb. 11"
 ;;
 
 	*) 
 echo 	
 echo "아직 등록이 안 돼 있습니다. "
 ;;
 esac
sleep 2
done 
echo 
exit 0 
