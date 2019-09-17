# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. 
# The array will never be empty and the numbers will always be positive integers.

=begin
Problem: Get an array of integers. Output the average whole number of the integers.
Examples: Outputs are whole integers. No floats are present. All input values are integers.
Data structure: Input is array of integers. Output is integer only.
Algorithm: Get array of integers. Set a counting variable to 0. Use .each method to reassign variable with each value of array. 
Divide counting variable by array length. Return this value.
=end


def average(arr)
counting_variable = 0
arr.each {|element| counting_variable += element }
counting_variable / arr.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40