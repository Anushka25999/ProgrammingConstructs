#!/bin/bash -x

#program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise
read -p "Enter date: " dat;
d=$(date +"%d-%B" -d $dat);
start=$(date +"%d-%B" -d "20-March");
end=$(date +"%d-%B" -d "20-June");
if [ "$d" \>= "$start" ] && [ "$d" \<= "$end" ];
then
	echo "True";
else
	echo "False";
fi 
