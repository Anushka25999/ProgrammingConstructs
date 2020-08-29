#!/bin/bash -x

# Program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n till 256 is reached
read -p "Enter a number: " n;
power=1;
i=0;
while [ $i -le $n ]
do
        echo "$i        $power";
        power=$(( 2*$power ));
	if [ $power -eq 256 ]; then
		break;
	fi
	((i++));
done
