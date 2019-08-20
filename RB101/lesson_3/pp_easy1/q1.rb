# Question 1
# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# I would expect line 7 to print out the original array of 1, 2, 2, 3 as the numbers variable was NOT mutated. 
# Line 5 would have RETURNED the value of 1, 2, 3 but this did not mutate the numbers array. To mutate the array
# The code should have used the method 'uniq!'