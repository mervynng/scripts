#!/bin/bash 
# Debugging error.sh script
# Author: Mervyn Ng
# Date: 20 Aug 2022
# Initial version: Case Syntax checks for condition true, then finally a catch all at the end.
      
secret='shhh' #Don't tell anyone! 
      
#if the user types in the correct secret, tell them they got it right! 
      
if [ "$secret" = "$REPLY" ]; then 
      
    echo "You got it right!" 
      
    correct=true 
      
else     echo "You got it wrong :(" 
      
    correct=false 
      
fi 
      
read -s -p "what's the secret code?" 
      
echo 
      
case "$correct" in 
      
true) 
      
    echo "you have unlocked the secret menu!" 
      
    #TODO: add a secret menu for people in the know. 
      
    ;; 

      
*)
      
    echo "Go Away!" #people who get it wrong need to be told to go away! 
      
    ;; 

esac 
     