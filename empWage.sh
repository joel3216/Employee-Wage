#! /bin/bash -x

echo "Welcome to Employee Wage Computation"

empCheck=$((RANDOM%2))
wagePerHr=20
fullDay=8

salary=$(($fullDay*$wagePerHr*$empCheck))
