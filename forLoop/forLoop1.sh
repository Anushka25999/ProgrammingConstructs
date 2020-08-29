#!/bin/bash -x

#Program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n
read -p "Enter a number: " n;
power=1;
for (( i=0; i<=$n; i++ ))
do
	echo "$i	$power";
	power=$(( 2*$power ));
done

