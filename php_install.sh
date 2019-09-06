#!/bin/bash

php=$(dpkg-query -W -f='${Status}' php 2>/dev/null | grep -c "ok installed")

if [ $php -eq 0 ]; then
	echo "Paigaldame php"
	apt-get install -y php libapache2-mod-php php-mysql;

elif [ $php -eq 1 ]; then
	echo "php on paigaldatud"
	service php5 status
fi
