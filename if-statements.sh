#!/bin/bash

# Finds the age category.

read -p "Hey, tell me your age: " age

if [[ $age -ge 18 ]]; then
	echo "You're an adult."
	
	if [[ $age -ge 60 ]]; then
		echo "You're also a senior citizen"
	else
		echo "You're not a senior citizen yet."
	fi
elif [[ $age -ge 13 ]]; then
	echo "You're a teenager"
else
	echo "You're a child"
fi
