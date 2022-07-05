### Question
#
# Given a string, write a function that returns true if it is a palindrome,
# and false if it is not.
# (A palindrome is a word that reads the same both forward and backward.)
#
# Input -> string
# Output -> boolean
#
# Input: "racecar"
# Output: true
#
# Input: "baloney"
# Output: false
#

### Pseudocode
#
# create a method -> is_palindrome?, accepts "input_string" parameter
# 
# think I'm going to use a `while` loop with two indices
#  -> a "start_index" which is initially set to 0
#  -> and an "end_index" which is initially set to `input_string.length - 1`
# this loop will run for as long as end_index >= start_index
#  -> for input strings of even character length, at some point end index will
#     fall below the start index. at this point we've checked all pairs
#  -> for odd char lengths, the indices will equal each other at some point
#     this is fine to check for character equality (although unnecessary)
# each iteration of the loop, increment start_index, decrement end_index
#
# inside the loop, if `input_string[start_index] == input_string[end_index]`, we continue
# otherwise, return `false` because the word is not a palindrome
#
# once the loop is complete, return true, as we'll have checked every letter pair
# (and presumably not returned false by this point)
#

def is_palindrome?(input_string)
  start_index = 0
  end_index = input_string.length - 1

  while end_index >= start_index
    unless input_string[start_index] == input_string[end_index]
      return false
    end

    start_index += 1
    end_index -= 1
  end

  return true
end

p is_palindrome?("racecar") #=> true
p is_palindrome?("baloney") #=> false

### Final form

def is_palindrome_ii?(input_string)
  input_string == input_string.reverse
end

p is_palindrome_ii?("racecar") #=> true
p is_palindrome_ii?("baloney") #=> false
