### Question
#
# You are given two parameters, an array and a number.
# Return a hash whose keys are each of the values from the array parameter,
# and whose values are the number parameter.
#
# Input -> array and integer
# Output -> hash
#
# Input: ["a", "e", "i", "o", "u"], 1
# Output: {
#   "a" => 1,
#   "e" => 1,
#   "i" => 1,
#   "o" => 1,
#   "u" => 1,
# }
#

### Pseudocode
#
# create a method -> etl, accepts input array and number parameters
# create an "output_hash" variable
#
# `each` loop through the array
#  -> create new key-value pair in the hash, loop element is the key, number is the value
#
# return 'output_hash'
#

def etl(input_array, number)
  output_hash = {}

  input_array.each do |element|
    output_hash[element] = number
  end

  return output_hash
end

p etl(["a", "e", "i", "o", "u"], 1) #=> see expected output above

### Final Form
#
# You might notice a lot of these final forms involve a shortcut when initializing
#  an "output" array/hash/etc. If you find yourself creating a variable just for
#  the output of data, there's probably a streamlined way to do it!
#

def etl_ii(input_array, number)
  input_array.each_with_object({}) do |element, output|
    output[element] = number
  end
end

p etl_ii(["a", "e", "i", "o", "u"], 1)  #=> see expected output above
