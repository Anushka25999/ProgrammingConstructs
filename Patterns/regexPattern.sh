#!/bin/bash -x

#turn on external globbing
shopt -s extglob
#User registration
read -p "Enter your First Name " fname

pat="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $fname =~ $pat ]]
then
	echo "Valid Username"
else
	echo "Invalid Username"
fi
