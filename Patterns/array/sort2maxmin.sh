#!/bin/bash -x

#function to find 2nd largest
function print2largest(){
        array=("$@")
	echo "secondGreatest = ${array[8]};"
}

#function to find 2nd smallest
function print2smallest(){
         array=("$@")
        echo "secondSmallest = ${array[1]};"
}


n=10
i=1
while [ $i -le $n ]
do
        array[i]=$((RANDOM%900+100));
        ((i++));
done

# Performing Bubble sort
for ((i=1; i<=$((${#array[@]}-1)); i++))
do
	for((j=$((i+1)); j<=${#array[@]}; j++))
        do
        	if [ ${array[i]} -gt ${array[j]} ]
                then
                	# swap
                        temp=${array[i]}
                        array[$i]=${array[j]}
                        array[$j]=$temp
                fi
        done
done
echo "Array in sorted order :"
echo ${array[@]}


print2largest "${array[@]}";
print2smallest "${array[@]}";

