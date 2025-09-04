#!/bin/bash

secret=7
guess=0

echo "Welcome to the Number Guessing Game!"
echo "Try to guess the secret number between 1 and 10"

while [[ $guess -ne $secret ]]; do
	read -p "Enter your guess: " guess

	if [[ $guess =~ ^[0-9]+$ ]]; then #Checks if the input is a number.

		if [[ $guess -lt $secret ]]; then
			echo "Too low! Try again."
		elif [[ $guess -gt $secret ]]; then
			echo "Too high! Try again."
		else
			echo "Congratulations! You've guessed it right."
		fi
	else
		echo "Invalid input. Please enter a number."
		guess=0 #Resets to keep loop running.
	fi
done
