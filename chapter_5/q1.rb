# What does the each method in the following program return after it is finished 
# executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# This code doesn't output anything as there is not puts method or other method that 
# that prints to the output.
# The .each method will return the collection it was called upon because that is its
# return value. Therefore it will return
#                                 => [1, 2, 3, 4, 5]