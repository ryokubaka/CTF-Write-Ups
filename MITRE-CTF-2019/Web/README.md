# Web Solutions
## Table of Contents
1. [Alan Turing (50 points)](#Alan-Turing)
2. [To Do (100 points)](#To-Do)

# Alan Turing
## Problem
> We are provided with a URL that has a "password recovery" form for Alan Turing.

![recoverypage](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Web/Images/web50turing_main.jpg)

## Process

>BLUF: I was not able to get the flag using method described below, however I believe I was close and just missing one piece.

Using Burp you can send garbage data and intercept the response, then change the values from “false” to all “true”.  After modifying the web response, we can forward it.

![web50turing_intercept](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Web/Images/web50turing_intercept.jpg)

![web50turing_craft](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Web/Images/web50turing_craft.jpg)

However, even doing this, I could not get the site to respond and give me the flag (even though all of the fields recognized the answers as “correct”).. Eventually I just actually answered the questions correctly.  I’m sure there’s a more “cyber" way to do this.

The answer's to this form are: Stoney, St. Michael’s, Science, Marathon, 1, yes, yes

## Flag
MCA{sms_2fa_is_bad_also}

# To Do
## Problem
>Given a simple page with a box and submit button.

![web100todo_main](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Web/Images/web100todo_main.jpg)

## Process
If you enter in text and submit, it redirects you to http://138.247.13.110/todolist/1000. Looking at the URL, I decided to change 1000 to 1, and it took me to a todolist for “Marilyn Monroe”. I immediately figured the task here was to find the flag in (at least) 1000 lists.

I made a new directory and ran “wget http://138.247.13.110/todolist/{1..1000}/, and waiting a minute. After that, it was as easy as “grep MCA{ *”, and I found my flag in list 677.

![web100todo_flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Web/Images/web100todo_flag.jpg)

## Flag
MCA{al3x4_5et_a_r3minder}