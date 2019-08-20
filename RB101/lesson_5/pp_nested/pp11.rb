# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to 
# the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_array = arr.map do |elem|
  elem.select do |num|
  num % 3 == 0
end
end

p new_array

=begin
input = array
output = array (same structure) but only including selection of original array that are multiples of 3

iterate over outer array with iterating method
iterate over each element
select element if element % 3 == 0
=end