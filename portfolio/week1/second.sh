# Second Script
# This script prints the first variable $1
# For example: second.sh Angela
# Output Line 1 -  "Hi There"
# Output Line 2 - "It's good to see you Angela!"
# Mervyn Ng - 20 Aug 2022

#!/bin/bash

echo "Hi there!"

# Prints "It's good to see you adn the name entered"
echo "It's good to see you $1!"

exit 0

# References
# R. MCKNIGHT (2022). Write and execute simple shell scripts. https://courses.ecu.edu.au/courses/13892/pages/1-dot-4-write-and-execute-simple-shell-scripts?module_item_id=955297