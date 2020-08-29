#!/bin/bash -x

#reads 5 random 3 digit values and then outputs the minimum and the maximum value
max=0;
min=1000;
for (( i=1; i<=5; i++ ))
do
        rand=$(( 100+RANDOM%900 ));
        if [ $rand -ge $max ];
	then
		max=$rand;
	elif [ $rand -le $min ];
	then
		min=$rand;
	fi
done
echo "Maximum = $max and Minimum = $min";

