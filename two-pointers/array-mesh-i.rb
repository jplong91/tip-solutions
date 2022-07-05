### Question
#
# Given two arrays of strings, return a new string that contains every combination
# of a string from the first array concatenated with a string from the second array.
#
# Input -> two arrays
# Output -> one array
#
# Input: ["a", "b", "c"], ["d", "e", "f", "g"]
# Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]
#

### Pseudocode
#
# create a method -> array_mesh, accepts two parameters, "array1" and "array2"
#
# create a "meshed_array" variable and initially set it to an empty array
# 
# two `each` loops
#  -> inside the inner loop, we combine the element from the outer loop, with the inner loop
#  -> add the combined element to the "meshed_array" variable
#
# return the meshed_array
#

def array_mesh(array1, array2)
  meshed_array = []

  array1.each do |ele1|
    array2.each do |ele2|
      meshed_array << ele1 + ele2
    end
  end

  meshed_array
end

p array_mesh(["a", "b", "c"], ["d", "e", "f", "g"]) #=> ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]

### Final form
#
# I'm unsure this is more "efficient", but it is a one-liner :shrug
#

def array_mesh_ii(array1, array2)
  array1.product(array2).map{ |combo| combo.join }
end

p array_mesh_ii(["a", "b", "c"], ["d", "e", "f", "g"]) #=> ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]
