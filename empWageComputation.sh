#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
isPresent=1
isParttime=2
wagePerHr=20
randomCheck=$((RANDOM%3))
if [[ $randomCheck -eq $isPresent ]]
then
	echo "Employee is Present"
	workingHrs=8
elif [[ $randomCheck -eq $isParttime ]]
then
	echo "Employee is Parttime Present"
	workingHrs=8
else
	echo "Employee is Absent"
	workingHrs=0
fi
salary=$(($wagePerHr*$workingHrs))
