from math import *

def checkPrime(x, verbose = False):
  if (x % 2 == 0):
    return False
  isPrime = True
  sqrtx = sqrt(x)
  list = range(3, int(sqrtx) + 1, 2)
  for ii in list:
    if (x % ii == 0):
      isPrime = False
      break
  if verbose is True:
    if isPrime:
      print x, "is a prime. Congratulations"
    else:
      print x, "is not a prime: Divisible by", ii
  return isPrime

def largestPrime(x, verbose = False):
  xinit = x
  if x % 2 == 0:
    x -= 1
  list = range(x, 1, -2)
  primeFound = False
  for ii in list:
    isPrime = checkPrime(ii, verbose)
    if isPrime:
      print "The largest prime less than or equal to", xinit, "is", ii
      primeFound = True
      break

  if primeFound is not True:
    print "Sorry, did not find a prime less than", xinit

def loop():
  while (1):
    input = raw_input("[C]heck Prime or [L]argest Prime ([q]uit)? ").lower()
    if input() == 'l' or input() == 'c':
      val = raw_input("Enter a number, [m]enu or [q]uit: ").lower()
    elif input() == 'q': return
    else: 
      print "Invalid input"
      continue
    while(val() != 'm'):
      try:
        p = int(val)
        if (input() == 'l'):
          largestPrime(p)
        elif (input() == 'c'):
          checkPrime(p, verbose = True)
        else:
          return
      except ValueError:
        if (val() == 'q'):
          return
        else: print "Invalid Input" 
      val = raw_input("Enter a number, [m]enu or [q]uit: ").lower()

if __name__ == "__main__":
  loop()

