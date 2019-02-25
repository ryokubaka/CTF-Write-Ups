# Grab Bag Solutions
## Table of Contents
1. [Nyan (50 points)](#Nyan)
2. [Rick Roll Do Not Listen (100 points)](#Rick-Roll)
3. [Journey To The Center Of The File (100 points)](#Journey-To-The-Center-Of-The-File)

# Nyan
## Problem
> ssh ctf@138.247.13.114 - takes you to a neverending nyancat animation

![nyan](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Grab-Bag/Images/grabbag50-nyan.jpg)

## Process

I first attempted to manipulate the ssh to break out and navigate local directory, but did not succeed.

I decided to see if I could extract any of the information from the nyancat animation in plaintext, so I ran
> ssh ctf@138.247.13.114 > meow.txt

Within meow.txt, I can see the flag.

![nyanflag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/MITRE-CTF-2019/Grab-Bag/Images/grabbag50-flag.jpg)

## Flag
MCA{Airdaepohh8Sha}

# Rick-Roll
## Problem
We are given a RR.wav file.

## Process
If you DO attempt to listen to it, you'll find that it is, in fact, a rick roll.

I immediately think the flag may be hidden using steganography, so I used an [online resource](https://futureboy.us/stegano/decinput.html). Uploading the file, I got the flag.

## Flag
MCA{asFSA9123mflZ01f}

# Journey To The Center Of The File
## Problem
This is a traditional multi-compressed file.

## Process
Wrote a shell script to iterate through the compression:

```
#!/bin/bash

function flagunzip {
echo UNZIP
mv flag flag.zip
unzip flag.zip
#mv flag.unzipped flag
}

function flagbunzip {
echo BZIP2
bzip2 -d flag
rm flag
mv flag.out flag
}

function flaggunzip {
echo GUNZIP
mv flag flag.gz
gunzip -f flag.gz
}

function flagbase64 {
echo BASE64
tail flag
read -r -p "Decrypt? [Y/n] " response
if [[ "$response" =~ ^([nN])+$ ]]
then
	exit

else
	base64 -d flag > flag.dmp
	rm flag
	mv flag.dmp flag
fi
}

while :
do
    filetype=$(file -b flag | awk '{print $1}')
    case "$filetype" in
   	 ASCII)
   		 flagbase64
   		 ;;
   	 gzip)
   		 flaggunzip
   		 ;;
   	 bzip2)
   		 flagbunzip
   		 ;;
   	 Zip)
   		 flagunzip
   		 ;;
   	 *)
   		 echo "Done!"
   		 exit
    esac
    echo "Press [CTRL+C] to stop.."
#    sleep 2
done
```

## Flag
MCA{Wh0_Needz_File_Extensions?}