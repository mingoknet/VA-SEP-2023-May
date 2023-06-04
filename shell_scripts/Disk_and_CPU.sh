#!/bin/bash

df -H | grep -vE '^Filesystem' | awk '{ print $5 " " $1}' | while read -r output;
do
	echo "$output"
	usep=$(echo "$output" | awk '{ print $1}' | cut -d'%' -f1)
	partition=$(echo "$output" | awk '{ print $2}')
	if [[ $usep -ge 90 ]];
	then
		echo "$partition is Critical"
		echo "======================"
	elif [[ $usep -ge 70 && $usep -lt 90 ]];
	then
		echo "$partition is Warning"
		echo "======================"
	else
		echo "$partition is Normal"
		echo "======================"
	fi
done
