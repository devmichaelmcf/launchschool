#code created 09/04/2020

def print_in_box(string)
  p str_length_int = string.length
  dotted_line = "-" * (str_length_int + 2)

  puts "|" + dotted_line + "|"
  puts "|" + " " + string + " " + "|"
  puts "|" + dotted_line + "|"


end

print_in_box("hello")
print_in_box("")

=begin
Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.

Problem: Print a string inside a larger window.
Example: empty string prints out a box. Input a string. Output also a string.
All of example is a string.


=end

