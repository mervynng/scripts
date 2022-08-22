#!/bin/bash
# ECU Script Week 2
# This script makes folders with the mkdir command
# Author: Mervyn Ng
# Original Date: 02 Feb 2022
# Edit 1 - added space for readability 20 Aug 22

# Prompts the user with a predefined script. And saves the variable into folderName
# THe user is able to read what they type

read -p "type the name of the folder you would like to create " folderName

# Makes a directory which is entered by the user

mkdir "$folderName"

exit 0

# References
# R. MCKNIGHT (2022). Understanding and executing scripts that require interactivity. https://courses.ecu.edu.au/groups/15209/discussion_topics/142127?module_item_id=955301