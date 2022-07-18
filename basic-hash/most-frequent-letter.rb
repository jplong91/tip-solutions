### Question
#
# Given a string, find the most commonly occurring letter.
#
# What about ties? Return both letters in a string...?
#
# Input -> string
# Output -> string (with one letter)
#
# Input: "peter piper picked a peck of pickled peppers"
# Output: "p"
#

### Pseudocode
#
# create a method -> most_common_letter, accepts a "string" input parameter
# create an empty hash called "letter_counts"
#
# `string.each_char` loop
#  -> if the letter is not in the hash as a key, add it to the hash with a value of "1"
#  -> if the letter is in the hash, increment the value of that letter by 1
#  -> might have to trim/remove empty space characters
#
# once we have the 'letter_counts' hash built out, we need to find the highest count value
# create a "highest_count" value and set it equal to 0
# create a "most_used_letter" value and set it equal to ""
#
# `letter_counts.each` loop
#  -> if the value is greater than the 'highest_count'
#    -> set the 'most_used_letter' equal to the key
#    -> set the 'highest_count' equal to the value
#  -> otherwise continue onwards
#
# return 'most_used_letter'
#

def most_common_letter(string)
  letter_counts = {}

  string.each_char do |letter|
    if letter == " "
    elsif letter_counts[letter]
      letter_counts[letter] += 1
    else
      letter_counts[letter] = 1
    end
  end

  highest_count = 0
  most_used_letter = ""

  letter_counts.each do |key, value|
    if value > highest_count
      most_used_letter = key
      highest_count = value
    elsif value == highest_count
      most_used_letter += key
    end
  end

  return most_used_letter
end

p most_common_letter("peter piper picked a peck of pickled peppers") #=> 'p'
p most_common_letter("   d   d     ") #=> 'd'
p most_common_letter("abcdeab") #=> 'ab'

### Final Form
#
# Tried implementing `max_by` but as far as I could tell it can't handle ties in the count hash
# This may be a slightly more elegant solution, but I believe it's slower from a Big O standpoint
# Either way, max of 26 values in the hash (alphabet) means this would run fast enough
#
# I also considered sorting the letter counts hash to avoid using the `.max` + `.select`
# But we'd still have to do some cartwheel logic to handle for count ties
#

def most_common_letter_ii(string)
  letter_counts = string
    .chars
    .select { |char| char != " " }
    .each_with_object({}) do |char, letter_counts|
      letter_counts[char] ? letter_counts[char] += 1 : letter_counts[char] = 1
    end

  highest_count = letter_counts.values.max

  letter_counts
    .select { |key, value| value == highest_count }
    .keys
    .join("")
end

p most_common_letter_ii("peter piper picked a peck of pickled peppers") #=> 'p'
p most_common_letter_ii("   d   d     ") #=> 'd'
p most_common_letter_ii("abcdeab") #=> 'ab'

# `.tally` is a sweet built in method to use here

def most_common_letter_iii(string)
  letter_counts = string
    .chars
    .select { |char| char != " " }
    .tally

  highest_count = letter_counts.values.max

  letter_counts
    .select { |key, value| value == highest_count }
    .keys
    .join("")
end

p most_common_letter_iii("peter piper picked a peck of pickled peppers") #=> 'p'
p most_common_letter_iii("   d   d     ") #=> 'd'
p most_common_letter_iii("abcdeab") #=> 'ab'
