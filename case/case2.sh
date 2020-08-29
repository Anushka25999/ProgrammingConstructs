#!/bin/bash -x

#read a number and display the weekday
read -p "Enter number from 1 to 7: " num;
case $num in
1)
	echo "Sunday"
	;;
2)
	echo "Monday"
	;;
3)
        echo "Tuesday"
	;;
4)
        echo "Wednesday"
	;;
5)
        echo "Thursday"
	;;
6)
        echo "Friday"
	;;
7)
	echo "Saturday"
	;;
*)
	echo "Invalid Number"
	;;
esac

