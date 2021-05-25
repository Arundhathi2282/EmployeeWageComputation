#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
isPresent=1
randomCheck=$((RANDOM%2))
if [[ $randomCheck -eq $isPresent ]]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
