#!/bin/bash

echo "please enter student grade"
read grade

if [[ grade -ge 80 ]];
then
	echo "Grade A"
elif [[ grade -gt 60 && grade -lt 80 ]];
then
	echo "Grade B"
elif [[ grade -gt 40 && grade -le 60 ]];
then
	echo "Grade c"
else
	echo "Grade F"

fi

