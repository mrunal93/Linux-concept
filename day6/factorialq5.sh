#!/bin/bash

read -p "Enter the number " a
c=1

for((cunt=1; cunt<=a; cunt++))
do
	c=$(($c*$cunt))

done
echo "Factorial of $a is $c"
