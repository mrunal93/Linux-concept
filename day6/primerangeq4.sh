#!/bin/bash

read -p "Enter number of sequence to check prime number : " no
for((cunt=1; cunt<=$no; cunt++))
do
	if [ cunt > 1 ]
	then
		for((ct=2; ct<=$cunt/2; count++))
		do
        		if [ $(($cunt%$ct)) -eq 0 ]
			then
				echo " "
      			exit
			fi
		done
		echo "$cunt"
	exit
	fi
done

