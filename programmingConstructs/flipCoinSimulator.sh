#!/bin/bash -x

echo "Welcome to flip coin simulator"

count_heads=0
count_tails=0

while true
do
	if(($(($RANDOM%2)) == 1 ))
	then
		count_heads=$(($count_heads + 1))
	else
		count_tails=$(($count_tails + 1))
	fi
done

echo "Heads won $count_heads times"
echo "Tails won $count_tails times"
