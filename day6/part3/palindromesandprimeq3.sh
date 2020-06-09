#!/bin/bash
read -p "Enter the number : " n
sd=0
rev=""
n1=$n
on=$n

for ((cunt=2; cunt<=$n1/2; cunt++))
do
	if [ $(($n1%$cunt)) -eq 0 ]
	then
		echo "$n1 is not prime  number"
	exit
	fi
done
echo "$n1 is a prime"

while [ $n -gt 0 ]
do
	sd=$(( $n % 10 ))
	n=$(( $n / 10 ))
	rev=$( echo ${rev}${sd} )
done

if [ $on -eq $rev ];
then
	echo "$n1 is palindrome"
else
	echo "$n1 is not a palindrome"
fi
