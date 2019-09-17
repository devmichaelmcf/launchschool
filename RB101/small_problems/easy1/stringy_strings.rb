# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

=begin
Problem: Get a positive integer. Return (not output) a string of 1's and 0's. Starting at 1. THe returned string length should equal integer input.
Examples: String always starts with 1 but string can end with 1 or 0. No empty strings given. Integer is always a whole number. No floats. Returned value is a STRING of digits.
Data structure: An array (later point joined to make the string output)
Algorithm: Get integer. Set range object of 1..given number. IF number.even is true then set number to 0, If number odd is true set number to 1.
=end

def stringy(num)
  arr = (1..num).to_a.map do |element|
  if element.odd?
    element = 1
  else
    element = 0
  end
  end
  p arr.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
