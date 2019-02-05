Problem: http://neverlanctf.cloud/

![cloud1-problem](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud1-problem.jpg?raw=true)

Process:

The page shows the following, making a clear reference to this probably being a public/open AWS S3 bucket.

With the AWS CLI installed, we can run “aws --no-sign-request s3 ls neverlanctf.cloud” (if we have a an account loaded already, there is no need for the --no-sign-request”.  

![cloud1-powershell](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud1-ps.jpg?raw=true)

We see there is a flag html object in the bucket.  Taking back to our browser and navigating to this object (http://neverlanctf.cloud/flag-e8ff76090aefae7a958175254ccae055ed0ab6c3.html), we find the flag and the location of the next problem.

Flag:

![cloud1-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud1-flag.jpg?raw=true)

flag{ItsNotAsEasyAsItUsedToBeToHaveAPublicBucket}
