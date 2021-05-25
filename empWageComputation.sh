#!/bin/bash -x
wagePerHr=20
for((i=1;i<=20;i++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
			1) workingHrs=8
				;;
			2) workingHrs=4
				;;
			3) workingHrs=0
				;;
	esac
	salary=$(($salary+$(($wagePerHr*$workingHrs))))
done
echo "Employee salary for 20 days is : $salary "
