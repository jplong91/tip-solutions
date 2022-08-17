### Question
#
# Write a function to find the longest common prefix string amongst an array of strings.
#
# If there is no common prefix, return an empty string "".
#
# NOTE: All given inputs are in lowercase letters a-z.
#
# Input -> array of strings
# Output -> string
#
# Input: ["flower", "flow", "flight"]
# Output: "fl"
#
# Input: ["flower", "flower", "flow", "flight"]
# Output: "fl"
#
# Input: ["flower"]
# Output: "flower"
#
# Input: ["dog", "racecar", "car"]
# Output: ""
#

### Pseudocode
#
# this is a tough question that has tripped me up before
# it's ok to do some pseudocode then re-visit that part as you start the coding
#
# create a method -> longest_prefix, accepts one "words" parameter
# start with a "current_prefix" variable which will initially be the entire first word
#  from the "words" array
#
# `each` loop that `.drop`s the first word, since it's our initial prefix
#   -> inside the loop, we need the char arrays for both the prefix and the word
#   -> compare the char arrays using a `while` loop
#     -> this only runs as long as the shortest word. we can use a logical 'or' check
#   -> if both chars at the index equal each other, add to the longest prefix and continue (increment index)
#     -> reset `current_prefix` after grabbing the chars initially each `each` loop iteration
#     -> comparison will work and we'll validate prefix equality by re-building it
#   -> if the chars don't ==, break the `while` loop only (could check for emptiness to full return)
#
# return current_prefix
# EDIT: adding early return "" if words is an empty array
#

def longest_prefix(words)
  return "" if words.empty?

  current_prefix = words.first

  words.drop(1).each do |word|
    current_prefix_chars = current_prefix.chars
    word_chars = word.chars
    index = 0
    current_prefix = ""

    while index < current_prefix_chars.length || index < word_chars.length
      if current_prefix_chars[index] == word_chars[index]
        current_prefix << current_prefix_chars[index]
      else
        return "" if current_prefix.empty?
        break
      end

      index += 1
    end
  end

  return current_prefix
end

p longest_prefix(["flower", "flow", "flight"]) #=> "fl"
p longest_prefix(["flower", "flower", "flow", "flight"]) #=> "fl"
p longest_prefix(["flower"]) #=> "flower"
p longest_prefix(["dog", "racecar", "car"]) #=> ""
p longest_prefix([]) #=> ""

### Final Form
#
# There is a couple of ways to solve this problem but none are particularly pretty.
# I'm also trying to stay within "two pointer" territory and avoid using a hash to help
#  (not that it makes this that much easier to look at).
# That said my above method is kinda ugly, although seemingly efficient in my eyes.
# If you have a more elegant solution, do share!
#
