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
# create an "output_array" variable
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

p flatten_hash({ "a" => 1, "b" => 2, "c" => 3, "d" => 4 }) #=> ["a", 1, "b", 2, "c", 3, "d", 4]

### Final Form
#

def flatten_hash_ii(input_hash)
  input_hash.flatten
end

p flatten_hash_ii({ "a" => 1, "b" => 2, "c" => 3, "d" => 4 })  #=> ["a", 1, "b", 2, "c", 3, "d", 4]
