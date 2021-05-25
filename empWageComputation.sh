#!/bin/bash -x
wagePerHr=20
while [ $((RANDOM%1)) ]
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
hrs=$(($hrs+$workingHrs))
day=$(($day+1))
if [[ $hrs -eq 100 || $day -eq 20 ]]
then
	echo "Employee's salary is : $salary"
	break
fi
done
