# Cloud Solutions
## Table of Contents
1. [In The Cloud 1](#In-The-Cloud-1)
2. [In The Cloud 2](#In-The-Cloud-2)
3. [In The Cloud 3](#In-The-Cloud-3)
4. [In The Cloud 3.5](#In-The-Cloud-3.5)

# In The Cloud 1
## Problem: 
http://neverlanctf.cloud/

![cloud1-problem](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud1-problem.jpg?raw=true)

## Process:

The page shows the following, making a clear reference to this probably being a public/open AWS S3 bucket.

With the AWS CLI installed, we can run “aws --no-sign-request s3 ls neverlanctf.cloud” (if we have a an account loaded already, there is no need for the --no-sign-request”.  

![cloud1-powershell](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud1-ps.jpg?raw=true)

We see there is a flag html object in the bucket.  Taking back to our browser and navigating to this object (http://neverlanctf.cloud/flag-e8ff76090aefae7a958175254ccae055ed0ab6c3.html), we find the flag and the location of the next problem.

## Flag:

![cloud1-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud1-flag.jpg?raw=true)

flag{ItsNotAsEasyAsItUsedToBeToHaveAPublicBucket}

# In The Cloud 2
## Problem: 
We navigate to the URL provided after solving cloud 1.

![cloud2-problem](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud2-problem.jpg?raw=true)

## Process:

Similar to 1, we see reference to AWS S3 bucket but it hints that the bucket is only public to other AWS accounts.  We can run “aws configure” and load security credentials in order to navigate this bucket (I used my personal AWS account to do this, instructions here).  Once we’ve done this, we can run the same AWS CLI command, but with the new bucket: 

![cloud2-powershell](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud2-ps.jpg?raw=true)

Navigating to the new flag object gives us our flag.

## Flag:

![cloud2-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud2-flag.jpg?raw=true)

flag{MakeSureYouUnderstandTheDocumentation}

# In The Cloud 3
## Problem: 
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


### Note: 
Funny thing happened when I solved this - I thought it was odd they'd name the flag that way, almost as if that wasn't the true flag.  While for this CTF it WAS correct, it was not supposed to be.  After speaking with an admin, he opened up cloud 3.5 which is what Cloud 3 was supposed to be.  Glad I caught the mistake!


# In The Cloud 3.5
## Problem: 
We use the same level 3 site as the last problem, since this was originally supposed to be the true flag! (see my note in cloud 3)

## Process:

This is the same as in the cloud 3, but now it isn’t taking the troll flag anymore.  We need to dig deeper.

Back in the Github page, we look through stage.pl file. Still nothing super interesting that stands out there.

So I decided to look through the github commits and see if there was anything interesting. First one I looked at was “remove sensitive flag that shouldn’t have been checked in” - this was just a red herring. But, within “keep private data private”, we find the flag.

![cloud3.5-github](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud3.5-github.jpg?raw=true)

## Flag:

![cloud3.5-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud3.5-flag.jpg?raw=true)

flag{ThisIsntAGoodPlaceToKeepAPrivateKey}
