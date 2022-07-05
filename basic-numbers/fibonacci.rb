### Question
#
# Write a function that gives the Nth number of the Fibonacci Sequence.
# The Fibonacci sequence begins with 0 and 1, and every number thereafter
# is the sum of the previous two numbers.
#
# The sequence goes like this:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...
#
# Input -> integer
# Output -> integer
#
# Input: 9
# Output: 21
#
# Input 3
# Output: 1
#
# Input 1
# Output: 0
#

### Pseudocode
#
# create a method -> fibonacci, accepts "n" parameter
# create three variables:
#  -> "current_num" variable that is initially set to 0
#  -> "next_num" variable that is initially set to 1
#  -> "fib_num" variable that is initially set to 1 (this is essentially an index)
#
# `while` loop
#  -> goes for as long as `fib_num < n`
#    -> I got this wrong initially, originally had `fib_num <= n`, but we bump `current_num` inside the final loop
#  -> set new variable (each loop) "new_sum" equal to `current_num + next_num`
#  -> renew "current_num" to equal "next_num"
#  -> renew "next_num" to equal "new_sum"
#  -> each iteration we increment "fib_num" by 1
#
# return current_num
#

def fibonacci(n)
  current_num = 0
  next_num = 1
  fib_num = 1

  while fib_num < n
    new_sum = current_num + next_num

    current_num = next_num
    next_num = new_sum

    fib_num += 1
  end

  return current_num
end

p fibonacci(9) #=> 21
p fibonacci(3) #=> 1
p fibonacci(1) #=> 0

### Final form
#
# This is another problem where we could probably trim off a few lines,
# but in terms of runtime and efficency, this is about it!
#
