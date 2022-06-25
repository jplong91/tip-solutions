### Question
# Given a string, write a function that returns the first occurence of
# two duplicate characters in a row, and return the duplicated character.
#
# Input -> string
# Output -> string with one character
#
# Input: "abcdefghhijkkloooop"
# Output: "h"
#
# Input: "abcde  oooop"
# Output: " "
#
# Input: "abcde"
# Output: nil (although `""` could potentially work as well, for now `nil` will suffice)
#

### Pseudocode
# create a method -> first_duplicate_finder, accepts "input_string" parameter
# create a "previous_char" string variable and set it to ""
# 
# `each_char` loop
# using an `if` statement, check if current value == "previous_char"
#  -> `if` yes, return current `char`, this exits the entire function
#  -> otherwise set the previous char variable to the current char, and continue looping
#
# once the loop is complete, return `nil`
#  -> this implies we got through the entire string without finding a duplicate
#

def first_duplicate_finder(input_string)
  previous_char = ""

  input_string.each_char do |char|
    if char == previous_char
      return char
    else
      previous_char = char
    end
  end

  return nil
end

p first_duplicate_finder("abcdefghhijkkloooop") #=> "h"
p first_duplicate_finder("abcde  oooop") #=> " "
p first_duplicate_finder("abcde") #=> nil

### Final form =(
# A cleaner way to accomplish this doesn't come to mind right away
# There is another alternative solution using a `while` loop but the end result looks about the same
# As always, if you find a squeaky clean, working solution that you're excited about, DM me!
