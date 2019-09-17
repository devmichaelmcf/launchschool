# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

=begin
Problem: Take a Integer. Return the total of its visible digits.
Examples: Big num digits the method ignores the underscores. Input and output are integers.
Data structure: Array as a single ordered list should be sufficient.
Algorithm: Get integer. Set integer to string. Set string to an array of characters. Change array of string characters to array of integers.
Set a counting variable to 0. Using .each method add and reassgin the counting variable to each element.
=end

def sum(num)
counting_value = 0
num.to_s.chars { |element| counting_value += element.to_i }
counting_value
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).