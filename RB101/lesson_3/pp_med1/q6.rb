# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# ANSWER: After analysis I would say that the output would be 34. The method does not mutate the original answer variable and value but only reassigns
# its return value to 'new answer'. New_answer = 50 which was return value of the method.
# The original answer variable pointing to its original place in memory was never altered so on the final line it is subtracting 8 from the orginal 
# value from line 1.