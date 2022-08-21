#!/bin/bash
# Fruit Loops Week 3
# Author: Mervyn Ng
# Date: 21 Aug 2022
# Purpose: Demonstrate a For Do Loop, over an array

# Declare an array called 'basket'
# Put fruits in basket

basket=(Apple Mango Strawberry Orange Bananna)

# For all fruits (string text) in basket array print the output with the format

for i in "${basket[@]}";do
 echo "FRUIT: $i"
done

exit 0
