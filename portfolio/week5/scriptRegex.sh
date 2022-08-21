#!/bin/bash
#Create a script named “regexes.sh” and write grep -r statements to search your work for the following patterns:

# all sed statements

grep -r "sed -"

# all lines that start with the letter m
grep -r "^m"

# all lines that contain three digit numbers

grep -r '[0-9]\{3\}'

# all echo statements with at least three words

grep -r 'echo' -r #word regex

# all lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password).

grep -P '(?=^.{8,255}$)(?=^[^\s]*$)(?=.*\d)(?=.*[A-Z])(?=.*[a-z])'