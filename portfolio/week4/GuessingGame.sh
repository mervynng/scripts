#!/bin/bash
# This game uses getNumber() Function to guess a number that is 42
#
# Author: Mervyn Ng
# 21 Aug 2022
# Modifications: Changed from -eg -le modules to using variables
# Added break to ensure that 42 stops the game
#
      
printError() 
      
{ 
      
    echo -e "\033[31mERROR:\033[0m $1" 
      
} 
            
#This function will get a value between the 2nd and 3rd arguments 
 
getNumber() 
      
{ 
      
    read -p "$1: " 
      
    while (( $REPLY < $2 || $REPLY> $3 )); do 
      
        printError "Input must be between $2 and $3" 
      
        read -p "$1: " 
      
        
    done 
      
} 

# correctNumber is declared as a variable, which controls the while loop
# As long as the correct number is not equal to 42, the code continues running
#

    while [ "$correctnumber" != "42" ]; do
    
        getNumber "please type a number between 1 and 100" 1 100
 
        if (( $REPLY < "42" )); then
            echo "Too low!"
        elif (( $REPLY > "42" )); then
            echo "Too High!"
        else
              correctnumber=”$REPLY”
              echo “Correct!”
              break
        fi
    done

   exit 0


      
     

# References
# R. MCKNIGHT(2022). Understand and Execute Scripts that use multiple functions. https://courses.ecu.edu.au/courses/13892/pages/4-dot-2-understand-and-execute-scripts-that-use-multiple-functions?module_item_id=955320
