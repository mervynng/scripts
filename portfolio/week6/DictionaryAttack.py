#!/usr/bin/python3
# Brute Force Attack Phython script
# Author: Mervyn Ng
# Date: 22 Aug 22
# Merge python and opensource files to incorporate BruteForce

encoding = "ascii" # utf-8 for unicode support

from hashlib import md5
from time import time
from string import printable
from itertools import product, count


#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

from hashlib import md5
from time import time
from string import printable
from itertools import product, count


def passwords(encoding):
    chars = [c.encode(encoding) for c in printable]
    for length in count(start=1):
        for pwd in product(chars, repeat=length):
            yield b''.join(pwd)


def crack(search_hash, encoding):
    for pwd in passwords(encoding):
        if md5(pwd).digest() == search_hash:
            return pwd.decode(encoding)


if __name__ == "__main__":
    encoding = 'ascii'  # utf-8 for unicode support
    password = 'pwww'
    password_hash = md5(password.encode(encoding)).digest()

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
