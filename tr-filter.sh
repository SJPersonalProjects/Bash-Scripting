#!/bin/bash

# tr filter example.

read -p "Enter your name: " name
echo "$name"

echo "After tr filter is used: $name" | tr 'a-z' 'A-Z'
