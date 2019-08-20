# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) 
# in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# iterate through array elements using map as we want to tranform elements (which are three sub-arrays)
# sort through each array within the higher block
# set the arguments to reverse so it is in decending order
# return new array


ordered_arr = arr.map do |sub_arr|
  sub_arr.sort do |a, b| b <=> a
    end
end

p ordered_arr