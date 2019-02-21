#!/bin/bash

jawaban="y"
read -p "Apakah kamu yakin akan menginstall webserver ? (Y/N)" pilih;

if [ $pilih == $jawaban ];
then
	echo "Menyiapkan Instalasi Web Server"
	sudo apt-get update
	echo "Melakukan instalasi Web Server"
	sudo apt-get install -y apache2 php php-mysql
	echo "melakukan instalasi Database server"
	sudo apt-get install -y mysql-server
	echo "========================================="
	echo "=============Instalasi Selesai==========="
	echo "========================================"
	exit 0 
else
	echo "Instalasi dibatalkan"
	exit 1
fi
