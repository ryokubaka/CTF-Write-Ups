## Problem:

ssh -p 3333 level9@157.230.73.80
Password: my-wit-ran-out-5-levels-ago

## Process:

- ls -la
- cat .clue
  - Encryption password is level9please
- openssl enc -d base64 -in level9.enc -out t.enc
  - Have to decode from base64 first
- openssl enc -d -aes256-cbc -in t.enc -out t.txt
 
## Flag:

please-someone-help