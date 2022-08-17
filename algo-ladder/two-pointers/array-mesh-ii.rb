### Question
#
# Given ONE array of strings, return a new array that contains every
# combination of each string with every other string in the array.
#
# Input -> array
# Output -> array (of greater length)
#
# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]
#
# NOTE: there are no "aa", "bb", etc, combinations
#

### Pseudocode
#
# create a method -> array_mesh, accepts one "input_array" parameter
# create an empty "meshed_array" variable that is initially empty
#
# well, we are in the two-pointers column so I'm already thinking we need two indices here
# could use two `while` loops, but I recognize I do need to loop through every element in the outer loop
#
# outer loop -> `each_with_index`, inner loop -> `while`
#  -> in the outer loop, 'create' a "suffix_index" and set it equal to 0
#  -> the inner loop, will create the string that gets shoveled into the meshed array
#  -> that string will be base_element + array[suffix_index]
#  -> we'll wrap that string bit inside an if condition: `if base_index != suffix_index`
#  -> still in the inner loop, increment 'suffix_index' (outside of if condition)
#  -> the inner loop runs for as long as 'suffix_index' < `input_array.length`
#
# return meshed_array
#

def array_mesh(input_array)
  meshed_array = []

  input_array.each_with_index do |base_ele, base_index|
    suffix_index = 0

    while suffix_index < input_array.length
      if base_index != suffix_index
        meshed_array << base_ele + input_array[suffix_index]
      end

      suffix_index += 1
    end
  end

  return meshed_array
end

p array_mesh(["a", "b", "c", "d"]) #=> ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

### Final form
#
# `permutation` (and tangentally, `combination`) were cool TILs
# info here: https://ruby-doc.org/core-2.7.0/Array.html#method-i-permutation
#
# Can't say I've used these before for any reason, but they do the job for this algo problem!
#
# `tap` you may see more frequently
# `.tap` is used as a shortcut for manipulating an array/object, although it has other
#  cool capabilities as well
#
# The way I'm using it below, it functions similarly to initializing an empty array
#

def array_mesh_ii(input_array)
  [].tap do |output|
    input_array.permutation(2) do |combo|
      output << combo.join
    end
  end
end

p array_mesh_ii(["a", "b", "c", "d"]) #=> ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

