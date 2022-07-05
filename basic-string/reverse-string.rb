### Question
#
# Write a function that returns the reverse of a given string.
#
# Input -> string
# Output -> string (same size as input)
#
# Input: "abcde"
# Output: "edcba"
#
# Input: "Hello World!"
# Output: "!dlroW olleH"
#

### Pseudocode
#
# the solution is nearly identical to 'reverse-array'
#
# create a method -> reverse_string, accepts "input_string" parameter
# create an empty "reversed_string", string variable
# 
# `while` loop
# create an index and set it equal to the input string length, minus 1
#  -> this will start us off at the last 'index' of the input string
# start the while loop, it goes as long as index is greater than _or equal to_ 0
#  -> shovel the current index's value to the reversed string variable
#  -> decrement the index by 1
#
# once the loop is complete, return the reversed string
#

def reverse_string(input_string)
  reversed_string = ""
  index = input_string.length - 1

  while index >= 0
    reversed_string << input_string[index]

    index -= 1
  end

  return reversed_string
end

p reverse_string("abcde") #=> "edcba"
p reverse_string("Hello World!") #=> "!dlroW olleH"

### Final form

def reverse_string_ii(input_string)
  input_string.reverse
end

p reverse_string_ii("abcde") #=> "edcba"
p reverse_string_ii("Hello World!") #=> "!dlroW olleH"
