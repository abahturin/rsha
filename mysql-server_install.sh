#!/bin/bash

mysql-server=$(dpkg-query -W -f='${Status}' 'mysql-server' 2>/dev/null | grep -c "ok installed")

if [ '$mysql-server' -eq 0 ]; then
	echo "Paigaldame mysql-server'i"
	apt-get install -y mysql-server;

elif [ '$mysql-server' -eq 1 ]; then
	echo "mysql-server on paigaldatud"
#	service mysql-server status
fi
