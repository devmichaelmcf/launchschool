def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# My string looks like this now: pumpkins
# My array looks like this now: ["pumpkins", "rutabaga"]

# The reassignment within the method points to a different value so leaves original string unchanged.
# The appending operation alters the original value because it is a mutable value and thus changes the array even after the method call.