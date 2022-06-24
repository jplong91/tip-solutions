### Question
# Given an array of numbers, write a function that returns
# a new array whose values are the original array’s value doubled.
#
# Input -> array
# Output -> array (same size as input)
#
# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]
#

### Pseudocode
# create a method -> double_it, accepts "numbers" parameter
# use a `map` method to map
#  -> iterate over each number in the input array, and double it inside the map
# return the mapped array (use implicit return)
#

def double_it(numbers)
  numbers.map do |num|
    num * 2
  end
end

p double_it([4, 2, 5, 99, -4]) #=> [8, 4, 10, 198, -8]

### Final form ( debatable =) )

def double_it_ii(numbers)
  numbers.map { |num| num * 2 }
end

p double_it_ii([4, 2, 5, 99, -4]) #=> [8, 4, 10, 198, -8]
