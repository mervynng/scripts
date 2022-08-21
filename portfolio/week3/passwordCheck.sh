#!/bin/bash
# passwordCheck.sh - A script to check a User's Password input against a stored Hash Value
# Author: Mervyn Ng
# 06 Feb 2022
# 20 Aug 2022 - Migrated and commented with improvements to functionality
# 20 Aug 2022 - Completed Debug and implemented clean-up code
# 21 Aug 2022 - Added Green Colour to Access Granted

#Request User Input
echo "Type the Password (Hidden) "
read -s password

#Enters User Input $UserPassword to a file passHash.txt with sha256
echo $password | sha256sum > ./passHash.txt

#reads the newly generated password hash and assigns a variable, then reads the current/recorded password hash into a variable
passHashVar=$(cat ./passHash.txt)
currentPassword=$(cat ./secret.txt)

# Debugging variable to check values
#echo $passHashVar "this is the passHashVar"
#echo $currentPassword "this is the currentPassword"

#Compares the both hashes to determine if the newly read password, matches the current setpassword

if [[ "$passHashVar" == "$currentPassword" ]]; then
        echo -e "\033[32;1;4mAccess Granted \e[0m"
        echo " "
        
        # Deletes the passHash in clean-up
        rm passHash.txt
    exit 0
        
    else
        echo "Access Denied"
        
        # Deletes the passHash in clean-up
        rm passHash.txt
    exit 1
fi



# References
# MCKNIGHT, R. (2022 Aug) ECU Canvas - Understand and execute scripts that require decision making. https://courses.ecu.edu.au/groups/15209/discussion_topics/142129?module_item_id=955303