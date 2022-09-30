### Question
#
# If we list all the natural numbers below 10 that are
# multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#
# (we should assume this method we make could be flexible enough to accept any number "n")
#

### Pseudocode
#
# create a method -> find_3_5_multiples, accepts "n" parameter
#
# there's several ways to accomplish this one, my strategy will use two separate loops
#
# create the starting variables:
#  -> "threes_index" that is initially set to 3
#  -> "threes_array" that is initially an empty array
#  -> "fives_index" that is initially set to 5
#  -> "fives_array" that is initially an empty array
#
# two `while` loops
#  -> they both run for as long as their respective indices are below "n"
#  -> inside the loop, we add the "index" to the array, then increment the index by 3 or 5 respectively
#
# once the loops complete, return the sum of sums from the "threes_array" and the "fives_array"
#
# LATE EDIT: it was revealed to me that this strategy counts multiples of 3 and 5 TWICE, which is a correct callout
#             to correct for this, in the 5s loop we won't add the number if it's divisible by 3!
#
# SIDE NOTE: sometimes I read 'unless' out loud as "if not", or "as long as... then don't"
#

def find_3_5_multiples(n)
  threes_index = 3
  threes_array = []
  fives_index = 5
  fives_array = []

  while threes_index < n
    threes_array << threes_index
    threes_index += 3
  end

  while fives_index < n
    unless fives_index % 3 == 0
      fives_array << fives_index
    end

    fives_index += 5
  end

  return threes_array.sum + fives_array.sum
end

p find_3_5_multiples(10) #=> 23
p find_3_5_multiples(1000) #=> 233168

### Final form
#
# In a way, the above format is 2*O(n), but it's also not? We skip over several numbers
# with each index increment
#
# If we put this in one loop with an index, we'd be checking index divisibility...
# This would read off as O(n) but we wouldn't skip numbers and we'd be adding more checks within the loop
#
# So the question is, can we do what we're doing above, with one loop, that skips unnecessary numbers
# I hesitate to call the following the "final form", because it's a bit ugly
# But I do believe it accomplishes the task in a single loop while skipping unnecessary numbers
#
# We also trimmed an extra multiples array since we only really need one
#

def find_3_5_multiples_ii(n)
  threes_index = 3
  fives_index = 5
  all_multiples = []

  while threes_index < n || fives_index < n
    if fives_index > threes_index
      all_multiples << threes_index

      threes_index += 3
    else
      unless fives_index % 3 == 0
        all_multiples << fives_index
      end

      fives_index += 5
    end
  end

  return all_multiples.sum
end

p find_3_5_multiples_ii(10) #=> 23
p find_3_5_multiples_ii(1000) #=> 233168
