### Question
#
# Given an array of numbers, return a new array containing just two numbers
# (from the original array) that add up to the number 10.
# If there are no two numbers that add up to 10, return false.

# NOTE: Specifically use nested loops to solve this exercise even though
# there are other approaches as well.
#
# Input -> array
# Output -> array of two numbers OR boolean
#
# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]
#
# Input: [1, 2, 3, 4, 5]
# Output: false
#

### Pseudocode
#
# create a method -> two_sum, accepts one "numbers" parameter
# create a "base_index" set to 0
#
# we don't need to start the 2nd index at 0 each time
# if we did, we'd be checking a sum we already checked
#
# outer loop -> `while`, inner loop -> `while`
#  -> outer loop runs for as long as `base_index < numbers.length`
#  -> increment base_index by 1 each iteration of the outer loop
#  -> create/reset a "sum_index" to be `base_index + 1`
#  -> inner loop runs for as long as `sum_index < numbers.length`
#    -> check if the sum of `numbers[base_index] + numbers[sum_index]` equals 10
#    -> if true, return both numbers in an array
#    -> if false, carry onwards
#    -> increment "sum_index" by 1
#
# return false, which assumes we've looped through everything and not found two numbers that == 10
#

def two_sum(numbers)
  base_index = 0

  while base_index < numbers.length
    sum_index = base_index + 1

    while sum_index < numbers.length
      if numbers[base_index] + numbers[sum_index] == 10
        return [numbers[base_index], numbers[sum_index]]
      end

      sum_index += 1
    end

    base_index += 1
  end

  return false
end

p two_sum([2, 5, 3, 1, 0, 7, 11]) #=> [3, 7]
p two_sum([1, 2, 3, 4, 5]) #=> false

### Final Form
#
# Since this problem specifically asks to solve with a nested loop...
# Won't bother getting carried away with optimizations. Will save that for two-sum-ii
#
