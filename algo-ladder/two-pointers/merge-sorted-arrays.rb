### Question
#
# Given two sorted arrays, merge the second array into the first array
# while ensuring that the first array remains sorted.
#
# NOTE: Do not use any built-in sort methods.
#
# Input -> two arrays
# Output -> one array
#
# Input: [1, 5, 8], [6, 9]
# Output: [1, 5, 6, 8, 9]
#

### Pseudocode
#
# create a method -> merge_n_sort, accepts two parameters. 'base_nums' & 'add_nums'
# create an "output_array" variable that is initially an empty array
# create a "base_dex" that is set to 0
# create a "add_dex" that is set to 0
#
# one `while` loop
#  -> the loop runs as long as `base_dex < base_nums.length || add_dex < add_nums.length`
#  -> check which number is smaller between the two arrays
#  -> if the `base_nums[base_dex]` is smaller, add it to the output array
#    -> increment `base_dex` by 1
#  -> elsif `add_nums[add_dex]` is smaller, add to the output array
#    -> increment `add_dex` by 1
#
# we probably need a funky `|| base_nums[base_dex]` on each if/elsif condition
# to check that the other number exists for comparison, and if it doesn't add the value that does exist
#   EDIT: yea that didn't work because we need to check for both values
#     let's do a preemptive check for values before the comparison check
#
# return the output_array
#

def merge_n_sort(base_nums, add_nums)
  output_array = []
  base_dex = 0
  add_dex = 0

  while base_dex < base_nums.length || add_dex < add_nums.length
    unless base_nums[base_dex]
      output_array << add_nums[add_dex]
      add_dex += 1
      break
    end

    unless add_nums[add_dex]
      output_array << base_nums[base_dex]
      base_dex += 1
      break
    end

    if base_nums[base_dex] < add_nums[add_dex]
      output_array << base_nums[base_dex]
      base_dex += 1
    elsif add_nums[add_dex] < base_nums[base_dex]
      output_array << add_nums[add_dex]
      add_dex += 1
    end
  end

  return output_array
end

p merge_n_sort([1, 5, 8], [6, 9]) #=> [1, 5, 6, 8, 9]

### Final Form
#
# We were specifically asked to not use built-in sorts which takes away a lot of the fun.
# Posting a final form that uses what _would_ get used if you had all the toys available
#

def merge_n_sort_ii(base_nums, add_nums)
  base_nums.concat(add_nums).sort
end

p merge_n_sort_ii([1, 5, 8], [6, 9]) #=> [1, 5, 6, 8, 9]
