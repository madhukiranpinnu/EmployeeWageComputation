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

##checked for parttime
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
randomCheck=$((RANDOM%3));

if [ $isFullTime -eq $randomCheck ]
then
        empHrs=8;

elif [ $isPartTime -eq $randomCheck ]
then
        empHrs=4;

else
        empHrs=0;
fi

salary=$(($empHrs*$empRatePerHr));

## employee wage in case
isPartTime=1
isFullTime=2
empRatePerHr=20
empCheck=$((RANDOM%3))

case $empCheck in
        $isFullTime)
                empHrs=8
                ;;
        $isPartTime)
                empHrs=4
                ;;
        *)
                empHrs=0
                ;;
esac

salary=$(($empHrs*$empRatePerHr))
 
## caluculating monthly wage
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
totalSalary=0
numWorkingDays=30

for (( day=1; day<=$numWorkingDays; day++ ))
do
        empCheck=$((RANDOM%3));
        case $empCheck in
                $isFullTime)
                        empHrs=8
                        ;;
                $isPartTime)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
        salary=$(($empHrs*$empRatePerHr));
        totalSalary=$(($totalSalary+$salary));
done
