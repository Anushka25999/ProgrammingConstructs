#!/bin/bash -x

# Enter three numbers do following arithmetic operations and find the one that is maximum and minimum
read -p "Enter number 1: " a;
read -p "Enter number 2: " b;
read -p "Enter number 3: " c;
max=0;
min=0;
expr1=`expr $a + $b \* $c`;
expr2=`expr $a % $b + $c`;
expr3=`expr $c + $a / $b`;
expr4=`expr $a \* $b + $c`;
if [ $expr1 -gt $expr2 ] && [ $expr1 -gt $expr3 ] && [ $expr1 -gt $expr4 ]; then
	max=$expr1;
	echo "Expression 1 is Maximum";
elif [ $expr2 -gt $expr1 ] && [ $expr2 -gt $expr3 ] && [ $expr2 -gt $expr4 ]; then
	max=$expr2;
	echo "Expression 2 is Maximum";
elif [ $expr3 -gt $expr1 ] && [ $expr3 -gt $expr2 ] && [ $expr3 -gt $expr4 ]; then
        max=$expr3;
	echo "Expression 3 is Maximum";
else
        max=$expr4;
	echo "Expression 4 is Maximum";
fi

if [ $expr1 -lt $expr2 ] && [ $expr1 -lt $expr3 ] && [ $expr1 -lt $expr4 ]; then
	min=$expr1;
        echo "Expression 1 is Minimum";
elif [ $expr2 -lt $expr1 ] && [ $expr2 -lt $expr3 ] && [ $expr2 -lt $expr4 ]; then
        min=$expr2;
        echo "Expression 2 is Minimum";
elif [ $expr3 -lt $expr1 ] && [ $expr3 -lt $expr2 ] && [ $expr3 -lt $expr4 ]; then
        min=$expr3;
        echo "Expression 3 is Minimum";
else
        min=$expr4;
        echo "Expression 4 is Minimum";
fi





