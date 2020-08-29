#!/bin/bash -x

#program that takes a input and determines if the number is a prime.
read -p "Enter a positive integer: " n;
flag=0;
for (( i=2; i<=$n/2; i++ ))
do
	if [ $((n%i)) -eq 0 ]; then
		flag=1;
		break;
	fi
done

if [ $flag -eq 0 ]; then
	echo "$n is a prime number";
else
	echo "$n is not a prime number";
fi

