=begin Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

Example:

repeat('Hello', 3)
Output:

Hello
Hello
Hello
=end


def repeat(str, num)
  num.times { puts str}
end

repeat('Hello', 3)


# Learning point: When solving exercises, it can be beneficial to progress in small increments. We started out by defining repeat with two parameters. Then, to 
# ensure everything worked properly, we added puts string inside the method and ran the code.

