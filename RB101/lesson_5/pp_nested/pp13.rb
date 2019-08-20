# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration 
# the odd numbers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

new_arr = arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end

p new_arr

#LEARNING NOTES: USE the sort by method as top level method (not inner loop as i planned) because we are not changing any values only sorting them.
# THEN use select so the only values that get sorted are the odd ones we've selected. Select only selects values where the block is TRUTHY. Odd? is truthy for odd 
# integers so using select as inner iteration ensures we are sorting by odd only as we've SELECTED only the odd to have truthy return values of the block.

# The sorted array should look like this:

# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

=begin
input = array(nested)
output = new array sorted by value of odd numbers

iterate over elements of outer array with map as transforming position/data
sort element by making  each element return an odd number interger total
=end