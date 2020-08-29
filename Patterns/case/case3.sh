#!/bin/bash -x

#read a number 1, 10, 100, 1000, etc and display unit, ten, hundred...
read -p "Enter number: " num;
case $num in
1)
	echo "Unit"
	;;
10)
	echo "Ten"
	;;
100)
        echo "Hundred"
	;;
1000)
        echo "Thousand"
	;;
10000)
        echo "Ten Thousand"
	;;
100000)
        echo "One Hundred Thousand"
	;;
1000000)
        echo "Million"
	;;
10000000)
        echo "Ten Million"
	;;
100000000)
        echo "One Hundred Million"
	;;
*)
	echo "Invalid"
	;;
esac




