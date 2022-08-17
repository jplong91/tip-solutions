### Question
#
# Given an array of strings,
# return a hash that provides of a count of how many times each string occurs.
#
# Input -> array (of strings)
# Output -> hash
#
# Input: [
#   "Dewey",
#   "Truman",
#   "Dewey",
#   "Dewey",
#   "Truman",
#   "Truman",
#   "Dewey",
#   "Truman",
#   "Truman",
#   "Dewey",
#   "Dewey"
# ]
# Output: { "Dewey" => 6, "Truman" => 5 }
#

### Pseudocode
#
# create a method -> vote_counter, accepts a "votes" input array
# create an empty hash called "counts"
#
# `each` loop since we need to go through every element
#  -> if the string is not in the hash, add it to the 'counts' with a value of '1'
#  -> if the string is in the hash, increment its value by 1
#
# return 'counts'
#

def vote_counter(votes)
  counts = {}

  votes.each do |vote|
    if counts[vote]
      counts[vote] += 1
    else
      counts[vote] = 1
    end
  end

  counts
end

p vote_counter([
  "Dewey",
  "Truman",
  "Dewey",
  "Dewey",
  "Truman",
  "Truman",
  "Dewey",
  "Truman",
  "Truman",
  "Dewey",
  "Dewey"
]) #=> '{ "Dewey" => 6, "Truman" => 5 }'

### Final Form
#

def vote_counter_ii(votes)
  votes.tally
end

p vote_counter_ii([
  "Dewey",
  "Truman",
  "Dewey",
  "Dewey",
  "Truman",
  "Truman",
  "Dewey",
  "Truman",
  "Truman",
  "Dewey",
  "Dewey"
]) #=> '{ "Dewey" => 6, "Truman" => 5 }'
