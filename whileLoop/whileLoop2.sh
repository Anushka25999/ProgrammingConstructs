#!/bin/bash -x

#Find the magic number
echo "Think a number between 1 to 100";
n=100;
i=1;

while [ $i -le $n ]
do
	N=$(((n+i)/2));
	echo "Enter 1 if the number is less than $N";
	echo "Enter 2 if the number is greater than $N";
	echo "Enter any number if the number is equal to $N";
	read -p "Enter: " val;
	if [ $val -eq 1 ]; then
		n=$N;
	elif [ $val -eq 2 ]; then
		i=$N;
	else
		echo "$N is your Magic Number";
		break;
	fi
done
