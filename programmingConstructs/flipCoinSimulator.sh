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

	#if count of tails reaches 21
	if (($count_tails == 21))
	then
		if(( $count_tails == $count_heads ))
		then
			echo "Its a tie"
			break;
		fi
		#then display that tails won x times
		echo 'tails won by'$(($count_tails-$count_heads)) 'times'
		break;
	fi

	#if count of heads reaches 21 
	if (($count_heads == 21))
	then
		#then display heads won 21 times
		echo 'heads won by'$(($count_tails-$count_heads)) 'times'
		break;
	fi
done
