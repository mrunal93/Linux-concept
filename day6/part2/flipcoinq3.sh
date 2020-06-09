#!/bin/bash
x=1
flips=0
h=0
t=0
coin=$(( $RANDOM % 2 ))
while [ $flips -lt 11 ]
do
	if [ $coin -eq $x ]
	then
		h=$(($h + 1))
		echo "head  count is $h"
	else
		t=$(($t + 1))
		echo "tail count is $t"
	fi
	flips=$(($flips + 1))
	echo "total count is $flips"
done

if [ $h -eq 11 ]
then
	echo "$h Head win"
elif [ $t -eq 11 ]
then
	echo "$t Tail win"
exit
fi


