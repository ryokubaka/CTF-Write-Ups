# Problem
To keep my server from doing a lot of work, I made javascript do the heavy lifting of checking a user's password

## Process
Inspecting the HTML shows exactly how username and password are validated, including where they are checked.

For username, navigate to https://challenges.neverlanctf.com:1135/webhooks/get_username.php and you get an array of valid users.  I grabbed the one with no spaces, JimmyOneShoe.
For password, navigate to https://challenges.neverlanctf.com:1135/webhooks/get_password.php?user=JimmyOneShoe

Unfortunately this gave me base64 encoded string, which turned out to be “Wrong user”.  Moving on, I tried the other ones and landed on Dr. Whom. This gave me the follow base 64 decoded message, which is the flag.

Note, even with a space and period in his name, the following structure was what worked.  When I tried user=’Dr. Whom’, it gave me a blank screen.
https://challenges.neverlanctf.com:1135/webhooks/get_password.php?user=Dr.%20Whom

## Flag
ZmxhZ3tEMG4ndF83cnVzN19KU30= ---> flag{D0n't_7rus7_JS}
