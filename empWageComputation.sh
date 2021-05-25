#!/bin/bash -x
wagePerHr=20
randomCheck=$((RANDOM%3))
case $randomCheck in
		1) echo "Employee is Full Time Present"
		   workingHrs=8
			;;
		2) echo "Employee is Part Time Present"
		   workingHrs=4
			;;
		*) echo "Employee is Absent"
		   workingHrs=0
			;;
esac
salary=$(($wagePerHr*$workingHrs))
