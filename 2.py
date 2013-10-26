def fib(n):
 fib.cache = getattr(fib,'cache',{})
 if n not in fib.cache:
  if n in (0,1):
   fib.cache[n] = 1
  else:
   fib.cache[n] = fib(n-1)+fib(n-2)
 return fib.cache[n]
if __name__== '__main__':
 sum = 0
 i = 1
 last = fib(i)
 while last <= 4000000:
  if last % 2 == 0:
   sum += last
  i += 1
  last = fib(i)
 print sum, '\n'
