# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# ANSWER: This code would print an array of 1 and 3. This is because the each method would iterate over index 0 of the numbers array before moving onto 1..2..3...
# The issue is that after it prints "1" the shift method is called on the array which deletes the first index. Therefore all the indexs slide down a space and the digit
# 2 is now placed in index [0] meaning the next iteration prints index [1] which is now 3.


# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# ANSWER: This prints out 1 and 2 as the each method only has 'time' to print the digits is index 0 and index 0. This is because in the two iterations
# the last two digits have been deleted by the pop method.