#! /bin/bash -x

echo "Welcome to Employee Wage Computation"

empCheck=$((RANDOM%2))
workHrCheck=$((RANDOM%2))
wagePerHr=20
fullDay=8
halfDay=4
empHrs=0

case $workHrCheck in
	1)
		empHrs=$fullDay
		;;
	0)
		empHrs=$halfDay
		;;
esac

salary=$(($empHrs*$wagePerHr*$empCheck))
