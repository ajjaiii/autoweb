#!/bin/bash

jawaban="y"

read -p "apakah kamu yakin akan melakukan setup aplikasi web ? (Y/N)" pilih;

if [ $pilih == $jawaban ];
then
	echo "==============================="
	echo "Downloading Data"
	echo "==============================="
	cd
	wget https://github.com/sdcilsy/sosial-media/archive/master.zip
	echo "==============================="
	echo "Ekstrak File"
	echo "==============================="
	sudo apt-get install unzip
	unzip master.zip
	echo "==============================="
	echo "memindahkan data"
	echo "==============================="
	sudo rm -Rf /var/www/html/*
	sudo rm -f /var/www/html/*
	sudo mv sosial-media-master/* /var/www/html
	echo "setup selesai"
	exit 0
else
	echo "setup dibatalkan"
	exit 1
fi
