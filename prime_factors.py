#import android

#droid = android.Android()

def primes():
 if not hasattr(primes, "primes"):
  primes.primes = [2]
 for i in primes.primes:
  yield i
 n = primes.primes[-1]+1
 while n:
  if not any(j for j in primes.primes if n%j==0):
   primes.primes += [n]
   yield n
  n += 1

def prime_factors(n):
 if not hasattr(prime_factors, 'prime_factors'):
  prime_factors.prime_factors = {2:[2]}
 if n in prime_factors.prime_factors:
  return prime_factors.prime_factors[n]
 x = n
 l = []
 for i in primes():
  while x > 1 and i <= x and x%i == 0:
   l += [i]
   x = x/i
  if i > x: break
 prime_factors.prime_factors[n] = l
 return l

if __name__ == '__main__':
 print 'start'
 ps = primes()
 for p in range(10):
  print ps.next()
 print 'stop'
