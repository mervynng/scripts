#!/bin/bash
# This scripts firstly checks that the input password matches the stored password, then provides menu options to:
# 1. Create a folder
# 2. Copy a folder
# 3. Set a Password
#
# Author: Mervyn Ng
# 20 Aug 2022 - 1st version

./passwordCheck.sh

if [[ "$?"=="0" ]]; then
    
echo Select an Option:
echo 1. Create a folder
echo 2. Copy a folder
echo 3. Set a password

read -p "Please enter an option > " userOption

# Var Check
echo you have entered "$userOption"
    if [[ "$userOption"=="1" ]]; then
    ./foldermaker.sh
    elif [[ "userOption"=="2" ]]; then
    ./foldercopier.sh
    elif [[ "userOption"=="3" ]]; then
    ./setPassword.sh
    else
    echo "Please pick a number from 1 - 3"    
    fi
    exit 0

else
    






exit 1
fi

