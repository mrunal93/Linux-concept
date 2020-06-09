#!/bin/bash
read -p "Enter the number : " n
sd=0
rev=""
on=$n



while [ $n -gt 0 ]
do
	sd=$(( $n % 10 ))
	n=$(( $n / 10 ))
	rev=$( echo ${rev}${sd} )
done

if [ $on -eq $rev ];
then
	echo "no is palindrome"
else
	echo "no is not a palindrome"
fi
