#!/bin/bash

chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

echo '[+] Starting mysql...'
service mysql start

echo '[+] Starting apache'
service apache2 start

#wget https://github.com/anir0y/docker-vulnerable-dvwa/blob/master/dvwa/dvwa/images/logo.png /var/www/html/dvwa/images/logo.png

while true
do
    tail -f /var/log/apache2/*.log
    exit 0
done
