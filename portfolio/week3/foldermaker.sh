# ECU Script Week 2
# This script makes folders with the mkdir command
#
# Edit 1 - added space for readability 20 Aug 22
#!/bin/bash

read -p "type the name of the folder you would like to create " folderName

mkdir "$folderName"