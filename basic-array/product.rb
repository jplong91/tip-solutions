### Question
#
# Write a function that accepts an array of numbers
# and returns the product of all the numbers.
#
# Input -> array
# Output -> integer
#
# Input: [1, 2, 3, 4]
# Output: 24
#
# Input: [5, 0, 3]
# Output: 0
#
# Input: [5, -2, 3]
# Output: -30
#
# Input: [5, -2, -3]
# Output: 30
#

### Pseudocode
#
# create a method -> gimme_product, accepts "numbers" parameter
# create "product" variable, set it initially to `1`
#
# `each` loop to iterate through numbers array
#  -> multiply and set the "product" variable by each number inside the loop
#
# return the product
#

def gimme_product(numbers)
  product = 1

  numbers.each do |num|
    product *= num
  end

  return product
end

p gimme_product([1, 2, 3, 4]) #=> 24
p gimme_product([5, 0, 3]) #=> 0
p gimme_product([5, -2, 3]) #=> -30
p gimme_product([5, -2, -3]) #=> 30

### Final form

def gimme_product_ii(numbers)
  numbers.reduce(1) do |product, num|
    product *= num
  end
end

p gimme_product_ii([1, 2, 3, 4]) #=> 24
p gimme_product_ii([5, 0, 3]) #=> 0
p gimme_product_ii([5, -2, 3]) #=> -30
p gimme_product_ii([5, -2, -3]) #=> 30
