### Question
#
# Given a hash, return a flat array containing all the hash’s keys and values.
#
# Input -> hash
# Output -> array
#
# Input: { "a" => 1, "b" => 2, "c" => 3, "d" => 4 }
# Output: ["a", 1, "b", 2, "c", 3, "d", 4]
#

### Pseudocode
#
# create a method -> flatten_hash, accepts an input_hash parameter
# create an variable "output_array" variable
#
# `each` loop through the input_hash
#  -> we have access to key + value, shovel both into the output array
#
# return 'output_array'
#

def flatten_hash(input_hash)
  output_array = []

  input_hash.each do |key, value|
    output_array << key
    output_array << value
  end

  return output_array
end

input_posts = 

p flatten_hash({ "a" => 1, "b" => 2, "c" => 3, "d" => 4 }) #=> ["a", 1, "b", 2, "c", 3, "d", 4]

### Final Form
#
# You might notice a lot of these final forms involve a shortcut when initializing
#  an "output" array/hash/etc. If you find yourself creating a variable just for
#  the output of data, there's probably a streamlined way to do it!
#

def flatten_hash_ii(input_hash)
  input_hash.each_with_object([]) do |(key, value), output|
    output << key
    output << value
  end
end

pp flatten_hash_ii({ "a" => 1, "b" => 2, "c" => 3, "d" => 4 })  #=> ["a", 1, "b", 2, "c", 3, "d", 4]
