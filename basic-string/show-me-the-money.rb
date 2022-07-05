### Question
#
# Given a string, write a function that returns true
# if the “$” character is contained within the string or false if it is not.
#
# Input -> string
# Output -> boolean
#
# Input: "i hate $ but i love money i know i know im crazy"
# Output: true
#
# Input: "abcdefghijklmnopqrstuvwxyz"
# Output: false
#

### Pseudocode
#
# create a method -> is_there_money?, accepts "input_string" parameter
# 
# `each_char` loop
#  -> operates just as an `each` loop would, but it's for strings
# using an `if` statement, check if current value == $
#  -> `if` yes, return true, this exits the entire function
#  -> otherwise we do nothing, and continue looping
#
# once the loop is complete, return false
#  -> this implies we got through the entire string without finding a $ (we'd be very poor)
#

def is_there_money?(input_string)
  input_string.each_char do |char|
    if char == '$'
      return true
    end
  end

  return false
end

p is_there_money?("i hate $ but i love money i know i know im crazy") #=> true
p is_there_money?("abcdefghijklmnopqrstuvwxyz") #=> false

### Final form

def is_there_money_ii?(input_string)
  input_string.include?("$")
end

p is_there_money_ii?("i hate $ but i love money i know i know im crazy") #=> true
p is_there_money_ii?("abcdefghijklmnopqrstuvwxyz") #=> false
