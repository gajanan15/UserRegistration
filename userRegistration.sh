#!/bin/bash -x
shopt -s extglob
echo "Welcome To User Registration Form"

echo "Enter User First Name And Last Name: "
read firstName lastName
validPattern="^[A-Z]{1}[a-z]{2,}$"

if [[ $firstName =~ $validPattern && $lastName =~ $validPattern ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
