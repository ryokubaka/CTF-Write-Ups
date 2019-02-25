# Crypto Solutions
## Table of Contents
1. [PGP (50 points)](#PGP)

# PGP
## Problem
> Provided with 4 files:
> - key.enc (PGP encrypted)
> - flag.html.enc
> - mitre-ctf-2019-private.asc (PGP private key)
> - passphrase.txt (used with key)

## Process

 - By running 'file' on each component, we should see that the key.enc file can be decrypted with PGP .
 ```
 gpg --import mitre-ctf-2019-private.asc
 gpg --output keydecrypt --decrypt key.enc
```

 - Once we have the key decrypted, we can see it is a key used for AES-256. This makes sense because we can't decrypt the html file with our PGP key.  We use openssl with aes-256-cbc to decrypt the remaining file and get the flag.
```
openssl aes-256-cbc -kfile keydecrypt -d -in flag.html.enc
```

## Flag
MCA{66b2f50cd2d6b9622c6be902ee2b0976badb4684}