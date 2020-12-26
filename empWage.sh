#! /bin/bash -x

echo "Welcome to Employee Wage Computation"

empCheck=$((RANDOM%2))
workHrCheck=$((RANDOM%2))
wagePerHr=20
fullDay=8
halfDay=4
empHrs=0

if [[ $workHrCheck -eq 1 ]]
then
	empHrs=$fullDay
else
	empHrs=$halfDay
fi

salary=$(($empHrs*$wagePerHr*$empCheck))
