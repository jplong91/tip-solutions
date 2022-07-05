### Question
#
# Write a function that returns the greatest value from an array of numbers.
#
# Input -> array
# Output -> integer
#
# Input: [5, 17, -4, 20, 12]
# Output: 20
#
# What if the input array is empty? Let's return `nil`
# Input: []
# Output: nil
#

### Pseudocode
#
# create a method -> to_the_max, accepts "numbers" parameter
# create a variable to keep track of the current greatest value
#  -> set this variable equal to the first number in the array (0 doesn't work with all negatives)
#
# `each` loop to iterate over numbers array
#  -> if statement: check if the number being evaluated is greater than the current greatest value
#
# once loop is finished, return the greatest value variable
#

def to_the_max(numbers)
  greatest_value = numbers.first

  numbers.each do |num|
    if num > greatest_value
      greatest_value = num
    end
  end

  return greatest_value
end

p to_the_max([5, 17, -4, 20, 12]) #=> 20
p to_the_max([]) #=> nil

### Final form

def to_the_max_ii(numbers)
  numbers.max
end

p to_the_max_ii([5, 17, -4, 20, 12]) #=> 20
p to_the_max([]) #=> nil
