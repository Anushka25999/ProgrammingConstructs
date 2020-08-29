#!/bin/bash -x

#Program that computes a factprial of a number taken as input.
read -p "Enter a number: " n;
fact=1;
for (( i=$n; i>=1; i-- ))
do
	fact=$((fact * i));
done
echo "Factorial of $n is $fact";
