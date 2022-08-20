#!/bin/bash 
# setPassword.sh - A script demonstrating user inputs in two variables folderName and Silent Password entry.
# Author: Mervyn Ng
# 06 Feb 2022
# 20 Aug 2022 - Edits to include copy to new folder
# 20 Aug 2022 - Insert breakpoint to improve output

# Creates a variable $foldername with User input
# Read Prompt with -p and assigns it to variable folderName
read -p "Please Enter a Folder Name > " folderName
     
mkdir "$folderName" 

# Silently register user input
read -sp "Type your Password (Hidden)" password

# Create user input and output to variable with file and folder
# echo  $password> ./$folderName/secret.txt

# Hash input with 256SHA and output to text file version 1 into correct folder
echo  $password | sha256sum > ./$folderName/secret.txt

#Insert break to output
echo " "

# Displays clean exit code 0 - Best practice

exit 0

# References
# MCKNIGHT, R. (2022) 2.2 Writing for Interactive Scripts https://courses.ecu.edu.au/courses/13892/pages/2-dot-2-writing-more-interactive-scripts?module_item_id=955302