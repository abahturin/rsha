#!/bin/bash

mysql_server=$(dpkg-query -W -f='${Status}' 'mysql-server' 2>/dev/null | grep -c "ok installed")

if [ $mysql_server -eq 0 ]; then
	echo "Paigaldame mysql-serveri"
	apt-get install -y mysql-server;

elif [ $mysql_server -eq 1 ]; then
	echo "mysql-server on paigaldatud"
#	service mysql-server status
fi
