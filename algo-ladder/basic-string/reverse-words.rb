### Question
#
# Given a string of words, write a function that returns a new string
# that contains the words in reverse order.
#
# Input -> string
# Output -> string
#
# Input: "popcorn is so cool isn’t it yeah i thought so"
# Output: "so thought i yeah it isn’t cool so is popcorn"
#

### Pseudocode
#
# create a method -> reverse_words!, accepts "input_string" parameter
# any way I crack this, we need a `.split(" ")` on the input string, to get the whole words
#  -> this will be saved to a "words_array" variable
#
# at this point in algo practice hopefully we've demonstrated we can handle loops/indices
# so this seems fair to shortcut to `return words_array.reverse.join(" ")`
#

def reverse_words!(input_string)
  words_array = input_string.split(" ")

  return words_array.reverse.join(" ")
end

p reverse_words!("popcorn is so cool isn’t it yeah i thought so") #=> "so thought i yeah it isn’t cool so is popcorn"

### Final form ;-)

def reverse_words_ii!(input_string)
  input_string.split(" ").reverse.join(" ")
end

p reverse_words_ii!("popcorn is so cool isn’t it yeah i thought so") #=> "so thought i yeah it isn’t cool so is popcorn"
