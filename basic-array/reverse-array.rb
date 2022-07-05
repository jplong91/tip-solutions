### Question
#
# Given an array, write a function that returns
# an array that contains the original array’s values in reverse.
#
# Input -> array
# Output -> array (same size as input)
#
# Input: [1, 2, 3, 4, 5]
# Output: [5, 4, 3, 2, 1]
#
# Input: [1, "cat", "dog", 4]
# Output: [4, "dog", "cat", 1]
#

### Pseudocode
#
# create a method -> reverse_reverse, accepts "input_array" parameter
# create an empty "reversed_array", array variable
# create an index and set it equal to the input array length, minus 1
#  -> this will start us off on the last number of the input array
# 
# `each` won't easily work, we need a `while` loop for this one
# start the while loop, it goes as long as index is greater than _or equal to_ 0
#  -> shovel the current index's value to the reversed array
#  -> decrement the index by 1
#
# return the reversed array
#

def reverse_reverse(input_array)
  reversed_array = []
  index = input_array.length - 1

  while index >= 0
    reversed_array << input_array[index]

    index -= 1
  end

  return reversed_array
end

p reverse_reverse([1, 2, 3, 4, 5]) #=> [5, 4, 3, 2, 1]
p reverse_reverse([1, "cat", "dog", 4]) #=> [4, "dog", "cat", 1]

### Final form

def reverse_reverse_ii(input_array)
  input_array.reverse
end

p reverse_reverse_ii([1, 2, 3, 4, 5]) #=> [5, 4, 3, 2, 1]
p reverse_reverse_ii([1, "cat", "dog", 4]) #=> [4, "dog", "cat", 1]
