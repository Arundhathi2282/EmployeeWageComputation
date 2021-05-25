#!/bin/bash -x
function Workinghours()
{
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
hrs=$(($hrs+$workingHrs))
day=$(($day+1))
if [[ $hrs -eq 100 || $day -eq 20 ]]
then
	echo "Working Hours : $hrs "
	break
fi
done
}
wagePerHr=20
Workinghours
