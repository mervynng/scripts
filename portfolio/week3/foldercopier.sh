#!/bin/bash 
# Week 2 Script - Copies a folder if it identifies a director/folder exists.
# If it does it copies all files recursively into a new folder
# Author: Mervyn Ng
# Date: 06 Feb 2022
# Modified: 20 Aug 2022 - Merged changes to new repository and copied over
      
read -p "type the name of the folder you would like to copy: " folderName
      
#if the name is a valid directory

 if [ -d "$folderName" ]; then

#Debug
#echo $folderName

#copy it to a new location
      
read -p "type the name of the destination folder: " newFolderName

#copy recursively full folder  

cp -r "$folderName" "$newFolderName"

else 
      
#otherwise, print an error    
    echo "I couldn't find that folder"
fi

exit 0

# References
# MCKNIGHT, R. (2022) Understanding and execute scripts that require decision making https://courses.ecu.edu.au/groups/15209/discussion_topics/142129?module_item_id=955303