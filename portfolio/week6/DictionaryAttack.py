#!/usr/bin/python3
# Brute Force Attack Phython script
# Author: Mervyn Ng
# Date: 22 Aug 22
# Merge python and opensource files to incorporate BruteForce
# To use this code you must enter the password at line 31 for variable $password
# This then uses and Md5 to encode, or a hash of your choice to generate the hash
# Following this it will iterate and try to brute force it using the current encoding ascii - UTF-8
 
encoding = "ascii" # utf-8 for unicode support

from hashlib import md5
from time import time
from string import printable
from itertools import product, count

# Defines the encoded password

def passwords(encoding):
    chars = [c.encode(encoding) for c in printable]
    for length in count(start=1):
        for pwd in product(chars, repeat=length):
            yield b''.join(pwd)

# The compares the hashes genrated by the password

def crack(search_hash, encoding):
    for pwd in passwords(encoding):
        if md5(pwd).digest() == search_hash:

            # On successful match return value
            return pwd.decode(encoding)

if __name__ == "__main__":
    encoding = 'ascii'  # utf-8 for unicode support
    # Insert Password to be cracked here
    password = 'ExamplePassword'

    # Specify the hash type here SHA1 SHA256 etc
    password_hash = md5(password.encode(encoding)).digest()

    # Generates the statistics including time, cracked password and the time of completion.
    start = time()
    cracked = crack(password_hash, encoding)
    end = time()
    print(f"Password cracked: {cracked}")
    print(f"Time: {end - start} seconds.")


#open the wordlist
#with open("wordlist.txt", "r") as wordlist:
    #repeat for each word
#    for word in wordlist.readlines():
#       word = word.rstrip()
        #hash the word
#        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
#        print(f"Trying password {word}:{wordlistHash}")
#        #if the hash is the same as the correct password's hash then we have cracked the password!
#        if(wordlistHash == passwordHash):
#            print(f"Password has been cracked! It was {word}")
#            break


# References:
# R.MCKNIGHT (2022). Write scripts in other languages for other platforms. https://courses.ecu.edu.au/groups/15209/discussion_topics/142133?module_item_id=955340
# Username:hjpotter92. Brute-force Hash Cracker. https://codereview.stackexchange.com/questions/187830/brute-force-hash-cracker
# W.STANDLEY (2022). Write scripts in other languages for other platforms. https://courses.ecu.edu.au/groups/15209/discussion_topics/142133?module_item_id=955340
