#!/bin/bash -x

#turn on external globbing
shopt -s extglob
#User registration

#First Name
read -p "Enter your First Name " fname

pat="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $fname =~ $pat ]]
then
	echo "Valid Username"
else
	echo "Invalid Username"
fi

#Last Name
read -p "Enter your Last Name " lname

pat1="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $lname =~ $pat1 ]]
then
	echo "Valid Last Name"
else
	echo "Invalid Last Name"
fi
