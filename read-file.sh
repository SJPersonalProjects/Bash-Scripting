#!/bin/bash

#Reading a file using while loop.

while read line; do
	echo "$line"
done < data_file.txt
