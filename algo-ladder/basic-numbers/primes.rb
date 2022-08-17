### Question
#
# Write a function that returns whether a given number is a prime number.
#
# NOTE: A prime number is a whole number, greater than 1, whose only factors are 1 and itself
#
# Input -> integer
# Output -> boolean
#
# Input: 4
# Output: false
#
# Input: 7
# Output: true
#
# Input: 99
# Output: false
#

### Pseudocode
#
# (this one took me a little while to think about, not a straightforward answer)
# create a method -> is_prime?, accepts a "number" parameter
# 
# use a `while` loop
# create an index outside the loop and set it equal to 2
#  -> this is because, we don't check for prime-ness by using 0 or 1 as factorials
# we run the loop for as long as `index < number`
#  -> inside the loop, we'll check if the number divisible by the index == 0
#  -> if yes, return `false` since the number would not be prime
# increment the index each iteration of the loop
#
# once the loop is complete, return `true` since we will not have returned `false` at this point
#

def is_prime?(number)
  index = 2

  while index < number
    if number % index == 0
      return false
    end

    index += 1
  end

  return true
end

p is_prime?(4) #=> false
p is_prime?(7) #=> true
p is_prime?(99) #=> false

### Final form
#
# Without doing any research, I'm semi-confident there is a more mathematically efficient way
# to do this. that said, this solution is still O(n) runtime which is fine enough
# 
# Very open to more exciting solutions if you find them!
#
