# Trivia Solutions
## Table of Contents
1. [64-Characters](#64-Characters)
2. [All-Around-The-Globe](#All-Around-The-Globe)
3. [AWS-Shoot](#AWS-Shoot)
4. [Bash-All-The-Things-P1](#Bash-All-The-Things-P1)
5. [Bash-All-The-Things-P2](#Bash-All-The-Things-P2)
6. [Beep-Boop](#Beep-Boop)
7. [Bucket-Name=Domain-Name](#Bucket-Name=Domain-Name)
8. [C'mere-Piggy](#C'mere-Piggy)
9. [Let's-Get-On-The-Right-PATH](#Let's-Get-On-The-Right-PATH)
10. [Sea-Quail](#Sea-Quail)
11. [Simple-Storage-And-Service](#Simple-Storage-And-Service)
12. [So-Many-Policies](#So-Many-Policies)
13. [Sorry-You-Don't-Have-Privileges-For-This](#Sorry-You-Don't-Have-Privileges-For-This)
14. [SQL-Trivia-1](#SQL-Trivia-1)
15. [SQL-Trivia-2](#SQL-Trivia-2)
16. [With-Some-Milk](#With-Some-Milk)

# 64-Characters
## Problem
“A group of similar binary-to-text encoding schemes that represent binary data in an ASCII string format by translating it into a radix-64 representation.”

## Flag
base64

# All-Around-The-Globe
## Problem
What type of namespace prevents two AWS S3 buckets having the same name?

## Flag
Global

# AWS-Shoot
## Problem
What does AWS stand for?

## Flag
Amazon Web Services

# Bash-All-The-Things-P1
## Problem
When bash is invoked as an interactive login shell it first reads and executes commands from this file.

## Flag
bash_profile

# Bash-All-The-Things-P2
## Problem
When bash is invoked as an interactive login shell it first reads and executes commands from this file.

## Flag
.bashrc

# Beep-Boop
## Problem
“A standard used by websites to communicate with web crawlers and other web robots. The standard specifies how to inform the web robot about which areas of the website should not be processed or scanned”

## Flag
robots.txt

# Bucket-Name=Domain-Name
## Problem
Here's some info for future challenges. Fill in the blank.
When hosting a site as an S3 bucket, the bucket name must ____ the domain name.

## Flag
match

# C'mere-Piggy
## Problem
“Why make bacon when you can make a cipher instead? If only I could remember what it's called…”

## Flag
pigpen

# Let's-Get-On-The-Right-PATH
## Problem
What is $PATH on linux?
Don't think too hard on this one :)

## Flag
environmental variable

# Sea-Quail
## Problem
“A domain-specific language used in programming and designed for managing data held in a relational database management system, or for stream processing in a relational data stream management system.”

## Flag
SQL

# Simple-Storage-And-Service
## Problem
What is the common name for a single element of Amazon Simple Storage Service?

## Flag
s3 bucket

# So-Many-Policies
## Problem
What are the policies called that you use to grant access to your AWS S3 buckets and objects to the general public?

## Flag
ACL

# Sorry-You-Don't-Have-Privileges-For-This
## Problem
What does sudo stand for?

# Flag
super user do

# SQL-Trivia-1
## Problem
“The oldest SQL Injection Vulnerability. The flag is the vulnerability ID.”

## Process
Check [CVE DB](https://www.cvedetails.com/vulnerability-list.php?vendor_id=0&product_id=0&version_id=0&page=1&hasexp=0&opdos=0&opec=0&opov=0&opcsrf=0&opgpriv=0&opsqli=1&opxss=0&opdirt=0&opmemc=0&ophttprs=0&opbyp=0&opfileinc=0&opginf=0&cvssscoremin=0&cvssscoremax=0&year=0&month=0&cweid=0&order=2&trc=7462&sha=1b24fccb15090079e49c0131be821c96dc2f001c), sort by CVE ID.

## Flag
[CVE-2000-1233](https://www.cvedetails.com/cve/CVE-2000-1233/)

# SQL-Trivia-2
## Problem
“In MSSQL Injection Whats the query to see what version it is?”

## Flag
select @@version

# With-Some-Milk
## Problem
“A small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing.”

## Flag
cookie
