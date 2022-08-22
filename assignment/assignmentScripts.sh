#!/bin/bash
# Assignment 4 - Based on and incorporating wGEt Web Downloader
# wGet Web Downloader
# Author: Mervyn Ng
# Date: 22 Aug 2022
# Corrected variables for readability
# Modified to incorporate cleaner breakpoints


# Sets Initial default downloader to the Cyber.Gov website for Essential 8 ISM Maaping

url="https://www.cyber.gov.au/acsc/view-all-content/publications/essential-eight-ism-mapping"

echo -e ""
echo "This script downloads the ASCS Essential 8 Maturity Table as a default, and presents the information in a readable manner."
echo "You can choose however to download another website. To exit type \"exit\". "
echo Select an Option:
echo -e "\033[35;1;4m1. Download ACSC Essential 8 ISM Controls"
echo "2. Download a File"

# Prompt for User Input for a Webpage

echo -e "\033[34;1;4mPlease enter an option > \e[0m"
read -p "" userOption

# The user can choose to exit at this point with an exit code

    if [ "$userOption" == "exit" ];then
    break;

    exit 0
    fi

# Runs the choices the user has chosen 

if test $userOption -eq 1; then
    wget "$url"

    # Start the GREP SED commands to read the downloaded file titled essential-eight-ism-mapping
    # Use Echo to echo formal table
    # Greps the unique controls to each ISM Maturity Level, and remove HTML tags <p> and <strong>
    
    echo -e "Mitigation Strategy\t\tMaturity Level Two\t\tMaturity Level Three"
    echo "____________________________________________________________________________________________________________________________________________________________________"
    echo -e -n "\033[35;1;4mApplication control\e[0m          "; cat essential-eight-ism-mapping | grep -Ei "0843, 1490" | sed -e 's/<strong>//g ; s/<\/strong>//g' | sed 's/<p>//g ; s/<\/p>//g' | tr '\n' ' '

    echo -e ""
    echo -e ""

    echo -e -n "\033[34;1;4mPatch applications\e[0m           "; cat essential-eight-ism-mapping | grep -Ei "1690, 1691" | sed -e 's/<strong>//g ; s/<\/strong>//g' | sed 's/<p>//g ; s/<\/p>//g' | tr '\n' ' '

    echo -e ""
    echo -e ""

    echo -e -n "\033[35;1;4mConfigure MS Office Settings\e[0m "; cat essential-eight-ism-mapping | grep -Ei "1671" | sed -e 's/<strong>//g ; s/<\/strong>//g' | sed 's/<p>//g ; s/<\/p>//g' | tr '\n' ' '

    echo -e ""
    echo -e ""

    echo -e -n "\033[34;1;4mUser Application Hardening\e[0m   "; cat essential-eight-ism-mapping | grep -Ei "1486, 1485" | sed -e 's/<strong>//g ; s/<\/strong>//g' | sed 's/<p>//g ; s/<\/p>//g' | tr '\n' ' '
    
    echo -e ""
    echo -e ""

    echo -e -n "\033[35;1;4mRestrict Admin Priviledges\e[0m   "; cat essential-eight-ism-mapping | grep -Ei "1507, 1647" | sed -e 's/<strong>//g ; s/<\/strong>//g' | sed 's/<p>//g ; s/<\/p>//g' | tr '\n' ' '

    echo -e ""
    echo -e ""

    echo -e -n "\033[34;1;4mPatch Operating Systems\e[0m     "; cat essential-eight-ism-mapping | grep -Ei "1694, 1695" | sed -e 's/<strong>//g ; s/<\/strong>//g' | sed 's/<p>//g ; s/<\/p>//g' | tr '\n' ' '

    echo -e ""
    echo -e ""

    echo -e -n "\033[35;1;4mMulti-Factor Authentication\e[0m "; cat essential-eight-ism-mapping | grep -Ei "1504, 1679" | sed -e 's/<strong>//g ; s/<\/strong>//g' | sed 's/<p>//g ; s/<\/p>//g' | tr '\n' ' '

    echo -e ""
    echo -e ""

    echo -e -n "\033[34;1;4megular backups\e[0m            "; cat essential-eight-ism-mapping | grep -Ei "1511, 1515" | sed -e 's/<strong>//g ; s/<\/strong>//g' | sed 's/<p>//g ; s/<\/p>//g' | tr '\n' ' '
    echo -e ""
    echo -e ""

    echo "____________________________________________________________________________________________________________________________________________________________________"

    elif test $userOption -eq 2; then
    
    ./webDownloader.sh
   
    else
    
    # If a number is entered which is not from [1-2] it exits and no commands are run. A reminder is given to the user to enter a command from 1-3
    # Script can be improved either with an exit function, or loop-back to capture correct input, without running the password check again.
    # Future work

    echo -e "\033[35;1;4mMPlease pick a number from 1 - 2\e[0m"    
    fi
    exit 1

    
exit 1
fi


exit 0

# References
# GeeksforGeeks.com (2022) Bash Scripting – While Loop. https://www.geeksforgeeks.org/bash-scripting-while-loop/
# R. MCKNIGHT (2022) An internet downloader using loops. https://courses.ecu.edu.au/courses/13892/pages/3-dot-5-an-internet-downloader-using-loops?module_item_id=955314
# S. DHIR (2022) Email explaining wGET while LOOP Error.
