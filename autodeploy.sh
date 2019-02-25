#!/bin/bash

jawaban="y"

read -p "apakah kamu yakin akan melakukan setup aplikasi web ? (Y/N)" pilih;

if [ $pilih == $jawaban ];
then
	echo "==============================="
	echo "Downloading Data"
	echo "==============================="
	cd
	rm -f master.zip
	rm -R sosial-media-master
	wget https://github.com/ajjaiii/autoweb/raw/master/master.zip
	echo "==============================="
	echo "Ekstrak File"
	echo "==============================="
	sudo apt-get install -y unzip
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
