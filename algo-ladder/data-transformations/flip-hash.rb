### Question
#
# Given a hash, create a new hash that has the keys and values switched.
#
# Input -> hash
# Output -> hash
#
# Input: { "a" => 1, "b" => 2, "c" => 3 }
# Output: { 1 => "a", 2 => "b", 3 => "c" }
#

### Pseudocode
#
# create a method -> flip_hash, accepts an input_hash parameter
# create an "output_hash" variable
#
# `each` loop through the input_hash
#  -> we have access to key + value, set the reversed pairings in the output_hash
#
# return 'output_hash'
#

def flip_hash(input_hash)
  output_hash = {}

  input_hash.each do |key, value|
    output_hash[value] = key
  end

  return output_hash
end

p flip_hash({ "a" => 1, "b" => 2, "c" => 3 }) #=> { 1 => "a", 2 => "b", 3 => "c" }

### Final Form
#

def flip_hash_ii(input_hash)
  input_hash.invert
end

p flip_hash_ii({ "a" => 1, "b" => 2, "c" => 3 })  #=> { 1 => "a", 2 => "b", 3 => "c" }
