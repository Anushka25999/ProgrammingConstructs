#!/bin/bash -x

# Flip coin problem till either Heads or Tails wins 11 times
h=0;
t=0;
while [[ $h -le 11 || $t -le 11 ]]
do
	read -p "Enter 1 for Heads and 2 for Tails: " choice;
	computer=$(( RANDOM % 2 + 1 ));
	if [ $computer -eq 1 ]; then
        	echo "Computer chooses heads";
	else
        	echo "Computer chooses tails";
	fi

	if [ $computer -eq 1 ] && [ $choice -eq 1 ]; then
        	echo "You Won";
		((h++));
	elif [ $computer -eq 2 ] && [ $choice -eq 2 ]; then
        	echo "You Won";
		((t++));
	else
        	echo "You Lose";
	fi
done
