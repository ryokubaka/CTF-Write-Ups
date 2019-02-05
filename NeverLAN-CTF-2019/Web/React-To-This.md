# Problem
Leads to a web page with a navigation bar and not much else.  

## Process
Inspecting the page does not show any glaring issues, however if you dig into the local storage you will find a key called “persist:root” with value {"admin":"false","_persist":"{\"version\":-1,\"rehydrated\":true}"}”.  Simply change the “admin”:”false” to “true” and refresh.  In the navigation there is now an “Admin Page” with the flag.


## Flag
flag{s3cur3_y0ur_s3ss10ns}
