### Question
# Given a year, report if it is a leap year.
#
# The tricky thing here is that a leap year in the Gregorian calendar occurs:
#   - on every year that is evenly divisible by 4
#   - except every year that is evenly divisible by 100
#   - unless the year is also evenly divisible by 400
#
# For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
#
# (input/output isn't super clear given the question so we'll make an assumption)
# Input -> integer
# Output -> boolean
#
# Input: 1997
# Output: false
#
# Input 1996
# Output: true
#
# Input 1900
# Output: false
#
# Input 2000
# Output: true
#

### Pseudocode
# create a method -> is_leap_year?, accepts "year" parameter
# my brain is yelling at me that this problem solution will look a lot like "FIZZBUZZ"
#
# if/else conditional
# the most constrained checks will need to happen first, then the broad ones
#  -> if % 400, elsif % 100, elsif % 4, else false
#
# we can either put a return in each if/else statement, or make an output variable to return
#

def is_leap_year?(year)
  if year % 400 == 0
    return true
  elsif year % 100 == 0
    return false
  elsif year % 4 == 0
    return true
  else
    return false
  end
end

p is_leap_year?(1997) #=> false
p is_leap_year?(1996) #=> true
p is_leap_year?(1900) #=> false
p is_leap_year?(2000) #=> true

### Final form
# Similar to fizzbuzz, this could be a case statement
#

def is_leap_year_ii?(year)
  case
  when year % 400 == 0
    return true
  when year % 100 == 0
    return false
  when year % 4 == 0
    return true
  else
    return false
  end
end

p is_leap_year_ii?(1997) #=> false
p is_leap_year_ii?(1996) #=> true
p is_leap_year_ii?(1900) #=> false
p is_leap_year_ii?(2000) #=> true
