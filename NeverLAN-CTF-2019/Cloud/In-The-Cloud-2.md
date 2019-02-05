# Problem: 
We navigate to the URL provided after solving cloud 1.

![cloud2-problem](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud2-problem.jpg?raw=true)

## Process:

Similar to 1, we see reference to AWS S3 bucket but it hints that the bucket is only public to other AWS accounts.  We can run “aws configure” and load security credentials in order to navigate this bucket (I used my personal AWS account to do this, instructions here).  Once we’ve done this, we can run the same AWS CLI command, but with the new bucket: 

![cloud2-powershell](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud2-ps.jpg?raw=true)

Navigating to the new flag object gives us our flag.

## Flag:

![cloud2-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud2-flag.jpg?raw=true)

flag{MakeSureYouUnderstandTheDocumentation}
