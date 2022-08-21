# ECU Script to show exchange rate

#!/bin/bash
apiPath = "https://api.exchangerate-api.com/v4/latest/EUR"
fileName="index.html"
Browsers= "google-chrome firefox"

#Create a Browser object

if $Browsers
then
google-chrome $fileName&
else
firefox $fileName&
fi

#Initilise a while loop

while :;
do
#<--code-->
done

GBP=$((curl -s https://api.exchangerate-api.com/v4/latest/EUR | jq '.rates.GBP') | sed 's/"//g')

cat > $fileName <<- _EOF_
#<-- html code goes here ------>
_EOF_
done #close the WHILE loop

Exit 0
