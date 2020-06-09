#!/bin/bash

a=1
rt=0
while [ $rt -lt 256 ]
do

	rt=$((2*$a))
	echo "$rt"
	a=$(($a+1))
done


