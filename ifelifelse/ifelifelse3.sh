#!/bin/bash -x

#read a number 1, 10, 100, 1000, etc and display unit, ten, hundred... 
read -p "Enter number: " num;
if [ $num -eq 1 ]; then
	echo "Unit";
elif [ $num -eq 10 ]; then
	echo "Ten";
elif [ $num -eq 100 ]; then
        echo "Hundred";
elif [ $num -eq 1000 ]; then
        echo "Thousand";
elif [ $num -eq 10000 ]; then
        echo "Ten Thousand";
elif [ $num -eq 100000 ]; then
        echo "One Hundred Thousand";
elif [ $num -eq 1000000 ]; then
        echo "Million";
elif [ $num -eq 10000000 ]; then
        echo "Ten Million";
elif [ $num -eq 100000000 ]; then
        echo "One Hundred Million";
else
	echo "Invalid";
fi




