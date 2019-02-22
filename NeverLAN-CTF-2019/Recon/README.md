# Recon Solutions
## Table of Contents
1. [Filling A Need](#Filling-A-Need)
2. [Let's Go Way Back](#Let's-Go-Way-Back)
3. [Teach Them To Hack](#Teach-Them-To-Hack)
4. [Unexpected Intruder](#Unexpected-Intruder)

# Filling A Need
## Problem
This organizations creation was announced Mon Sep 24 2001
What is the full name of the organization?

## Process
Googlez.  After trying every variation of Department of Homeland Services (the Bush speech on Sep 24, 2001 is the number one hit on Google), I looked for organizations related to cyber security and found our answer.

## Flag
OpenWebApplicationSecurityProject

# Let's Go Way Back
## Problem
Back in the day, Zesty hid a flag in the first version of our website.

## Process
The name of the challenge is a hint - so we use the WayBackMachine to view the history of the neverlanctf.com website.  I dug through source code, tried to find tiny artifacts - nothing.  Then I noticed that the background image of the matrix code is static, so I downloaded the image to see if anything stood out. Lo and behold, there’s a string that is a different color and stands out.

## Flag

![wayback-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Recon/Images/recon-wayback.jpg?raw=true)

TheMatreixIsReal!!!

# Teach Them To Hack
## Problem
In 2018 NeverlanCTF was one of the Keynotes for a security conference.

There is a video of it on youtube.

I remember seeing a flag. This one is not as easy as you think.

## Process
This one is in fact.. as easy as you may think :P

Some googling will show that NeverLAN crew spoke at SaintCon in 2018.  Upon searching the name of their speech, we can find the [keynote video](https://www.youtube.com/watch?v=1wthauUWsGI) from the conference. Around the 1:50 mark is where we see the flag presented.

## Flag
flag{N3v3r_g0nna_g1v3_y0u_up}

# Unexpected Intruder
## Problem
Occurring in Chicago, Illinois, United States, on the evening of November 22. There was an interruption like nothing we had ever seen before.
What was the name of the Intruder?

## Process
Some fancy googling for “november 22 chicago intruder” comes up with articles regarding this case.

## Flag
flag{Max_Headroom}
