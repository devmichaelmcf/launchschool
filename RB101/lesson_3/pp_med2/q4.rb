# To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Answer: String after method should be "pumpkinsrutabaga" as the appending INSIDE the method alters the contents of the original object.

# The array after the method call is still ['pumpkins'] it was originally as the reassignment in the method points the varibale to a NEW 
# OBJECT so therefore the original object defined outside the method is still unaltered (original array was ["pumpkins"].