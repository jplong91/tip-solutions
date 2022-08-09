### Question
#
# Given a non-empty array of integers nums, every element appears twice except for one.
# Find that single one.
#
# You must implement a solution with a linear runtime complexity and
# use only constant extra space.
#
# Input -> array (of integers)
# Output -> integer
#
# Input: [2, 2, 1]
# Output: 1
#
# Input: [4, 1, 2, 1, 2]
# Output: 4
#
# Input: [1]
# Output: 1
#

### Pseudocode
#
# create method `single_number` with `nums` param
# create an empty hash called "tracker" that will keep track of if we've seen the num or not
#
# `each` loop
#   -> if the number does not exist in 'tracker', add it to tracker as a key, with any value
#   -> if the number does exist in 'tracker', implying we've seen it, delete that K/V pair
#
# return `tracker.keys.first` which will be the only number that appears once
# this solution relies heavily on the problem assumption,
# that all rules will be abided by (two nums, except for one, single number)
#

def single_number(nums)
  tracker = {}

  nums.each do |num|
    if tracker[num]
      tracker.delete(num)
    else
      tracker[num] = true
    end
  end
    
  return tracker.keys.first
end

p single_number([2, 2, 1]) #=> 1
p single_number([4, 1, 2, 1, 2]) #=> 4
p single_number([1]) #=> 1

### Final Form
#

def single_number_ii(nums)
  nums.each_with_object({}) do |num, tracker|
    if tracker[num]
      tracker.delete(num)
    else
      tracker[num] = true
    end
  end.keys.first
end

p single_number_ii([2, 2, 1]) #=> 1
p single_number_ii([4, 1, 2, 1, 2]) #=> 4
p single_number_ii([1]) #=> 1
