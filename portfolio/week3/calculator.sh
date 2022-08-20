#!/bin/bash
# Simple Calculator
# Author: Mervyn Ng
# Date: 20 Aug 2022
# Modified: 21 Aug 2022 - Corrected code output and reduced lines and complexity

echo "Simple Bash Calculator"

#initialise
result=0

#Request user input

read -p "Enter first number " n1
read -p "Enter second number " n2


# Menu and result appears in
# Addition in Blue 
# Subtractions in Greem
# Multiplications in Red
# Division in Purple

echo -e "\033[34;1;4m1.Addition"
echo -e "\033[32;1;4m2.Subtraction"
echo -e "\033[31;1;4m3.Multiplication"
echo -e "\033[35;1;4m4.Division\e[0m"
echo -e "Enter choice"
read choice

case $choice in
1)result=$(echo " $n1 + $n2" | bc -l)
echo -e "Addition is =" "\033[34;1;4m$result";;

2)result=$(echo "$n1 - $n2" | bc -l)
echo -e "Subtraction is =" "\033[32;1;4m$result";;

3)result=$(echo "$n1 * $n2" | bc -l)
echo -e "Multiplication is =" "\033[31;1;4m$result";;

4)result=$(echo "$n1 / $n2" | bc -l)
echo -e "Division is =" "\033[31;1;4m$result\e[0m]";;

*)echo "Invalid choice try again"
esac

exit 0

# References
# lazyakshay (2018). calculator.sh https://gist.github.com/lazyakshay/fa09a5d9e5b869f197d67d65928be358