#!/bin/bash -x
wagePerHr=20
declare -a array
for((i=1;i<=20;i++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
			1) workingHrs=8
				;;
			2) workingHrs=4
				;;
			*) workingHrs=0
				;;
	esac
	salary1=$(($wagePerHr*$workingHrs))
	array[$i]=$salary1
	salary=$(($salary+$salary1))
done
echo ${array[@]}
echo "Total wage is : $salary"

