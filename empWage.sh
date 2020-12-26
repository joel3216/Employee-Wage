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

function getEmpHrs(){
	local fullDay=$1
	local halfday=$2
	fullTimeCheck=$((RANDOM%2))
	case $fullTimeCheck in
		1)
			empHrs=$fullDay
			;;
		0)
			empHrs=$halfDay
			;;
	esac
	echo $empHrs

}

for (( i=0; i< $daysInMonth; i++ ))
do

	if [[ $workedHrs -le $maxHrs ]]
	then
		isPresent=$((RANDOM%2))
		if [[ $isPresent -eq 1 ]]
		then
			empHrs=$( getEmpHrs $fullDay $halfDay )
			workedHrs=$(($workedHrs+$empHrs))
		fi
	else
		break
	fi
	salary=$(($empHrs*$wagePerHr*$isPresent))
	monthlyWage=$(($monthlyWage+$salary))
done
