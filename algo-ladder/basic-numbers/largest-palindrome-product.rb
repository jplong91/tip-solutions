### Question
#
# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
#
# Input -> N/A
# Output -> integer
#

### Pseudocode
#
# create a method -> largest_palindrome
# had to think about this one a little while, this is not straightforward or easy
#
# first hurdle -> is there a way to do this that does not use a nested loop?
# we sort of need to run through all sorts of three digit iterations
# can't think of a good way to shortcut checking products for palindromes and against
#  other palindromes we find
#
# second hurdle is figuring out a way to check if an integer value is a palindrome
#
# create variables:
#  -> base_num, initially set to 100
#  -> flex_num, initially set to 100 (inside outer while loop)
#  -> palindromes array, initially empty
#
# inner `while` loop that runs as long as 'flex_num' < 1000 (aka stays in 3-digit range)
#  -> get the product of 'base_num' and 'flex_num' and set it equal to a variable
#  -> check of the product is a palindrome
#    -> product.digits == product.digits.reverse (otherwise we turn the integer into a string to check)
#  -> if it is a palindrome, add to 'palindromes' array
#  -> increment 'flex_num' by 1
#
# outer `while` loop that runs as long as 'base_num' is < 1000
#  -> increment 'base_num' by 1
#  -> reset 'flex_num' equal to 100
#
# return `palindromes.max` which will return the highest value
#

def largest_palindrome
  base_num = 100
  palindromes = []

  while base_num < 1000
    flex_num = 100

    while flex_num < 1000
      product = base_num * flex_num

      if product.digits == product.digits.reverse
        palindromes << product
      end

      flex_num += 1
    end

    base_num += 1
  end

  return palindromes.max
end

p largest_palindrome #=> 906609

### Final form (WARNING: this leads to a long-ish side tangent hunting for performance gainz)
#
# One of my thoughts was if we could start on the higher end of numbers and perhaps
#  early break on the loop
# Even just early breaking the inner loop would save time. This code is noticeably slow as-is
#  
#   Ex. 'base_num' = 999, 'flex_num' starts at 999 and decrements
#     -> lets say the first palindrome product is when 'flex_num' is 900
#     -> that means we no longer need to check any more flex_nums below 900
#
# We'd still need to check all 'base_num' variations because unless you already know the answer
#  it feels impossible to tell weather or not each iteration will even lead to a palindrome product
#

# So we get the same answer with just tweaks to decrementing, and the inner 'break'
def largest_palindrome_ii
  base_num = 999
  palindromes = []

  while base_num > 99
    flex_num = 999

    while flex_num > 99
      product = base_num * flex_num

      if product.digits == product.digits.reverse
        palindromes << product
        break
      end

      flex_num -= 1
    end

    base_num -= 1
  end

  return palindromes.max
end

p largest_palindrome_ii #=> 906609

# I tried scrapping the 'palindromes' array since we can check if any product is bigger
# This leads to almost identical performance times, although space complexity would decrease
def largest_palindrome_iii
  base_num = 999
  greatest_palindrome = 0 # I know there's bigger than 0 out there =)

  while base_num > 99
    flex_num = 999

    while flex_num > 99
      product = base_num * flex_num

      if product.digits == product.digits.reverse
        if product > greatest_palindrome
          greatest_palindrome = product
        end

        break
      end

      flex_num -= 1
    end

    base_num -= 1
  end

  return greatest_palindrome
end

p largest_palindrome_iii #=> 906609

# Alright hear me out,
# Assuming we continue to start on the higher end of 3-digit numbers...
# Once 'flex_num' goes below it's "highest" amount from the previous 'base_num' product,
#  we can stop the inner loop (again).
# The two number combo will not output a greater product than it's predecessors
# So we need to hold onto a 'historical_flex_max' and check against it
def largest_palindrome_iv
  base_num = 999
  greatest_palindrome = 0
  historical_flex_max = 0

  while base_num > 99
    flex_num = 999

    while flex_num > 99
      break if flex_num <= historical_flex_max

      product = base_num * flex_num

      if product.digits == product.digits.reverse
        if product > greatest_palindrome
          greatest_palindrome = product
        end

        historical_flex_max = flex_num
        break
      end

      flex_num -= 1
    end

    base_num -= 1
  end

  return greatest_palindrome
end

p largest_palindrome_iv #=> 906609

# Let's check performance:
require 'benchmark'
puts Benchmark.measure { largest_palindrome } #=> ~0.616588s
puts Benchmark.measure { largest_palindrome_ii } #=> ~0.404860s
puts Benchmark.measure { largest_palindrome_iii } #=> ~0.408026s
puts Benchmark.measure { largest_palindrome_iv } #=> ~0.010997s
# (the four digits read: user cpu time, system cpu time, sum of both, and real time)
# (re-running benchmarks may yield slightly different numbers, these are approximations)

# 'largest_palindrome_ii' completes in 2/3 the time compared to the original solution!
# Then 'largest_palindrome_iv' blows every other solution out of the water (95% reduced time?!)
#  with one extra 'break' statement in the inner loop!!
# This is because we get to effectively exit out of most other extra number math
#  once we've found a product from a decently high 'flex_num' value

# If anyone finds any other solutions that improve performance significantly more
#  or wants to streamline this code, you're encouraged to do so!
