#!/bin/bash

myArray=$(cat ${@})

#currentPassword=$(cat ./secret.txt)

for str in $(cat ${@}); do
    echo $str
       #if [ -f "i" ]; then
            #echo "$i is a file"
        #elif [ -d "$i" ]; then
        #    echo "$i is a directory"
        #else
        #   echo "$i I don't know that that is"
        #fi
done 

#for f in * ;

#do stat "$f"

#done

#exit 0