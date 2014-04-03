NB. The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
NB. Find the sum of all the primes below two million.
primes =: p: i.2e5
x: +/ p: i. (p:^:_1:) 2e6
exit''
