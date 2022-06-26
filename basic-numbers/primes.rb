### Question
# Write a function that returns whether a given number is a prime number.
#
# NOTE: A prime number is a whole number, greater than 1, whose only factors are 1 and itself
#
# Input -> integer
# Output -> boolean
#
# Input: 4
# Output: false
#
# Input: 7
# Output: true
#
# Input: 99
# Output: false
#

### Pseudocode
# create a method -> is_prime?, accepts a "number" parameter
# 
#

def is_prime?(number)
  
end

p is_prime?(4) #=> false
p is_prime?(7) #=> true
p is_prime?(99) #=> false

### Final form ;-)

def reverse_words_ii!(input_string)
  input_string.split(" ").reverse.join(" ")
end

p reverse_words_ii!("popcorn is so cool isn’t it yeah i thought so") #=> "so thought i yeah it isn’t cool so is popcorn"
