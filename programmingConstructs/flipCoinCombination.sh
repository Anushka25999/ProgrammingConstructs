#!/bin/bash -x

echo "Welcome to flip coin Combination"

if(($(($RANDOM%2)) == 1 ))
then
	echo "Heads is winner"
else
	echo "Tails is winner"
fi
