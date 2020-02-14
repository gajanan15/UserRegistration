#!/bin/bash -x
shopt -s extglob
echo "Welcome To User Registration Form"

echo "Enter User Name: "
read firstName
validPattern="^[A-Z]{1}[a-z]{2,}$"

if [[ $firstName =~ $validPattern ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
