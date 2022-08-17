### Question
#
# Given a hash, where the keys are strings representing food items,
# and the values are numbers representing the price of each food,
# return the amount someone would pay if they'd order one of each food from the entire menu.
#
# Input -> hash
# Output -> integer
#
# Input: {
#   "hot dog" => 2,
#   "hamburger" => 3,
#   "steak sandwich" => 5,
#   "fries" => 1,
#   "cole slaw" => 1,
#   "soda" => 2
# }
# Output: 14
#

### Pseudocode
#
# create a method -> order_the_menu, accepts a "menu" input hash
# create a variable called "total" that is initially set to 0
#
# `each` loop since we need to go through every element in the hash
#  -> add each 'value' from the key/value pair to our total variable
#
# return 'total'
#

def order_the_menu(menu)
  total = 0

  menu.each do |key, value|
    total += value
  end

  total
end

p order_the_menu({
  "hot dog" => 2,
  "hamburger" => 3,
  "steak sandwich" => 5,
  "fries" => 1,
  "cole slaw" => 1,
  "soda" => 2
}) #=> 14

### Final Form
#

def order_the_menu_ii(menu)
  menu.values.sum
end

p order_the_menu_ii({
  "hot dog" => 2,
  "hamburger" => 3,
  "steak sandwich" => 5,
  "fries" => 1,
  "cole slaw" => 1,
  "soda" => 2
}) #=> 14
