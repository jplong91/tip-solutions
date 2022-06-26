### Question
# Write a function that prints out every number from 1 to N, with the following exceptions:
#
# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".
#
# Input -> integer
# Output -> N/A
#
# NOTE: We could make this function more autonomous by making our output an array or something
#

### Pseudocode
# create a method -> fizzbuzz, accepts "n" parameter
# 
# will go with a while loops since doing `while index <= n` is easy enough to write in
#  -> create an index outside the while loop and set it equal to 1
#  -> this index will be what we print out for 'fizzbuzz'
#  -> increment the index by 1 each iteration of the loop
#
# inside the loop, there will be an if/else conditional
#  -> follows all the rules outlined in the question
#  -> I do know that the divisiblity check for 3 & 5 needs to happen _first_ in the "if" statement
#
# no return necessary
#

def fizzbuzz(n)
  index = 1

  while index <= n
    if index % 3 == 0 && index % 5 == 0
      p "FIZZBUZZ"
    elsif index % 3 == 0
      p "FIZZ"
    elsif index % 5 == 0
      p "BUZZ"
    else
      p index
    end

    index += 1
  end
end

fizzbuzz(33) #=> N/A
fizzbuzz(102) #=> N/A

### Final form
# this is mostly to show off that a case statement is a viable option here
# you will more frequently find case statements as an alternative to if/else statements
# that use more than 0-2+ elsif's
#

def fizzbuzz_ii(n)
  (1..n).each do |num|
    case
    when num % 15 == 0
      p "FIZZBUZZ"
    when num % 3 == 0
      p "FIZZ"
    when num % 5 == 0
      p "BUZZ"
    else
      p num
    end
  end
end

fizzbuzz_ii(33) #=> N/A
fizzbuzz_ii(102) #=> N/A
