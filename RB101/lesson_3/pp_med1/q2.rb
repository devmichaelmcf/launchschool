# Question 2
# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# Answer: This is an error as we are trying to concatenate a string with an integer which is not possible using this specific code.
# To fix this we could change the integers to a string with the .to_s method and make the above code (40 + 2).to_s.
# Or, we could concatenate using #{} as this automatically changes the contents to a string. So athe above code would read.

puts "the value of 40 + 2 is  + #{(40 + 2)}"