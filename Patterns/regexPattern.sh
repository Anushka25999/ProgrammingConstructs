#!/bin/bash -x

#turn on external globbing
shopt -s extglob
#User registration
read -p "Enter your Last Name " lname

pat="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $lname =~ $pat ]]
then
	echo "Valid Last Name"
else
	echo "Invalid Last Name"
fi
