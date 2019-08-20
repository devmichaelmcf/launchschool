# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# My answer: Line 5 arr = [5, [5,8]]
# arr[0] += 2 is REASSIGNMENT therefore it 'points' the variable to a different object leaving the original object unaltered. THe value at arr[0] will
# equal 4 (the result of 2 + 2) but it will be a DIFFERENT OBJECT.

# arr[1][o] -= a. 
# arr[1] is [5, 8] and arr[1][0] is therefore 5 integer. 5 minus the value of a (2) leaves 3. This is NOT a new object due to particularities around array reassignment.
# If changing an element within an array, you are not reassigning but modifying the original object.

# Therefore

# a = 2 (it NEVER changed). 

# 

# b = [3,8] as the full array object was never reassigned, only an element altered.