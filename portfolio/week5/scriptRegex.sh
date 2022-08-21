#!/bin/bash
#Create a script named “regexes.sh” and write grep -r statements to search your work for the following patterns:

# all sed statements

grep -r "sed -"

# all lines that start with the letter m
grep -r "^m"

# all lines that contain three digit numbers

grep -r '[0-9]\{3\}'

# Any lines with at least 3 digit numbers & Starting with 3 Digits
grep -r -E '[^0-9]'[0-9]{3}'


grep -r -E '[0-9]+([^0-9]+[0-9]+){4}

# a number with at least one digit, preceded by at least one non-digit character. 
# We then repeat this 4 times to get 5 numbers separated by non-digits.
[^0-9]+[0-9]+ 

# all echo statements with at least three words

grep -r 'echo' -r #word regex

# all lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password).

grep -P '(?=^.{8,255}$)(?=^[^\s]*$)(?=.*\d)(?=.*[A-Z])(?=.*[a-z])'