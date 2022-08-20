#!/bin/bash
# This scripts firstly checks that the input password matches the stored password, then provides menu options to:
# 1. Create a folder
# 2. Copy a folder
# 3. Set a Password
#
# Author: Mervyn Ng
# 20 Aug 2022 - 1st version
# 20 Aug 2022 - Completed Debug and Script working

./passwordCheck.sh

if [[ "$?" == "0" ]]; then
    
echo Select an Option:
echo 1. Create a folder
echo 2. Copy a folder
echo 3. Set a password

read -p "Please enter an option > " userOption

# Var Check and informs user of their option
echo You have entered "$userOption"

# Uses the test and else if conditional function

if test $userOption -eq 1; then
    ./foldermaker.sh
    elif test $userOption -eq 2; then
    ./foldercopier.sh
    elif test $userOption -eq 3; then
    ./setPassword.sh
    else
    
    # If a number is entered which is not from [1-3] it exits and no commands are run. A reminder is given to the user to enter a command from 1-3
    # Script can be improved either with an exit function, or loop-back to capture correct input, without running the password check again.
    # Future work

    echo "Please pick a number from 1 - 3"    
    fi
    exit 0

else
    
exit 1
fi

# References
#
## References
# MCKNIGHT, R. (2022 Aug) ECU Canvas - Write Case statements to "control program flow. https://courses.ecu.edu.au/courses/13892/pages/2-dot-5-write-case-statements-to-control-program-flow?module_item_id=955305
# DHIR, S. (2022 Aug) Email to Mervyn Ng, dated 20 Aug 2022. "Re: Just working on old scripts - week2"
# www.Linuxhint.com (2022). Bash conditional statements https://linuxhint.com/bash_conditional_statement/