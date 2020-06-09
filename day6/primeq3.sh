#!/bin/bash

read -p "Enter number to check : " no
for((cunt=2; cunt<=$no/2; cunt++))
do
	if [ $(($no%$cunt)) -eq 0 ]
	then
		echo "$no is not a prime number"
	exit
	fi
done
echo "$no is a prime number"
