### Question
#
# Given two strings, return true if they are anagrams of each other,and false if
# they are not. An anagram is a word, phrase, or name formed by rearranging
# the letters of another, such as cinema, formed from iceman. 
#
# Input -> two strings
# Output -> boolean
#
# Input: "silent", "listen"
# Output: true
#
# Input: "frog", "bear"
# Output: true
#

### Pseudocode
#
# create a method -> anagrams? that accepts two input strings
#
# we'll need to loop over both strings, create a hash for each
#  -> as we loop, if it's the first time seeing a letter (not present as a hash key)
#  -> then add that letter to the hash as a key, with a value of 1
#  -> if we have seen the letter, increase its "count" value by 1
#
# then we'll compare both hashes by loop through one of them
#  -> check for key presence in the other hash
#  -> check for a match count if the key exists
#  -> if anything does not match here we return false out of the function
#
# return true (assuming we've made it this far, the strings are anagrams)
#

def anagrams?(string1, string2)
  string1_letter_counts = {}
  string2_letter_counts = {}

  # build letter maps
  string1.each_char do |letter|
    if string1_letter_counts[letter]
      string1_letter_counts[letter] += 1
    else
      string1_letter_counts[letter] = 1
    end
  end

  string2.each_char do |letter|
    if string2_letter_counts[letter]
      string2_letter_counts[letter] += 1
    else
      string2_letter_counts[letter] = 1
    end
  end

  # compare letter maps for equality
  string1_letter_counts.each do |key, value|
    unless string2_letter_counts[key] && string2_letter_counts[key] == value
      return false
    end
  end

  return true
end

p anagrams?("silent", "listen") #=> true
p anagrams?("frog", "bear") #=> false

### Final Form
#
# Ruby is smart enough to check for hash equality without looping through
#  each hash key/value pair. And `.tally` is a great shortcut for this solution!
#

def anagrams_ii?(string1, string2)
  string1.chars.tally == string2.chars.tally
end

p anagrams_ii?("silent", "listen") #=> true
p anagrams_ii?("frog", "bear") #=> false
