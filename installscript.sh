#!/bin/bash

echo "Sisesta programmi nimi: "
read  $programm

if [ dpkg-query -W -f='${Status}' $programm | grep -c 'ok installed' -eq 0 ];
then
	echo "Paigaldame $programm"
	apt-get install -y $programm 
elif [ $programm -eq1 ]; then
	echo "$programm on juba installeeritud"

fi
