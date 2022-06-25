### Question
# Given a string, write a function that returns a copy of the original string
# that has every other character capitalized.
# (Capitalization should begin with the second character.)
#
# Input -> string
# Output -> string (same size)
#
# Input: "hello, how are your porcupines today?"
# Output: "hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?"
#
# NOTE: spaces and unique characters like ',' or '.' get "capitalized"!
# NOTE: making a judgment call to lowercase all letters that aren't capitalized
#

### Pseudocode
# create a method -> with_alternate_capitals, accepts "input_string" parameter
# create an empty "output_string", string variable
# 
# `while` loop, so I can keep track of an index
#  -> outside of the loop, create an index and set it equal to 0
#  -> the while loop will run as long as the index is less than the `input_string.length`
#  -> increment the index by 1 each iteration of the loop
# 
# check if the index is _not_ divisble by 2 (implying it is odd)
#  -> if true, capitalize the letter and shovel it into the output string
#  -> if not true, just shovel the letter into the output string, no capitalization
#
# once the loop is complete, return the output string
#

def with_alternate_capitals(input_string)
  output_string = ""
  index = 0

  while index < input_string.length
    if index % 2 != 0
      output_string << input_string[index].upcase
    else
      output_string << input_string[index].downcase
    end

    index += 1
  end

  return output_string
end

p with_alternate_capitals("hello, how are your porcupines today?") #=> "hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?"

### Final form - something cleaner than this may exist
# DM me if you locate some Ruby magic that shaves off any of the method chaining!

def with_alternate_capitals_ii(input_string)
  input_string.chars.map.with_index do |char, index|
    index % 2 != 0 ? char.upcase : char.downcase
  end.join("")
end

p with_alternate_capitals_ii("hello, how are your porcupines today?") #=> "hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?"
