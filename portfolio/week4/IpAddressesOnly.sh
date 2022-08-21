#!/bin/bash
# A sed use case to filter out lines
# Author: Mervyn Ng
# Date: 21 Aug 22
# 



#!/bin/bash      
#get info about networking from the ifconfig command 
      
net_info="$(ifconfig)" 
      
#parse out the ip address lines using sed 
      
addresses=$(echo "$net_info" | sed -n '/inet / { 
      
s/inet/IP Address:/ 

#Capitalises Subnet Mask, and inserts new line

s/netmask/\n\t\tSubnet Mask:/ 

#Capitalises broadcast, and inserts new line

s/broadcast/\n\t\tBroadcast Address:/ 
      
p

}')

#Assign new variable

#test echo

IpAddress=$(echo "$addresses" | sed -n '/IP Address/{!d;p}')

#format output

echo -e "IP addresses on this computer are:\n$IpAddress"

exit 0

# References:
# R. MCKNIGHT (2022) Write scripts that can parse text in a meaningful way. https://courses.ecu.edu.au/courses/13892/pages/4-dot-5-write-scripts-that-can-parse-text-in-a-meaningful-way?module_item_id=955323