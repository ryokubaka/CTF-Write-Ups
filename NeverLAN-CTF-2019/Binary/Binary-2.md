# Problem
Our lead Software Engineer recently left and deleted all the source code and changed the login information for our employee payroll application. Without the login information none of our employees will be paid. Can you help us by finding the login information?
***Flag is all caps

## Process
We are provided with an EXE file that we will want to debug/reverse engineer.  In a linux box, I ran strings on the file and found a reference to “Password.txt”:

![binary2-strings](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Binary/Images/binary2-strings.jpg?raw=true)

I decided to do a dump of the exe using command “objdump -s Employee_Payroll.exe” and search through the .text section. Right at the top, we can see the flag laid out (need to read from left to right, top down)

## Flag

![binary2-flag](https://github.com/ryokubaka/CTF-Write-Ups/blob/master/NeverLAN-CTF-2019/Binary/Images/binary2-flag.jpg?raw=true)

flag{ST0RING_STAT1C_PA55WORDS_1N_FIL3S_1S_N0T_S3CUR3}
