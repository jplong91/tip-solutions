### Question
# Given an array of numbers, write a function that returns a new array 
# that contains all numbers from the original array that are less than 100.
#
# Input -> array
# Output -> array (smaller than original array)
#
# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]
#
# Input: [12, -300, 67, 145, 100]
# Output: [12, -300, 67]
#

### Pseudocode
# create a method -> less_than_100, accepts "numbers" parameter
# define an empty array variable for storing numbers less than 100
# use an each loop to go through every number in the array
#  -> add any number less than 100 to the output array
#  -> less than 100 will be evaluated using an 'if' statement
# after completing the loop, return the output array
#

def less_than_100(numbers)
  nums_less_than_100 = []

  numbers.each do |num|
    if num < 100
      nums_less_than_100 << num
    end
  end

  return nums_less_than_100
end

p less_than_100([99, 101, 88, 4, 2000, 50]) #=> [99, 88, 4, 50]
p less_than_100([12, -300, 67, 145, 100]) #=> [12, -300, 67]

### Final form

def less_than_100_ii(numbers)
  numbers.select{ |num| num < 100 }
end

p less_than_100_ii([99, 101, 88, 4, 2000, 50]) #=> [99, 88, 4, 50]
p less_than_100_ii([12, -300, 67, 145, 100]) #=> [12, -300, 67]
