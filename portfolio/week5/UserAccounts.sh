#!/bin/bash
# A script to format AWK
# Author: Mervyn Ng
# Date: 22 Aug 22
#
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

echo ""
echo "User Accounts from etc/passwd:" 

awk 'BEGIN { 
      
    FS=":"; 
      
    print "______________________________________________________________________________________________________________________"; 
      
    print "| \033[34mUsername\033[0m         | \033[34mUserID\033[0m         | \033[34mGroupID\033[0m        | \033[34mHome\033[0m                             | \033[34mShell\033[0m                       |"; 
      
} 
      
{ 
      
    printf("| \033[33m%-16s\033[0m | \033[35m%-14s\033[0m | \033[35m%-14s\033[0m | \033[35m%-32s\033[0m | \033[35m%-27s\033[0m |\n", $1, $3, $4, $6, $7); 
      
} 
      
END { 
      
    print("______________________________________________________________________________________________________________________"); 
      
}' /etc/passwd 

awk 'BEGIN { 
      
    FS=":"; 
      
    print "______________________________________________________________________________________________________________________"; 
      
    print "| \033[34mUsername\033[0m         | \033[34mUserID\033[0m         | \033[34mGroupID\033[0m        | \033[34mHome\033[0m                             | \033[34mShell\033[0m                       |"; 
      
} 
      
{ 
      
    printf("| \033[33m%-16s\033[0m | \033[35m%-14s\033[0m | \033[35m%-14s\033[0m | \033[35m%-32s\033[0m | \033[35m%-27s\033[0m |\n", $1, $3, $4, $6, $7); 
      
} 
      
END { 
      
    print("______________________________________________________________________________________________________________________"); 
      
}' /etc/passwd > passwdInput.txt 

echo "Here all all users who have /bin/bash/ as a shell"
echo "______________________________________________________________________________________________________________________"

# Get all users who have /bin/bash/ as a shell
grep '\/bin\/bash' passwdInput.txt
echo "______________________________________________________________________________________________________________________"

# Reference:
# R. MCKNIGHT. (2022) Introduction to AWK and concepts related to text processing using AWK. https://courses.ecu.edu.au/courses/13892/pages/5-dot-4-introduction-to-awk-and-concepts-related-to-text-processing-using-awk?module_item_id=955330
#