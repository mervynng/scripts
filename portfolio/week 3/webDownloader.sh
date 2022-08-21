#!/bin/bash
# wGet Web Downlaoder
# Author: Mervyn Ng
# Date: 21 Aug 2022
# Corrected variables for readability

# Declare variables

running=y


# Prompt for User Input for a Webpage

read -p "Type the name of the website or file you would like to download " url
read -p "Enter the Log filename to save the download into " downFile
read -p "Enter the folder to save the download into " downFolder

# Use wget to retrive the URL
# Output wget information to a TXT File

while [ $running != n ]; 
    do
        echo wget $url -o '/'$downFolder/$downFile

        mkdir $downFolder
        cd $downFolder
        wget $url -o $downFile
        cd ..

        read -p "Do you want to Download another Internet resource. Type \"exit\" to close this program " running

        #expected break point

        
            if [ $running == exit ];
                then
                    break
                            fi

        read -p "Type the name of the website or file you would like to download " url
        read -p "Enter the Log filename to save the download into " downFile
        read -p "Enter the folder to save the download into " downFolder

done

exit 0

# References
# GeeksforGeeks.com (2022) Bash Scripting – While Loop. https://www.geeksforgeeks.org/bash-scripting-while-loop/
# R. MCKNIGHT (2022)An internet downloader using loops. https://courses.ecu.edu.au/courses/13892/pages/3-dot-5-an-internet-downloader-using-loops?module_item_id=955314