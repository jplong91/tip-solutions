### Question
#
# Write a function that returns the sum of all numbers in a given array. 
# 
# Input -> array
# Output -> integer
#
# Input: [1, 2, 3, 4]
# Output: 10
#
# Input: [5, -2, 10, -8, 4]
# Output: 9
#

### Pseudocode
#
# create a method -> calculate_sum, accepts "numbers" parameter
# create a variable that will keep track of the current sum
#  -> set that variable to 0 initially
#
# `each` loop to go through every number in the array
#  -> add each number to the current sum
#
# return the sum
#

def calculate_sum(numbers)
  sum = 0

  numbers.each do |num|
    sum += num
  end

  return sum
end

p calculate_sum([1, 2, 3, 4]) #=> 10
p calculate_sum([5, -2, 10, -8, 4]) #=> 9

### Final form

def calculate_sum_ii(numbers)
  numbers.sum
end

p calculate_sum_ii([1, 2, 3, 4]) #=> 10
p calculate_sum_ii([5, -2, 10, -8, 4]) #=> 9
