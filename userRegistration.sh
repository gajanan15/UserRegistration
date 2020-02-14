#!/bin/bash
shopt -s extglob
echo "Welcome To User Registration Form"

function validPatternCheck() {
	userInput=$1
	checkPattern=$2
	if [[ $userInput =~ $checkPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

echo "Enter User First Name:"
read firstName

validNamePattern="^[A-Z]{1}[a-z]{2,}$"
validPatternCheck "$firstName" $validNamePattern

echo "Enter User Last Name:"
read lastName

validPatternCheck "$lastName" $validNamePattern

echo "Enter Email Id:"
read email

emailPattern="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
validPatternCheck "$email" $emailPattern

echo "Enter Mobile No:"
read mobileNumber

validNumberPattern="^[0-9]{1,3}[[:space:]][0-9]{10}$"
validPatternCheck "$mobileNumber" $validNumberPattern

echo "Enter Password: "
read password

validPasswordPattern="^[a-zA-Z]{8,}"
validPatternCheck "$password" $validPasswordPattern
