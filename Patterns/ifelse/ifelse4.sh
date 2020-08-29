#!/bin/bash -x

# To simulate a coin flip and print out "Heads" or "Tails" accordingly
read -p "Enter 1 for Heads and 2 for Tails: " choice;
computer=$(( RANDOM % 2 + 1 ));
if [ $computer -eq 1 ]; then
	echo "Computer chooses heads";
else
	echo "Computer chooses tails";
fi

if [ $computer -eq 1 ] && [ $choice -eq 1 ]; then
	echo "You Won";
elif [ $computer -eq 2 ] && [ $choice -eq 2 ]; then
	echo "You Won";
else
	echo "You Lose";
fi

