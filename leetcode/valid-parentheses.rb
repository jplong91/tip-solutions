### Question
#
# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']',
# determine if the input string is valid.
#
# An input string is valid if:
#  1. Open brackets must be closed by the same type of brackets.
#  2. Open brackets must be closed in the correct order.
#
# Input -> string
# Output -> boolean
#
# Input: "()"
# Output: true
#
# Input: "()[]{}"
# Output: true
#
# Input: "(]"
# Output: false
#
# Input: "([]{})"
# Output: true
#
# Input: "([{}])"
# Output: true
#
# Input: "([{}})"
# Output: false
#
# Input: "}{"
# Output: false
#
# Input: "(())"
# Output: true
#
# Input: "("
# Output: false
#

### Pseudocode
#
# create `has_valid_parens?` method that accepts an input string argument
# create an hashmap for `paren_pairs` that maps valid pairs
# order matters, so let's create a `stack` variable initially set to an empty array
#
# we will need to know if a paren is opening or closing when reading from the stack
# `paren_pairs.keys` == opening parens, `paren_pairs.values` == closing parens
#   EDIT - reverse the key/value pairings so we can read from the closing parens
#
# `each_char` loop
#   -> if the char is an opening paren, add it to the stack
#   -> if a char is a closing paren, check last value in the stack
#     -> if that value matches it's opening paren partner, we continue looping
#         and `.pop` the last value off the stack
#     -> if that value does not match the opening paren partner, or it's not present
#         then we can return false
#
# if we've made it all the way through looping and the stack is empty, return true
#

def has_valid_parens?(input_string)
  paren_pairs = {
    ")" => "(",
    "]" => "[",
    "}" => "{",
  }
  stack = []

  input_string.each_char do |char|
    if paren_pairs.values.include?(char)
      stack << char
    else
      if stack.last == paren_pairs[char]
        stack.pop(1)
      else
        return false
      end
    end
  end

  return stack.empty?
end

p has_valid_parens?("()") #=> true
p has_valid_parens?("()[]{}") #=> true
p has_valid_parens?("(]") #=> false
p has_valid_parens?("([]{})") #=> true
p has_valid_parens?("([{}])") #=> true
p has_valid_parens?("([{}})") #=> false
p has_valid_parens?("}{") #=> false
p has_valid_parens?("(())") #=> true
p has_valid_parens?("(") #=> false

### Final Form
#
# This can probably be optimized further, but mostly showing off some syntax alternatives
# What I would actually implement in "production code" would likely look more similar
#  to this than the first solution...
#

def has_valid_parens_ii?(input_string)
  opening_parens = ["(", "[", "{"]
  closing_parens = [")", "]", "}"]
  paren_pairs = Hash[closing_parens.zip(opening_parens)]

  [].tap do |stack|
    input_string.each_char do |char|
      if opening_parens.include?(char)
        stack << char
      else
        if stack.last == paren_pairs[char]
          stack.pop(1)
        else
          return false
        end
      end
    end
  end.empty?
end

p has_valid_parens_ii?("()") #=> true
p has_valid_parens_ii?("()[]{}") #=> true
p has_valid_parens_ii?("(]") #=> false
p has_valid_parens_ii?("([]{})") #=> true
p has_valid_parens_ii?("([{}])") #=> true
p has_valid_parens_ii?("([{}})") #=> false
p has_valid_parens_ii?("}{") #=> false
p has_valid_parens_ii?("(())") #=> true
p has_valid_parens_ii?("(") #=> false
