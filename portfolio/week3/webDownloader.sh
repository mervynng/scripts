#!/bin/bash
# wGet Web Downlaoder
# Author: Mervyn Ng
# Date: 21 Aug 2022
# Corrected variables for readability
# Modified to incorporate cleaner breakpoints

# Prompt for User Input for a Webpage
# Choice to exit and break early with only one loop iteration

while :;
do

read -p "Type the file name of the  download URL or type \"exit\" to quit: " url

if [ "$url" == "exit" ];then
break;
fi

read -p "Input the download directory to save the file to: " directory

filename=$(eval echo $directory)

echo $filename

wget -P $filename $url

done

exit 0

# References
# GeeksforGeeks.com (2022) Bash Scripting – While Loop. https://www.geeksforgeeks.org/bash-scripting-while-loop/
# R. MCKNIGHT (2022) An internet downloader using loops. https://courses.ecu.edu.au/courses/13892/pages/3-dot-5-an-internet-downloader-using-loops?module_item_id=955314
# S. DHIR (2022) Email explaining wGET while LOOP Error.