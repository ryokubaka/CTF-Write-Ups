# Forensics Solutions
## Table of Contents
1. [Return of the Sith Part One](#return-of-th-sith-part-one)
2. [Return of the Sith Part Two](#return-of-the-sith-part-two)

# Return of the Sith Part One
## Problem
We are provided with a VM.

## Process
This challenge wants us to recover the VNC password wo we can see how weak it is.  By default, VMC passwords are stored in $HOME/.vnc/passwd and in plaintext.  In our case, the password in encrypted:

![forensics-1-cat](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Forensics/Images/forensics-1-cat.jpg?raw=true)

## Flag

![forensics-1-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Forensics/Images/forensics-1-flag.jpg?raw=true)

darthvad

# Return of the Sith Part Two
## Problem
Same VM

## Process
The instructions say specifically to watch what you edit, so we do the “unset HISTFILE” to ensure that any commands entered are not recorded in the HIST file and do not overwrite what is already there.  I had to download a new VM because I did not do this in the last exercise

## Flag

/// INCOMPLETE ///
