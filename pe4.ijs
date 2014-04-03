NB. A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
NB. Find the largest palindrome made from the product of two 3-digit numbers.
pd =: ".|.@":
pt =: ] = pd
b3dpd =: >./ ((pt"0) # ]) ; ([ */ ]) (100+i.900)
smoutput '  b3dpd'
smoutput b3dpd
exit''
