#!/bin/bash

phpmyadmin=$(dpkg-query -W -f='${Status}' phpmyadmin 2>/dev/null | grep -c "ok installed")

if [ $phpmyadmin -eq 0 ]; then
	echo "Paigaldame phpmyadmin"
	apt-get install -y phpmyadmin
	apt-get install -y php-mbstring
	apt-get install -y php-gettext;

elif [ $phpmyadmin -eq 1 ]; then
	echo "phpmyadmin on paigaldatud"
	service phpmyadmin status
fi
