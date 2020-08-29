#!/bin/bash -x

#Roll a die and find a number between 1 to 6. Repeat and store the result in dictionary
declare -A dice
#Repeat till any one of the number has reached 10 times
for(( i=1; dice[$num]<10; i++ ))
do
	num=$((RANDOM%6+1));
	case $num in
		1)
			dice[$num]=$((++one));
			;;
		2)
			dice[$num]=$((++two));
			;;
		3)
			dice[$num]=$((++three));
			;;
		4)
			dice[$num]=$((++four));
			;;
		5)
			dice[$num]=$((++five));
			;;
		6)
			dice[$num]=$((++six));
			;;
	esac
done
echo "${dice[@]}";

