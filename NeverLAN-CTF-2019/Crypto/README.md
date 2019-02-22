# Crypto Solutions
## Table of Contents
1. [Alphabet Soup](#Alphabet-Soup)
2. [Cover The Bases](#Cover-The-Bases)
3. [Oink-Oink](#Oink-Oink)
4. [Super Old School](#Super-Old-School)

# Alphabet Soup
## Problem
“MKXU IDKMI DM BDASKMI NLU XCPJNDICFQ! K VDMGUC KW PDT GKG NLKB HP LFMG DC TBUG PDTC CUBDTCXUB. K'Q BTCU MDV PDT VFMN F WAFI BD LUCU KN KB WAFI GDKMINLKBHPLFMGKBQDCUWTMNLFMFMDMAKMUNDDA”

## Process
This is a cryptogram. We can easily solve it using an [online tool](https://quipqiup.com/).  You can also, of course, do this by hand... much more pain-stakingly.

![crypto-alphabetsoup-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Crypto/Images/crypto-alphabetsoup-flag.jpg?raw=true)

## Flag
FLAG{DOINGTHISBYHANDISMOREFUNTHANANONLINETOOL}

# Cover The Bases
## Problem
“ZmxhZ3tEMWRfeTB1X2QwX3RoM19QcjNfQ1RGfQ==”

## Process
Base64 decode using Notepad++, onlinetool, or base64 -d

## Flag
flag{D1d_y0u_d0_th3_Pr3_CTF}


# Oink-Oink
## Problem
The following picture is provided:

![crypto-oink-problem](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Crypto/Images/crypto-oink-problem.jpg?raw=true)

## Process
This is a [Pigpen cipher](https://en.wikipedia.org/wiki/Pigpen_cipher). You can decode this with an [online tool](https://www.dcode.fr/pigpen-cipher) or manually, however manually there are several different ciphers.  Tools will check them all.

![crypto-oink-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Crypto/Images/crypto-oink-flag.jpg?raw=true)

## Flag
FLAG{DOWN_AND_D1R7Y}

# Super Old School
## Problem
The following picture is provided:

![crypto-oldschool-problem](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Crypto/Images/crypto-oldschool-problem.jpg?raw=true)

## Process:

These are babylonian numbers and can be found with a quick google search.  A “<” symobl is 10, and one pin looking symbol is a “1”.  When you convert them to the appropriate numbers and map it to the alphabet where A = 1, you get the flag.

25 15 21 18 - 6 12 1 7 - 9 19 - 19 15 - 13 1 14 25 - 3 18 25 16 22 15 19, which translates to….
YOUR – FLAG – IS – SO – MANY – CRYPTOS


## Flag

SOMANYCRYPTOS
