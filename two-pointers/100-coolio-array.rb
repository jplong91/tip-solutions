### Question
#
# Given an array of numbers, return true if the array is a "100 Coolio Array", or false if it is not.
#
# A "100 Coolio Array" meets the following criteria:
#  - Its first and last numbers add up to 100,
#  - Its second and second-to-last numbers add up to 100,
#  - Its third and third-to-last numbers add up to 100,
#  - and so on and so forth.
#
# Input -> array
# Output -> boolean
#
# Input: [1, 2, 3, 97, 98, 99]
# Output: true
#
# Input: [90, 20, 70, 100, 30, 80, 10]
# Output: true
#
# Input: [90, 20, 70, 5, 30, 80, 10]
# Output: false
#
# Input: [80, 40, 30, 20]
# Output: false
#

### Pseudocode
#
# create a method -> is_coolio?, accepts one "numbers" parameter
# create a "start_index" set to 0
# create a "end_index" set to `numbers.length - 1`
#
# `while` loop
#   -> runs as long as `start_index < end_index`
#   -> unless `numbers[start_index] + numbers[end_index] == 100` return false
#   -> otherwise, carry on
#   -> increment 'start_index' by 1, decrement 'end_index' by 1
#   -> we'll also need to first check for `start_index == end_index` inside our loop
#     -> this covers situations where the array size is odd and the middle numbers must be 100
#
# return true, this assumes you made it all the way through checking numbers
#

def is_coolio?(numbers)
  start_index = 0
  end_index = numbers.length - 1

  while start_index <= end_index
    if start_index == end_index
      return false unless numbers[start_index] == 100
    else
      return false unless numbers[start_index] + numbers[end_index] == 100
    end

    start_index += 1
    end_index -= 1
  end

  return true
end

p is_coolio?([1, 2, 3, 97, 98, 99]) #=> true
p is_coolio?([90, 20, 70, 100, 30, 80, 10]) #=> true
p is_coolio?([90, 20, 70, 5, 30, 80, 10]) #=> false
p is_coolio?([80, 40, 30, 20]) #=> false

### Final Form
#
# Unsure on how badly a final form should get chased down.
# The above code is fairly efficient from a time complexity standpoint since we only
#  iterate through half the array. Space complexity is also a non-factor
#
# That means we'd have to get "cute" with some extra methods here.
# I could brainstorm ways to check for even/odd array sizes, and/or using `.reverse`
#  or something. But doesn't feel like there's a big win to be had here...
#
# Prove me wrong though, open to final form ideas on this one!
#
