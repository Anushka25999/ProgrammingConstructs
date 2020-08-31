#!/bin/bash -x

echo "Welcome to arithmetic program for computation"

# take 3 inputs
read -p "enter 3 numbers" a b c

declare -A compute
compute[1]=$((a+b*c))
compute[2]=$((a*b+c))
compute[3]=$((c+a/b))
compute[4]=$((a%b+c))

count=0
#read value from dictionary into array
for x in ${compute[@]}
do
	arr[((count++))]=$x
done
