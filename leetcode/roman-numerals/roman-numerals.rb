### Question
# https://leetcode.com/problems/roman-to-integer/
#
# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M
#
# What they represent:
#
# I => 1
# V => 5
# X => 10
# L => 50
# C => 100
# D => 500
# M => 1000
#
# For example, 2 is written as II in Roman numeral, just two ones added together.
# 12 is written as XII, which is simply X + II.
# The number 27 is written as XXVII, which is XX + V + II
#
# Roman numerals are usually written largest to smallest from left to right.
# However, the numeral for four is not IIII.
# Instead, the number four is written as IV.
# Because the one is before the five we subtract it making four.
# The same principle applies to the number nine, which is written as IX.
# There are six instances where subtraction is used:
#
# - I can be placed before V (5) and X (10) to make 4 and 9.
# - X can be placed before L (50) and C (100) to make 40 and 90.
# - C can be placed before D (500) and M (1000) to make 400 and 900.
#
# Given a roman numeral, convert it to an integer.
#
# Input -> string
# Output -> integer
#
# Input: 'III'
# Output: 3
#
# Input: 'XI'
# Output 11
#
# Input: 'IV'
# Output 4
#
# Input: 'XLIV'
# Output 44
#
# Input: 'XCII'
# Output 92
#
# Input: 'CDXC'
# Output 490
#
# Input: 'MXCIV'
# Output 1094
#

### Pseudocode
#
# some variable to keep track of the running total -> output integer
# loop through the numerals string (maybe `.split`)
#  -> each numeral we'll check against the hashmap, add the hashmap value to the running total
#
# 'IV', 'I' (always check the numeral at the next index), if it's a 'V', 'X' -> add the negative of the hashmap value to the total
#   ^       (current total is -1)
#   +5       (current total is 4)
#   -> next iteration of the loop, 'V', read from the hashmap and add it's value
#
# numerals.split('') => ['X', 'IV']
#

class RomanNumeralConverter
  NUMERAL_TO_INTEGER_MAP = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
  }

  def numeral_to_integer(numerals)
    output_integer = 0

    numerals_array = numerals.chars

    numerals_array.each_with_index do |numeral, index|
      numeral_value = NUMERAL_TO_INTEGER_MAP[numeral]

      if in_sequence?(numeral, numerals_array[index + 1])
        output_integer -= numeral_value
      else
        output_integer += numeral_value
      end
    end

    return output_integer
  end

  private

  def in_sequence?(numeral, next_numeral)
    numeral == 'I' && (next_numeral == 'V' || next_numeral == 'X') ||
    numeral == 'X' && (next_numeral == 'L' || next_numeral == 'C') ||
    numeral == 'C' && (next_numeral == 'D' || next_numeral == 'M')
  end
end

# There is a recording for this solution, so if you're curious to watch the TDD approach unfold,
#  shoot me a message and I can share the recording!
