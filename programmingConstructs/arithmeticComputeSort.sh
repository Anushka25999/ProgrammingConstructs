#!/bin/bash -x

echo "Welcome to arithmetic program for computation"

# take 3 inputs
read -p "enter 3 numbers" a b c

compute1=$((a+b*c))
compute2=$((a*b+c))
compute3=$((c+a/b))

echo $compute1
echo $compute2
echo $compute3
