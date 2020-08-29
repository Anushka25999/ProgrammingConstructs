#!/bin/bash -x

#Program that a command-line argument n and prints the nth harmonic number.
read -p "Enter number: " n;
harmonic=1;

#loop to apply the forumula
#Hn = H1 + H2 + H3 ... + Hn-1 + Hn-1 + 1/n
for (( i=2; i<=$n; i++ ))
do
	harmonic=`echo - | awk -v h=$harmonic -v j=$i '{print h+1/j}'`;
done
echo "$n th Harmonic number is $harmonic";
