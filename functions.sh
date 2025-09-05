#!/bin/bash

# A function to display a menu.

show_menu() {
	echo "=============================="
	echo "     Simple Calculator     "
	echo "=============================="
	echo "Addition"
	echo "Subtraction"
	echo "Multiplication"
	echo "Division"
	echo "Exit"
}

# A function to perform calculation.
calculate() {
	read -p "Enter first number: " number_one
	read -p "Enter second number: " number_two

	sign=$1

	if [[ $sign == "+" ]]; then
		echo "$number_one + $number_two = $((number_one + number_two))"
	elif [[ $sign == "-" ]]; then
		echo "$number_one - $number_two = $((number_one - number_two))"
	elif [[ $sign == "*"  ]]; then
		echo "$number_one * $number_two = $((number_one * number_two))"
	else
		echo "$number_one / $number_two = $((number_one / number_two))"
	fi
}

while true; do
	show_menu
	
	read -p "Select your operation: " operation

	if [[ $operation == "Addition" || $operation == "addition" ]]; then
		calculate "+"
	elif [[ $operation == "Subtraction" || $operation == "subtraction" ]]; then
		calculate "-"
	elif [[ $operation == "Multiplication" || $operation == "multiplication" ]]; then
		calculate "*"
	elif [[ $operation == "Division" || $operation == "division" ]]; then
		calculate "/"
	elif [[ $operation == "Exit" || $operation == "exit" ]]; then
		echo "Program has been exit."
		break
	else
		echo "Please select the valid option from the list above."
	fi
done

