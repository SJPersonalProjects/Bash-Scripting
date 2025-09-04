#!/bin/bash

read -p "How many folders ya wanna create: " folders_number

read -p "Also tell me the folder name: " folder_name

for ((i=1; i<=$folders_number; i++)) do
	mkdir $folder_name$i
done
