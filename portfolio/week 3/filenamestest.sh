#!/bin/bash
#myArray=$(cat ${@})

for str in $(cat ${@}); do
    #test array input
    #echo $str

    if [ -f "str" ]; then
        echo "$str is a file"
    elif [ -d "$str" ]; then
        echo "$str is a directory"
    else
        echo "$str I don't know that that is"
    fi
done
exit 0