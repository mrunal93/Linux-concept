#!/bin/bash 
declare -A birth
birth=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0 [9]=0 [10]=0 [11]=0 [12]=0 )

for (( i=1; i<=50; i++ ))
do
ft=1
end=11
((diff = end-dt+1))
ftbirth=$(( ft + $(($RANDOM%diff)) ))
c=$ftbirth

if [ $ftbirth -eq $c ]
then
	birth[$ftbirth]=$(( ${birth[$ftbirth]}+1 ))
fi
done

echo "keys   =  ${!birth[@]}"
echo "values =  ${birth[@]}"

for i in ${!birth[@]}
do
	echo "${birth[$i]} is the number of individual have birth of month $i"
done

