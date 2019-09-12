#!/bin/bash

wordpress=$(dpkg-query -W -f='${Status}' wordpress 2>/dev/null | grep -c "ok installed")

if [ $wordpress -eq 0 ]; then
	echo "Paigaldame wordpress"
	apt-get install -y wordpress;

elif [ $wordpress -eq 1 ]; then
	echo "wordpress on paigaldatud"
	service wordpress status
fi
