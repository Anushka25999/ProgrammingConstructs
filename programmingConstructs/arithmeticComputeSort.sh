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

# sort in descending order
for ((i = 0; i<$count; i++))
do
    for((j = 0; j<$count-i-1; j++))
    do
        if (( ${arr[j]} < ${arr[$((j+1))]} ))
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Results in Descending Order:"
echo ${arr[@]}

#sort in ascending order
for ((i = 0; i<$count; i++))
do
    for((j = 0; j<$count-i-1; j++))
    do
        if (( ${arr[j]} > ${arr[$((j+1))]} ))
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Results in Ascending Order :"
echo ${arr[@]}

