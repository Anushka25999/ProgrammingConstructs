#!/bin/bash -x

#program that takes a year as input and outputs the year is a leap year or not a leap year
read -p "Enter a year: " year;
if [ $year -ge 1000 -a $year -le 9999 ]; then
	if [ $(( year % 4 )) -eq 0 ]; then
		echo "$year is a Leap Year";
	elif [ $(( year % 400 )) -eq 0 ]; then
		echo "$year is a Leap Year";
	elif [ $(( year % 100 )) -eq 0 ]; then
		echo "$year is not a Leap Year";
	else
		echo "$year is not a Leap Year";
	fi
fi
