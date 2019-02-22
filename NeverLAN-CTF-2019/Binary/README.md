# Binary
## Table of Contents
1. [Binary 1](#Binary-1)
2. [Binary 2](#Binary-2)
3. [Binary 3](#Binary-3)


# Binary 1
## Problem
>A user accidentally installed malware on their computer and now the user database is unavailable. Can you recover the data and the flag?

## Process
We are given an ASCII text file full of numbers, that’s all.

## Flag

# Binary 2
## Problem
>Our lead Software Engineer recently left and deleted all the source code and changed the login information for our employee payroll application. Without the login information none of our employees will be paid. Can you help us by finding the login information?
***Flag is all caps

## Process
We are provided with an EXE file that we will want to debug/reverse engineer.  In a linux box, I ran strings on the file and found a reference to “Password.txt”:

![binary2-strings](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Binary/Images/binary2-strings.jpg?raw=true)

I decided to do a dump of the exe using command “objdump -s Employee_Payroll.exe” and search through the .text section. Right at the top, we can see the flag laid out (need to read from left to right, top down)

## Flag

![binary2-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Binary/Images/binary2-flag.jpg?raw=true)

flag{ST0RING_STAT1C_PA55WORDS_1N_FIL3S_1S_N0T_S3CUR3}

# Binary 3
## Problem
>”Another day, another disgruntled engineer. It seems that the login is working fine, but some portions of the application are broken. Do you think you could fix the the code and retrieve the flag?”

## Process
This one was a doozy for me to figure out. We are provided with a 64 bit ELF LSB file, not stripped. I started with the normal stuff - ran strings on it, cat’d it, etc.
I tried every debugger I could think of, starting off with edb-debugger on Kali, moved to IDA freeware, and then gdb.  IDA was the most useful in learning about what the program is doing and, more importantly, what it’s not doing in this case.  We see there are plenty of functions - I really had little rhyme or reason while poking around, just looking for items of interest. I found that there were 5 functions spelling out “flags”, and a function called “x” that called each one.  Function x is called by d, which calls more critical pieces.

![binary3-ida](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Binary/Images/binary3-ida.jpg?raw=true)

Since IDA only helps us from a static perspective, I wanted to see what the output of ‘x’ is.  I ran “gdb get_flag”, “b main”, and then “run”.  This puts a breakpoint at the start so I can manipulate the execution.  I first ran call x(), but it said it has an unknown return type (possibly void). 

![binary3-gdb-break](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Binary/Images/binary3-gdb-break.jpg?raw=true)

So I decided to print x using “print ((char*(*)()) x)(), and that gave me something of, what I thought was interesting..It outputs 5 sets of 32 bits, one set for each function in functions F/L/A/G/S.

![binary3-gdb-printx](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Binary/Images/binary3-gdb-printx.jpg?raw=true)

Running this through an MD5 decoder, it looks like they’re trolling me…:

![binary3-md5](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Binary/Images/binary3-md5.jpg?raw=true)

Finally, I decided to see what function d would output, since that’s what calls x and it may have more details I can learn from.  Finally, I got the flag!

## Flag

![binary3-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Binary/Images/binary3-flag.jpg?raw=true)

flag{AP1S_SH0ULD_4LWAYS_B3_PR0T3CTED}