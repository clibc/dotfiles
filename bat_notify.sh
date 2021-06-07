#!/usr/local/bin/bash

while true
do
	bat_level=`apm -l`

	if [ $bat_level -le 15 ]
	then
		notify-send -u critical "Battery low" "Battery level is ${bat_level}%!"
	fi

	sleep 60
done
