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

# Phone Number
read -p "Enter your Phone Number " phone

pat3="^[0-9]{2,4}[[:space:]][7-9]{1}[0-9]{9}$"

if [[ $phone =~ $pat3 ]]
then
	echo "Valid Phone Number"
else
	echo "Invalid Phone Number"
fi

# Password
read -p "Enter your Password " password

#minimum 8 characters
pat4="^(.{8,}$)"

# should have at least 1 upper case
pat4="^.*[[:upper:]]{1,}.*(.{8,}$)"

# should have at least 1 numeric number
pat4="^(.*[[:upper:]]{1,}.)*(.*[0-9]{1,}.)*(.{8,}$)"

#has exactly 1 special character
pat4="^(.*[[:upper:]]{1,}.)*(.*[0-9]{1,}.)*(.*[@$!%*#?&])?(.{8,}$)"

if [[ $password =~ $pat4 ]]
then
	echo "Valid Password"
else
	echo "Invalid Password"
fi
