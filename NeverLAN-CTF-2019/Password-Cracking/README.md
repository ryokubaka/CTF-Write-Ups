# Problem
They provide us with 16 different hashes (listed below).  I load them into a text file and use hashcat to crack.

They are all in the format $1$____$__________ (MD5 crypt), which aligns with [type 500](https://hashcat.net/wiki/doku.php?id=example_hashes) for hashcat.

## Process
hashcat -m 500 -o out.txt hashes.txt dictionary.txt

```
PW1: $1$78V0y281$b0f95SAqd2BGFM0R94rIQ/ : 
PW2: $1$NJOYht4r$zBK9WURASGQmXlbEoFQ7R0 : 
PW3: $1$8Xzzo2Un$4RCP.BvWE7GNJ/QIRnMmE1 : indianajones
PW4: $1$Xr93rTYl$NNObcNql9r7ud2Ec7iPhJ1 : 
PW5:.$1$d8qBkGme$gNZFeDbg20rDdQw/ap3Zh/ : darthvader
PW6: $1$VXpHmtKC$rtvIjzeg3QtBpfgEsJo/N. : pwned
PW7: $1$r.bNOlI5$6FIJzZd/Z/qu3YPeVZqHr0 : 
PW8:.$1$66dlQFzj$dFDKADbdgd/7Hs9iLM7WG1 : 123456seven
PW9:$1$N6YdF7bb$C8xB4JEGIG1UaIvcX52981 : 
PW10: $1$J1J.GGxY$BC9UgXyI6j61hEwg6CzFJ0 : 
PW11: $1$DsNwIwCB$GJtdNZe.zC9/CfCLkIU5L. : n30
PW12: $1$FPNiZ25Y$Zd81qYVYY78zx.czNPnXJ0 : 
PW13: $1$3EWs3fw8$lXtCH8R38PUZbtLhoCw.d/ : viking
PW14: $1$rEGYordc$6oYN/FxPV95ll7uOEfRy0. : 
PW15: $1$tIDzBW38$Io93.ZnYWv1HaBbSKW8hM. : zevlag
PW16:$1$RVgjU0zp$alpNzFXw/jc8/V/HkXNga. : neverlan
```

/// INCOMPLETE ///

### Note
Using the command above and the crackstation [~4 GB dictionary file](https://crackstation.net/crackstation-wordlist-password-cracking-dictionary.htm), I only got 8 of the 16 hashes cracked.
