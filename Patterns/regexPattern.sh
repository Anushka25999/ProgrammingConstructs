#!/bin/bash -x

# turn on external globbing
shopt -s extglob
# User registration

# First Name
read -p "Enter your First Name " fname

pat="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $fname =~ $pat ]]
then
	echo "Valid Username"
else
	echo "Invalid Username"
fi

# Last Name
read -p "Enter your Last Name " lname

pat1="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $lname =~ $pat1 ]]
then
	echo "Valid Last Name"
else
	echo "Invalid Last Name"
fi

# Email
read -p "Enter your Email " email

pat2="^[0-9[:lower:][:upper:]]+([._+-][0-9[:lower:][:upper:]]+)*@[0-9[:lower:][:upper:]]+.[[:lower:][:upper:]]{2,4}([.][[:lower:][:upper:]]{2,4})?$"

if [[ $email =~ $pat2 ]]
then
	echo "Valid Email Address"
else
	echo "Invalid Email Address"
fi
