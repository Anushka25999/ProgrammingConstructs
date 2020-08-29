#!/bin/bash -x

#gambler starts with total Rs 100
total=100;
count=0;
bet=0;

#places Re 1 bet until he or she goes broke or reaches the goal of Rs 200
while [[ $total -ne 0 || $total -ne 200 ]]
do
	i=$((RANDOM%2));
	if [ $i -eq 1 ]; then
		echo "You Won";
		((total++));
		((count++));
	else
		echo "You Lose";
		((total--));
	fi
	((bet++));
done
echo "Number of times won : $count;
echo "Number of times bet made : $bet;
