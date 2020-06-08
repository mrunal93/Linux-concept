#!/bin/bash 
declare -A dic
dict=("a:1" "b:2")

for ele in ${dict[@]}
do
	KeyList+=`echo $ele | awk -F : '{ print $1 }'`
done

keys()
{
Input_dict=("$@")
KEYS=()
for element in "${Input_dict[@]}"
do
	KEYS+=("${element%%:*}")
done
echo "${KEYS[@]}"
}
echo "KEYS=$(keys "${dict[@]}")"

values()
{
Input_dict=("$@")
VALUES=()
for element in "${Input_dict[@]}"
do
	VALUES+=("${element##*:}")
done
echo "${VALUES[@]}"
}
echo "VALUES=$(values "${dict[@]}")"

