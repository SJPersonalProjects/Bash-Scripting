#!/bin/bash

# Creating a user and adding it in the system with home directory.

read -p "Hey, type the username you wanna add in the system: " username

sudo useradd -m $username

echo "$username has been added. Home directory is also created."
