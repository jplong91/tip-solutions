### Question
#
# You are given a hash in format #A, and you are to return the same data
# as a hash using format #B, as specified below
#
# Input -> hash
# Output -> hash
#
# Input: { 1 => ["A", "E", "I", "O", "U"] }
# Output: { "a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1 }
#
# Input: { 1 => ["A", "E"], 2 => ["D", "G"] }
# Output: { "a" => 1, "d" => 2, "e" => 1, "g" => 2 }
#
# Input: {
#   1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
#   2 => ["D", "G"],
#   3 => ["B", "C", "M", "P"],
#   4 => ["F", "H", "V", "W", "Y"],
#   5 => ["K"],
#   8 => ["J", "X"],
#   10 => ["Q", "Z"]
# }
# Output: {
#   "a" => 1,
#   "b" => 3,
#   "c" => 3,
#   "d" => 2,
#   "e" => 1,
#   "f" => 4,
#   "g" => 2,
#   "h" => 4,
#   "i" => 1,
#   "j" => 8,
#   "k" => 5,
#   "l" => 1,
#   "m" => 3,
#   "n" => 1,
#   "o" => 1,
#   "p" => 3,
#   "q" => 10,
#   "r" => 1,
#   "s" => 1,
#   "t" => 1,
#   "u" => 1,
#   "v" => 4,
#   "w" => 4,
#   "x" => 8,
#   "y" => 4,
#   "z" => 10
# }
#

### Pseudocode
#
# create a method -> super_etl, accepts an input_hash parameter
# create an "output" variable
#
# `each` loop through the input_hash
#  -> we have access to key + value, since value is array, we'll loop through value too
#    -> iterator can be called "letter"
#  -> using nested value loop, set new key + value pair in output
#    -> output key is 'letter' lowercased and value is 'key' from original input hash
#
# then we have to sort the output in alphabetical order
# it's not efficient but we can rebuild another new hash called "sorted_output"
#  -> loop through `output.keys.sort`, then create updated key + value pairings
#  -> the value is the same as `output[letter]`'s value
#
# return 'sorted_output'
#

def super_etl(input_hash)
  output = {}
  sorted_output = {}

  input_hash.each do |key, value|
    value.each do |letter|
      output[letter.downcase] = key
    end
  end

  output.keys.sort.each do |letter|
    sorted_output[letter] = output[letter]
  end

  return sorted_output
end

p super_etl({ 1 => ["A", "E", "I", "O", "U"] }) #=> see expected output above
p super_etl({ 1 => ["A", "E"], 2 => ["D", "G"] }) #=> see expected output above
p super_etl({
  1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2 => ["D", "G"],
  3 => ["B", "C", "M", "P"],
  4 => ["F", "H", "V", "W", "Y"],
  5 => ["K"],
  8 => ["J", "X"],
  10 => ["Q", "Z"]
}) #=> see expected output above

### Final Form
#
# `.sort` on a hash will return an array of nested arrays, but they are sorted properly.
# Calling `.to_h` zips everything back up in the same hash, except sorted!
#

def super_etl_ii(input_hash)
  {}.tap do |output|
    input_hash.each do |key, value|
      value.each do |letter|
        output[letter.downcase] = key
      end
    end
  end.sort.to_h
end

p super_etl_ii({ 1 => ["A", "E", "I", "O", "U"] }) #=> see expected output above
p super_etl_ii({ 1 => ["A", "E"], 2 => ["D", "G"] }) #=> see expected output above
p super_etl_ii({
  1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2 => ["D", "G"],
  3 => ["B", "C", "M", "P"],
  4 => ["F", "H", "V", "W", "Y"],
  5 => ["K"],
  8 => ["J", "X"],
  10 => ["Q", "Z"]
}) #=> see expected output above
