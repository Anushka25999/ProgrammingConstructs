#!/bin/bash -x

echo "Welcome to flip coin Combination"

max_iterations=20

#initialize for singlet
count_heads=0
count_tails=0

for((count=0;$count < $max_iterations;count++));
do
	#get random number between 0,1 and check if its 1
	flip1=$(($RANDOM%2))

	if(($flip1 == 1 ))
	then
		#if its 1 then increase count of heads
		count_heads=$(($count_heads + 1))
	else
		#else increase tails count by 1
		count_tails=$(($count_tails + 1))
	fi
done

#display results percentage
echo "Heads percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_heads} ${max_iterations}")
echo "Tails percentage : " $(awk '{print ($1*100/$2)}' <<< "${count_tails} ${max_iterations}")
