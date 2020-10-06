#!/bin/bash -x

echo "welcome to employee wage computation "

##employee attendance to check whether present or absent

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
        echo "Employee is Present";
else
        echo "Employee is Abscent";
fi
## to check daily wage of the employee
isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
        empRatePerHr=20
        empHrs=8
        salary=$(($empHrs*empRatePerHr));
else
        salary=0;
fi
