#! /bin/bash -x

echo "Welcome to Employee Wage Computation"

wagePerHr=20
fullDay=8
halfDay=4
empHrs=0
daysInMonth=20
monthlyWage=0

for (( i=0; i< $daysInMonth; i++ ))
do
	isPresent=$((RANDOM%2))
	workHrCheck=$((RANDOM%2))

	if [[ $isPresent -eq 1 ]]
	then
		case $workHrCheck in
			1)
				empHrs=$fullDay
				;;
			0)
				empHrs=$halfDay
				;;
		esac
	fi

	salary=$(($empHrs*$wagePerHr*$isPresent))
	monthlyWage=$(($monthlyWage+$salary))
done
