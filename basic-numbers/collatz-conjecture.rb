### Question
#
# The Collatz Conjecture or 3x+1 problem can be summarized as follows:
#  - Take any positive integer n.
#  - If n is even, divide n by 2 to get n / 2.
#  - If n is odd, multiply n by 3 and add 1 to get 3n + 1.
#  - Repeat the process indefinitely.
#
# The conjecture states that no matter which number you start with, you will always reach 1 eventually.
#
# Given a number n, return the number of steps required to reach 1.
#
# Starting with n = 12, the steps would be as follows:
#  -> 12, 6, 3, 10, 5, 16, 8, 4, 2, 1
#
# Resulting in 9 steps. So for input n = 12, the return value would be 9.
#
# Input -> integer
# Output -> integer
#

### Pseudocode
#
# create a method -> collatz, accepts "number" parameter
# this already feels very similar to previous questions - fizzbuzz + multiples
#
# create variable, 'steps', and set it equal to 0
#
# `while` loop
# let's trust in the conjecture and run for as long as number != 1
#
# inside the while loop:
#  -> if number % 2, set number equal to number / 2
#  -> else, set number equal to number x3 + 1
#  -> increment the step variable by 1 each iteration of the loop
#
# return steps variable (integer)
#

def collatz(number)
  steps = 0

  while number != 1
    if number % 2 == 0
      number = number / 2
    else
      number = (number * 3) + 1
    end

    steps += 1
  end

  return steps
end

p collatz(12) #=> 9
p collatz(2) #=> 1
p collatz(53) #=> 11
p collatz(1) #=> 0

### Final form
#
# This is like an un-final form, not pretty at all. =(
# But I wanted to try out recursion because it seemed doable with this problem...
# The challenging part about that was keeping track of a 'steps' variable,
#  so this sort of needed to be in a class to use an ivar.
#

class Collatz
  attr_accessor :steps

  def initialize
    @steps = 0
  end

  def conject(number)
    return if number == 1

    if number % 2 == 0
      number = number / 2
    else
      number = (number * 3) + 1
    end

    self.steps += 1

    conject(number)
  end
end

collatz = Collatz.new
collatz.conject(12)
p collatz.steps #=> 9

collatz = Collatz.new
collatz.conject(2)
p collatz.steps #=> 1

collatz = Collatz.new
collatz.conject(53)
p collatz.steps #=> 11

collatz = Collatz.new
collatz.conject(1)
p collatz.steps #=> 0
