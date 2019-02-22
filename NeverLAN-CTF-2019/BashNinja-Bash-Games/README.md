# Forensics Solutions
## Table of Contents
1. [Bash 1](#Bash-1)
2. [Bash 2](#Bash-2)
3. [Bash 3](#Bash-3)
4. [Bash 4](#Bash-4)
5. [Bash 5](#Bash-5)
6. [Bash 6](#Bash-6)
7. [Bash 7](#Bash-7)
8. [Bash 8](#Bash-8)
9. [Bash 9](#Bash-9)
10. [Bash 10](#Bash-10)

# Bash 1
## Problem: 

ssh -p 3333 neverlan@157.230.73.80
Password = neverlan

## Solution:

cat welcome.txt

## Flag:

act-with-honor-and-honor-will-aid-you


# Bash 2
## Problem:

ssh -p 3333 level2@157.230.73.80
Password: act-with-honor-and-honor-will-aid-you

## Process:

 - Use 'ls -la' to view all files in home directory.
 - cat .honor-code.txt
 
## Flag:
 
 the-only-path-to-honor-is-to-stick-to-your-chosen-code

# Bash 3
## Problem:

ssh -p 3333 level3@157.230.73.80
Password: the-only-path-to-honor-is-to-stick-to-your-chosen-code

## Process:

- cat canyoufindme.txt | grep level
 
## Flag:
 
child-of-honor


# Bash 4
## Problem:

ssh -p 3333 level4@157.230.73.80
Password: child-of-honor

## Process:

- strings random | grep level

 
## Flag:

only*hack^things%you$own


# Bash 5
## Problem:

ssh -p 3333 level5@157.230.73.80
Password: only*hack^things%you$own

## Process:

- file nextlevel
- cp nextlevel nextlevel.gz
- gunzip nextlevel.gz
- cat nextlevel

## Flag:

on-my-honor-i-will-do-my-best

# Bash 6
## Problem:

ssh -p 3333 level6@157.230.73.80
Password: on-my-honor-i-will-do-my-best

## Process:

- scp -P 3333 level6@157.230.73.80:~/Syl.jpg
- View the image on your local machine
 
## Flag:

have-you-memorized-the-code-yet

# Bash 7
## Problem:

ssh -p 3333 level7@157.230.73.80
Password: have-you-memorized-the-code-yet

## Process:

- cat level7.txt | base64 -d
 
## Flag:

white-hats-have-values-and-rules

# Bash 8
## Problem:

ssh -p 3333 level8@157.230.73.80
Password: white-hats-have-values-and-rules

## Process:

- cat level8.txt | base64 -d > somefile
- Run somefile through a recursive unzipper script ** to be added/reference **
    - Alternatively, could manually unzip by determining the compression via 'file somefile' and adding the extension
 
## Flag:

my-wit-ran-out-5-levels-ago

# Bash 9
## Problem:

ssh -p 3333 level9@157.230.73.80
Password: my-wit-ran-out-5-levels-ago

## Process:

- ls -la
- cat .clue
  - Encryption password is level9please
- openssl enc -d base64 -in level9.enc -out t.enc
  - Have to decode from base64 first
- openssl enc -d -aes256-cbc -in t.enc -out t.txt
 
## Flag:

please-someone-help

# Bash 10
## Problem:

ssh -p 3333 level10@157.230.73.80
Password: please-someone-help

## Process:

- ssh -p 3333 157.230.73.80 -l level9 -t "cat final.txt"

## Flag:

i-am-now-a-child-of-honor
