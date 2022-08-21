#!/bin/bash
# filenames.sh Week 3 Exercise to input a filenames and read a list from a file
# Mandatory input is another arguement
# Author: Mervyn Ng
# Date: 21 Aug 2022

# Checks initial script for minimum arguement and exits with warning

if (( $#!=1 )); then 
      
    #Print an error and exit 
      
    echo "Error, provide a filename" && exit 1 
      
fi 


    for str in $(cat ${1}); do
       if [ -f "str" ]; then
            echo "$str is a file"
        elif [ -d "$str" ]; then
            echo "$str is a directory"
        else
            echo "$str I don't know that that is"
        fi
    done 

exit 0


# Reference
# Veronica STORK (2019). Bash Array - How to Declare an Array of Strings in a Bash Script.https://www.freecodecamp.org/news/bash-array-how-to-declare-an-array-of-strings-in-a-bash-script/#:~:text=To%20declare%20your%20array%2C%20follow%20these%20steps%3A%201,using%20quotes%2C%20but%20with%20no%20commas%20between%20them
# Zoe GEORGE (2022). Scripting Languages Unit Blog. https://courses.ecu.edu.au/groups/15209/discussion_topics/142496
# 