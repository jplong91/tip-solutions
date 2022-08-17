### Question
# https://gist.github.com/jplong91/e21694d7f8a07c874cc3d81408c6a762
#
# Input -> array (of integers)
# Output -> integer
#
# For examples, check out the spec file!
#

### Pseudocode
#
# create class "BowlingGame" that accepts "pins" as it initializes
# create a method "total_score" that will output the that bowling game's score!
# create the skeleton of the spec file, setup the first example
#

class BowlingGame
  attr_reader :pins

  def initialize(pins)
    @pins = pins
  end

  def total_score
    pins.sum
  end
end
