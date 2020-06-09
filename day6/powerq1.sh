#!/bin/bash

read -p "please enter the power: " n

for ((cunt=1; cunt<=2**$n; cunt++))
do
	g=$cunt
	rem=$(( $cunt % 2))
	if [ $rem -eq 0 ]
	then
		echo $g
	exit
	fi
done
echo  "total count is $cunt "
