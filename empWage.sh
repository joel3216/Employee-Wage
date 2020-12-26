#! /bin/bash -x

echo "Welcome to Employee Wage Computation"

wagePerHr=20
fullDay=8
halfDay=4
empHrs=0
daysInMonth=20
monthlyWage=0
workedHrs=0
maxHrs=100

for (( i=0; i< $daysInMonth; i++ ))
do

	if [[ $workedHrs -le $maxHrs ]]
	then
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
			workedHrs=$(($workedHrs+$empHrs))
		fi
	else
		break
	fi
	salary=$(($empHrs*$wagePerHr*$isPresent))
	monthlyWage=$(($monthlyWage+$salary))
done
