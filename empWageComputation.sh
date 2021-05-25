#!/bin/bash -x
wagePerHr=20
declare -a array
read -p "Enter a num : " num
for((i=1;i<=$num;i++))
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
for i in ${!array[@]}
do
        echo "Day $i = ${array[$i]}"
done
echo "Total wage is : $salary"


