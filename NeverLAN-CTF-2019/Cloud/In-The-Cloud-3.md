# Problem: 
Navigate to the address provided after solving cloud 2.

![cloud3-problem](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud3-problem.jpg?raw=true)

## Process:

Peculiarly, there is a “Fork me on Github!” link in the top right of this page. When we go to that page, we can see this sites git page, to include the flag page!

![cloud3-github](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud3-github.jpg?raw=true)

The source code isn’t any help:

![cloud3-flagsource](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud3-flagsource.jpg?raw=true)

So we copy the object/flag URL and append it to the level3 bucket in our browser instead of viewing it through github, and find the real flag.

## Flag:

![cloud3-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud3-flag.jpg?raw=true)

flag{ThisIsntTheRealFlagEither}

Note: Funny thing happened when I solved this - I thought it was odd they'd name the flag that way, almost as if that wasn't the true flag.  While for this CTF it WAS correct, it was not supposed to be.  After speaking with an admin, he opened up cloud 3.5 which is what Cloud 3 was supposed to be.  Glad I caught the mistake!
