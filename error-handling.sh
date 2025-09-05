#!/bin/bash

# Function to copy a file safely.
copy_file() {
	src=$1
	destination=$2

	# Checks if source file exists.
	if [[ ! -f $src ]]; then
		echo "Error: Source file $src doesn't exist."
		return 1 # Returns the error.
	fi

	# Tries to copy the file.
	cp "$src" "$destination"
	if [[ $? -ne 0 ]]; then
		echo "Error: Failed to copy $src to $destination."
		return 1
	fi

	echo "Success: $src copied to $destination."
	return 0
}

# Main program.
read -p "Enter source file path: " source_file
read -p "Enter destination path: " destination_file

copy_file "$source_file" "$destination_file"

if [[ $? -eq 0 ]]; then
	echo "Operation completed successfully."
else
	echo "Operation failed."
fi
