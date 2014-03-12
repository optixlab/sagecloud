import math
import sys

def error():
  print "Incorrect year. Exiting"
  sys.exit(0)

def day(year):
  year = int(year)
  year = year % 100
  div12 = year / 12
  mod12 = year % 12
  rem4 = mod12 / 4
  print div12, "+", mod12, "+", rem4
  mysum = (div12 + mod12 + rem4) % 7
  return mysum

def loop():
  weekdays = ("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat")
  while (1):
    var = raw_input("Please enter a year [yyyy] or [q]uit: ")
    try:
      year = int(var)
    except ValueError:
      #Try exiting.
      if (var == 'q'):
        return
      error()
    print "{} doomsday = ".format(year)
    century = math.floor(year/100)
    if (century == 19):
      centuryDay = 4
    elif (century == 20):
      centuryDay = 3
    else:
      error()

    doomsday = (centuryDay + day(year)) % 7
    print "=>", weekdays[doomsday - 1]

if __name__ == "__main__":
  loop()

