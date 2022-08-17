### Question
#
# Find the largest product of any two numbers within a given array.
#
# Input -> array
# Output -> integer
#
# Input: [5, -2, 1, -9, -7, 2, 6]
# Output: 63 (-9 * -7)
#
# NOTE: can't multiply a number by itself
#

### Pseudocode
#
# create a method -> largest_product, accepts one "numbers" parameter
# create a "greatest_product" variable that is initially set to nil
# create a "base_index" set to 0
#
# we don't need to start the 2nd index at 0 each time
# if we did, we'd be checking a product we already checked
#
# outer loop -> `while`, inner loop -> `while`
#  -> outer loop runs for as long as `base_index < numbers.length`
#  -> increment base_index by 1 each iteration of the outer loop
#  -> create/reset a "multiplier_index" to be `base_index + 1`
#  -> inner loop runs for as long as `multiplier_index < numbers.length`
#    -> create a temp "product" variable equal to the product of numbers at both indices
#    -> if `product  > greatest_product`
#    -> if true, set greatest_product equal to the new product
#    -> if false, carry onwards
#    -> increment "multiplier_index" by 1
#
# return greatest_product
#

def largest_product(numbers)
  greatest_product = nil
  base_index = 0

  while base_index < numbers.length
    multiplier_index = base_index + 1

    while multiplier_index < numbers.length
      product = numbers[base_index] * numbers[multiplier_index]

      if !greatest_product || product > greatest_product
        greatest_product = product
      end

      multiplier_index += 1
    end

    base_index += 1
  end

  return greatest_product
end

# Had to add in that `!greatest_product` check to the `if` condition on line 47
# That way we set the greatest_product if it doesn't exist, or we get to return nil if
#  there's one number in the numbers array

p largest_product([5, -2, 1, -9, -7, 2, 6]) #=> 63
p largest_product([5, -2]) #=> -10
p largest_product([5]) #=> nil

### v2 (probably less efficient)

def largest_product_ii(numbers)
  [].tap do |products|
    numbers.combination(2) do |combo|
      products << combo[0] * combo[1]
    end
  end.max
end

p largest_product_ii([5, -2, 1, -9, -7, 2, 6]) #=> 63
p largest_product_ii([5, -2]) #=> -10
p largest_product_ii([5]) #=> nil

### Final form

def largest_product_iii(numbers)
  numbers.combination(2).reduce(nil) do |greatest_product, combo|
    product = combo.reduce(:*)

    if !greatest_product || product > greatest_product
      greatest_product = product
    end

    greatest_product
  end
end

# All of these operate seemingly fast due to small array sizes,
# I could see the first solution still benchmarking the best, but
#  `.combination` may be lightning fast under the hood, then we're just if checking a bunch of products
#
# I also realize the final form solution could be trimmed even further to:
#  `!greatest_product || product > greatest_product ? greatest_product = product : greatest_product`
#  but that is just too ugly and unreadable to really include =)

p largest_product_iii([5, -2, 1, -9, -7, 2, 6]) #=> 63
p largest_product_iii([5, -2]) #=> -10
p largest_product_iii([5]) #=> nil
