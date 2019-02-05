Problem: We use the same level 3 site as the last problem, since this was originally supposed to be the true flag! (see my note in cloud 3)

Process:
This is the same as in the cloud 3, but now it isn’t taking the troll flag anymore.  We need to dig deeper.

Back in the Github page, we look through stage.pl file. Still nothing super interesting that stands out there.

So I decided to look through the github commits and see if there was anything interesting. First one I looked at was “remove sensitive flag that shouldn’t have been checked in” - this was just a red herring. But, within “keep private data private”, we find the flag.

![cloud3.5-github](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud3.5-github.jpg?raw=true)

Flag:

![cloud3.5-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Cloud/Images/cloud3.5-flag.jpg?raw=true)

flag{ThisIsntAGoodPlaceToKeepAPrivateKey}
