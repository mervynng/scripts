#!/bin/bash
# A script to format AWK

# Example AWKS
#
# Show all strings starting with "st"
# awk '/^st/' /etc/group
#
# Use field separator ":", print the first FIELD, and PIPE that to head -4 (shows the first 4 lines of the field)
# awk -F: '{print $1}' /etc/group | head -4
#
#
# Show the third field, only when it's greater than 1000
# Shows fields when it's USER Groups, not System Groups
# awk -F: '$3 > 1000' /etc/group 
#
# Show files which "! - Don't" end in a ":" the "$" means ends. ":$" means ends in a colon
# Shows groups with members
# awk '! /:$/' /etc/group 

echo "Google Server IPs:" 
      
awk 'BEGIN { 
      
    FS=":"; 
      
    print "________________________________"; 
      
    print "| \033[34mServer Type\033[0m | \033[34mIP\033[0m |"; 
      
} 
      
{ 
      
    printf("| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2); 
      
} 
      
END { 
      
    print("________________________________"); 
      
}' input.txt 
     


# Reference:
# R. MCKNIGHT. (2022) Introduction to AWK and concepts related to text processing using AWK. https://courses.ecu.edu.au/courses/13892/pages/5-dot-4-introduction-to-awk-and-concepts-related-to-text-processing-using-awk?module_item_id=955330
#