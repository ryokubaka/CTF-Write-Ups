# Web Solutions
## Table of Contents
1. [Cookie Monster](#Cookie-Monster)
2. [Das Blog 1](#Das-Blog-1)
3. [Das Blog 2](#Das-Blog-2)
4. [Dirty Validate](#Dirty-Validate)
5. [React To This](#React-To-This)
6. [Return Of The Sith 1](#Return-Of-The-Sith-1)
7. [SQL Fun 1](#SQL-Fun-1)
8. [SQL Fun 2](#SQL-Fun-2)


# Cookie Monster
## Problem
Leads to a web page.

## Process

When you start digging/inspecting on the website, you find that it loads a cookie with cookie name “Red_Guy’s_Name” and value “NameGoesHere”.  Page has text “He’s my favorite Red guy”

![web-cookiemonster](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Web/Images/web_cookie-monster.jpg?raw=true)

This is an odd one, but if you change the "NameGoesHere" to "Elmo" and refresh the page, you are greeted with the flag.

## Flag
flag{YummyC00k13s}

# Das Blog 1
## Problem
Word on the street, Johnny's got a blog. Seems he doesn't know how to escape his inputs.

## Process
Enter the following into the username field and submit the form:
> ' or 1=1 or ''='

You could also enter the equivalent statement:
> ‘-0||’

You could also use sqlmap:
> sqlmap --wizard,
- It'll ask for the url (-u), then post data (none), injection difficulty (--level/--risk), and how much to enumerate

## Flag
flag{3sc4pe_Y0ur_1npu7s}

Resources:

- https://www.youtube.com/watch?v=glScQ9qqMlI
- http://niiconsulting.com/checkmate/2014/01/from-sql-injection-to-0wnage-using-sqlmap/

![mysqli](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Web/Images/web-sqli.jpg?raw=true)

# Das Blog 2
## Problem
Well, we really showed Johnny. It looks like he made some changes... But he still isn't escaping his inputs. Teach him a lesson.

## Process
The same manual approach from Das Blog 1 will get us default (not admin) access.
sqlmap will pull the blog database entries though

## Flag
flag{Pwn3d_W1th_SQL}

# Dirty Validate
## Problem
To keep my server from doing a lot of work, I made javascript do the heavy lifting of checking a user's password

## Process
Inspecting the HTML shows exactly how username and password are validated, including where they are checked.

For username, navigate to https://challenges.neverlanctf.com:1135/webhooks/get_username.php and you get an array of valid users.  I grabbed the one with no spaces, JimmyOneShoe.
For password, navigate to https://challenges.neverlanctf.com:1135/webhooks/get_password.php?user=JimmyOneShoe

Unfortunately this gave me base64 encoded string, which turned out to be “Wrong user”.  Moving on, I tried the other ones and landed on Dr. Whom. This gave me the follow base 64 decoded message, which is the flag.

Note, even with a space and period in his name, the following structure was what worked.  When I tried user=’Dr. Whom’, it gave me a blank screen.
https://challenges.neverlanctf.com:1135/webhooks/get_password.php?user=Dr.%20Whom

## Flag
ZmxhZ3tEMG4ndF83cnVzN19KU30= ---> flag{D0n't_7rus7_JS}


# React To This
## Problem
Leads to a web page with a navigation bar and not much else.  

## Process
Inspecting the page does not show any glaring issues, however if you dig into the local storage you will find a key called “persist:root” with value {"admin":"false","_persist":"{\"version\":-1,\"rehydrated\":true}"}”.  Simply change the “admin”:”false” to “true” and refresh.  In the navigation there is now an “Admin Page” with the flag.


## Flag
flag{s3cur3_y0ur_s3ss10ns}


# Return Of The Sith 1
## Problem
Given an ELF binary.  

## Process
A login is easily found by running “cat get_flag” and the username (admin) and password (a2VlcCBsb29raW5nLCBub3QgdGhlIGZsYWc=). However, when we run the program, we get “you are now logged in…” and it exits.

## Flag

/// INCOMPLETE ///


# SQL Fun 1
## Problem
“REPORT: 'My Customer forgot his Password. His Fname is Jimmy. Can you get his password for me? It should be in the users table'”

Note: There is a webpage with an input box and a submit button, that’s all.

## Process
This is a simple SQL select statement based on knowledge.  They’re just looking for the proper command, which is: SELECT * FROM users WHERE fname='Jimmy'

## Flag
flag{SQL_F0r_Th3_W1n}


# SQL Fun 2
## Problem

## Process
- We will want to join the users table and the passwd table, but there’s got to be a primary key that is shared to link the two.  We run “SELECT * from Users” and “SELECT * from passwd” and find they are probably tying the ID in Users to the “User_ID” column.
- We run SELECT * FROM users WHERE lname=’Miller’ and grab his ID of 5. Then tie it together:
   - SELECT * FROM passwd JOIN users ON passwd.user_id=users.id WHERE user_id=5

We get a base64 encoded flag.

## Flag
flag{W1ll_Y0u_J01N_M3?}
