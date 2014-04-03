NB. Project Euler 1
NB. If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
NB. Find the sum of all the multiples of 3 or 5 below 1000.
dby =: 0&=@|~
dby35 =: #~ (dby&3 +. dby&5)
smoutput sdby35 =: +/ dby35 i.1000
exit''
