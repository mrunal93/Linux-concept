#!/bin/bash
declare -A dic
dic[1]=0
dic[2]=0
dic[3]=0
dic[4]=0
dic[5]=0
dic[6]=0
ct=10
cunt=1
ft=1
end=6
((diff = end-ft+1))

dict()
{
	dic[$ftdice]=$(( ${dic[$ftdice]}+1 ))
}

while [ $cunt -gt 0 ]
do	ftdice=$(( ft + $(( $RANDOM%diff )) ))
	dict $ftdice
	if [ ${dic[$ftdice]} -eq $ct ]
	then
	
		break
	fi
((cunt++))
done
echo "key =" ${!dic[@]}
echo "count" $cunt
first=${dic[1]}
last=${dic[6]}
n=${#dic[@]}
echo "dic=" ${#dic[@]}
for (( i=1; i<=n; i++ ))
do 
	if [ $first -gt ${dic[$i]} ]
	then
		first=${dic[$i]}
	fi
	if [ $last -lt ${dic[$i]} ]
	then
		last=${dic[$i]}
	fi
done
echo "min value of key" $first
echo "max value of key" $last
echo ${dic[@]}
