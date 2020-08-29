#!/bin/bash -x

#program to generate birthday month of 50 individuals between year 92 and 93. Find all the individuals having birthdays in the same month
declare -A month
counter=0;
for(( i=1; i<=50; i++ ))
do
	num=$((RANDOM%12+1));
	case $num in
		1)
                        month[ $num ]=$((++jan))
                        ;;
 		2)
                        month[ $num ]=$((++feb))
                        ;;
 		3)
                        month[ $num ]=$((++mar))
                        ;;
 		4)
                        month[ $num ]=$((++apr))
                        ;;
 		5)
                        month[ $num ]=$((++may))
                        ;;
 		6)
                        month[ $num ]=$((++june))
                        ;;
		7)
                        month[ $num ]=$((++july))
                        ;;
		8)
                        month[ $num ]=$((++aug))
                        ;;
		9)
                        month[ $num ]=$((++sep))
                        ;;
		10)
                        month[ $num ]=$((++oct))
                        ;;
		11)
                        month[ $num ]=$((++nov))
                        ;;
		12)
                        month[ $num ]=$((++dec))
                        ;;
	esac
done
echo "${month[@]}"

