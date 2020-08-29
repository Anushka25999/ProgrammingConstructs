#!/bin/bash -x

#prime factorization program to store prime factors of number n into an array and display the output
read -p "Enter number: " n;
counter=1;
for (( i=2; i<=$n; i++ ));do
    while [ $(($n%$i)) == 0 ];do
	echo $i
	array[((counter++))]=$i
        n=$(($n/$i))
    done
done
echo "${array[@]}"
