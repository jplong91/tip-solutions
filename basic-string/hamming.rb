### Question
# Given two strings of equal length, write a function that returns
# the number of characters that are different between the two strings.
#
# Input -> two strings
# Output -> integer
#
# Input: "ABCDEFG", "ABCXEOG"
# Output: 2
#
# Input: "ABCDEFG", "ABCDEFG"
# Output: 0
#
# Assumption: we're checking for character equality at each index, not "is this char in the string"
# NOTE: this could be case sensitive. Would be easy to add `downcase` or something
#

### Pseudocode
# create a method -> hamming, accepts two parameters, "string1" and "string2"
# create an integer variable "diff_count" and set it equal to 0
# 
# `while` loop with one index
#  -> create index outside the loop that is set to 0
#  -> the loop runs as long as index < string1.length (string1 and 2 are same length)
# each iteration of the loop, increment index
#
# inside the loop, if `string1[index] == string2[index]`, we do nothing and continue
# otherwise, increment our `diff_count` by one
#
# once the loop is complete, `return diff_count`
#

def hamming(string1, string2)
  diff_count = 0
  index = 0

  while index < string1.length
    unless string1[index] == string2[index]
      diff_count += 1
    end

    index += 1
  end

  return diff_count
end

p hamming("ABCDEFG", "ABCXEOG") #=> 2
p hamming("ABCDEFG", "ABCDEFG") #=> 0

### Final form
# TIL for me in here, as I hadn't used "argument unpacking" in this way before
# I'm even a little fuzzy on the details of how this works, but ruby is smart enough
# to hold onto parameters it is expecting each step of this method chain
#  -> you can imagine `each_with_index do |char, index|` as being valid,
#  -> and a regular reduce would look like `reduce() do |memo, element|`
#  -> in this case, we are able to put all valid arguments to use, the `(char, index)` are one layer nested
# 
# Finally, each iteration of a reduce must return the memo variable (in this case, diff_count)
# that variable also ends up becoming the final output since `reduce` is the last/only thing we do in this method
#

def hamming_ii(string1, string2)
  string1.chars.each_with_index.reduce(0) do |diff_count, (char, index)|
    unless char == string2[index]
      diff_count += 1
    end

    diff_count
  end
end

p hamming_ii("ABCDEFG", "ABCXEOG") #=> 2
p hamming_ii("ABCDEFG", "ABCDEFG") #=> 0
