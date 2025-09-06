#!/bin/bash

# Example of xargs filter.
echo "Enter filenames (separated by space): "
read filenames

#Creates empty files using xargs.
echo $filenames | xargs touch

echo "Files created"
ls $filename


echo "===================================================="
read -p "Enter numbers in the form of jagged array: " jagged_array

$jagged_array | tr ' ' '\n' | xargs -l3


