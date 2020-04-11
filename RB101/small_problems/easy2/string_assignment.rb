=begin
String Assignment
Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
What does this code print out? Think about it for a moment before continuing.

If you said that code printed

Alice
Bob
you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
What does this print out? Can you explain these results?
=end

# MY ANSWER: The above code will print:
# BOB             (e.g original name variable string upcased)
# BOB             (the save_name variable upcased also)

# The reason why calling the mutating method of upcase! on the name variable ALSO also mutates the name variable is because both name and save_name
# variables POINT TO THE SAME OBJECT. Two variables are pointing directly to the same value. Therefore when we mutate the objects value
# but keep the same object then all variables pointing to that object are altered also. This highlights the wider values of 'value by reference'
# nature of mutatable objects where the objects have a link to the original object and how a method can be called on an object and mutate it.