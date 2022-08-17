### Question
#
# Given an array of numbers, write a function that returns a new array
# in which only select numbers from the original array are included,
# based on the following details:
#
# The new array should always start with the first number from the original array.
# The next number that should be included depends on what the first number is.
# The first number dictates how many spaces to the right the computer should move
#   to pick the next number.
# For example, if the first number is 2, then the next number that the computer
#   should select would be two spaces to the right.
# This number gets added to the new array.
# If this next number happens to be a 4, then the next number after that
#   is the one four spaces to the right.
# And so on and so forth until the end of the array is reached.
#
# Input -> array
# Output -> array (smaller than original array)
#
# Input: [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]
# Output: [2, 3, 1, 2, 2, 1, 5, 2, 2]
#
# Assuming there can be no 0's. Otherwise you'd be stuck at that spot.
# Will also assume no negative numbers. Ex. if we had all negative numbers, we'd never stop (can't stop won't stop)
#

### Pseudocode
#
# create a method -> skip_it, accepts "numbers" parameter
# create an empty "output", array variable
# 
# `while` loop
# create an index, set it equal to 0
# create another "index" (actual airquotes on this one) called "skipdex"
#  -> initial value for "skipdex" is `numbers.first`
#  -> we'll also add `numbers.first` to the output array
#
# start the while loop, it goes as long as index is less than `numbers.length`
#  -> _if_ the skipdex = 0, add numbers[index] to the output, and set the skipdex to numbers[index]
#  -> decrement the skipdex by 1
#  -> increment the index by 1 each iteration of the loop
#
# return the output
#

def skip_it(numbers)
  output = []
  index = 0

  skipdex = numbers.first
  output << skipdex

  while index < numbers.length
    if skipdex == 0
      skipdex = numbers[index]
      output << skipdex
    end

    skipdex -= 1
    index += 1
  end

  return output
end

p skip_it([2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]) #=> [2, 3, 1, 2, 2, 1, 5, 2, 2]

## Troubleshooting
# I did have to debug this one a bit when I coded it.
#
# Initially I had `skipdex -= 1` in an `else` block within the `if` statement
# After printing the skipdex each iteration the loop, I found I was going too far,
#  -> 3, 2, 1, 0 _then_ checking `if skipdex == 0` meant I would traverse 4 numbers away
#
# Placing the `skipdex -= 1` outside any `if` block, was one way to solve this issue.
#

### Final form
# We could probably trim a line or two here or there, but the core logic remains in place
# any way I think about this problem
#
# If you have a clean solution you'd like to share, message me!
#
