NB. Project Euler 2
NB. Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
NB. 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
NB. By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
fib_even =: 3 : 0
fib =. i. +/ .! i.@-
f =. >:
v =. y&>
t =. v@fib
fibs =. f^:t^:a:
terms =. fib "0 }: fibs 2
+/ (-. 2|terms) # terms
)
smoutput fib_even 4e6
exit''
