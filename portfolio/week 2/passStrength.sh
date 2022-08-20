#!/bin/bash 
# Password strength check using GREP for a combination of the followings:
# 1. Checks length of password is greater or equal to 8
# 2. One numeral digit
# 3. One upper case character
# 4. One lower case character
# 5. any one of special characters symbols
# 
echo "enter the password" 
      
read password 
      
len="${#password}" 
      
if test $len -ge 8 ; then 
      
    echo "$password" | grep -q [0-9] 
      
    if test $? -eq 0 ; then 
      
    echo "$password" | grep -q [A-Z] 
      
    if test $? -eq 0 ; then 
      
    echo "$password" | grep -q [a-z] 
      
    if test $? -eq 0 ; then 
      
    echo "$password" | grep -q [$,@,#,%] 
     
    if test $? -eq 0 ; then 
      
    echo "Strong password" 
      
        else 
      
        echo "weak password include special chars" 
      
    fi 
      
    else 
      
    echo "weak password include lower case char" 
      
    fi 
     
    else 
      
    echo "weak password include capital char" 
      
    fi 
      
    else 
      
    echo "please include the numbers in password it is weak password" 
      
    fi 
      
else 
      
echo "password length should be greater than or equal 8 hence weak password" 
      
fi 
     
					