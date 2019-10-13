import android

droid = android.Android()

def is_palindrome(n):
 if not hasattr(is_palindrome,'is_palindrome'):
  is_palindrome.is_palindrome = {}
 if n in is_palindrome.is_palindrome:
  return is_palindrome.is_palindrome[n]
 s = str(n)
 l,m = divmod(len(s),2)
 rv = False
 if m == 0:
  rv = s[:l] == s[l:][::-1]
 is_palindrome.is_palindrome[n] = rv
 return rv

def digit_number(n):
 high = (10**n)-1
 low = (10**(n-1))-1
 for i in xrange(high,low,-1):
  yield i

def palindrome_product(n):
 if not hasattr(palindrome_product,'palindrome_product'):
  palindrome_product.palindrome_product = {}
 if n in palindrome_product.palindrome_product:
  return palindrome_product.palindrome_product[n]
 palindromes = []
 for i in digit_number(n):
  for j in xrange(i,i-(10**(n-1)),-1):
   if is_palindrome(i * j):
    palindromes += [i * j]
  if palindromes:
   break
 palindrome_product.palindrome_product[n] = max(palindromes)
 return palindrome_product.palindrome_product[n]
