#!/bin/bash -x

#Program that reads 5 Random 2 Digit values,then find their sum and the average
for (( i=1; i<=5; i++ ))
do
	rand=$(( 10+RANDOM%90 ));
	sum=$(( $sum + $rand ));
done
average=$(( $sum/5 ));
echo "Sum is $sum and Average is $average";

