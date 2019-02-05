# Problem

## Process
- We will want to join the users table and the passwd table, but there’s got to be a primary key that is shared to link the two.  We run “SELECT * from Users” and “SELECT * from passwd” and find they are probably tying the ID in Users to the “User_ID” column.
- We run SELECT * FROM users WHERE lname=’Miller’ and grab his ID of 5. Then tie it together:
   - SELECT * FROM passwd JOIN users ON passwd.user_id=users.id WHERE user_id=5

We get a base64 encoded flag.

## Flag
flag{W1ll_Y0u_J01N_M3?}
