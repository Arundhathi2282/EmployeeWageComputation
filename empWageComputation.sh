#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
isPresent=1
wagePerHr=20
randomCheck=$((RANDOM%2))
if [[ $randomCheck -eq $isPresent ]]
then
	echo "Employee is Present"
	fullDayHr=8
else
	echo "Employee is Absent"
fi
salary=$(($wagePerHr*$fullDayHr))
echo "Employee is full time present and his salary is : $salary"
