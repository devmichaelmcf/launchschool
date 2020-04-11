=begin 
Longest Name/Reversed Names Assignment
A file names.txt contains first names, one per line.  Write a program to:
Write out the name that is longest, or the names, if more than one equally long.
Write out the names in reverse order.

Problem: iterate over a data structure of names. 
Set a longest name variable. Set an if condition to set longest_name variable if current variable.length > saved var.length
Return largest name
=end

original_text = "Michael John Jay Oliver Jean-Michel Maximillion"
first_names = original_text.split

def longest_name_finder(array)
longest_name = []


  array.each do |name|
  longest_name = name if name.length > longest_name.length
  end
  
  final_array = array.select do |name|
  name.length == longest_name.length
  end
  
 final_array
end

p longest_name_finder(first_names)


def reverse_all_names(array)
  reversed_names = array.map do |name|
    name.reverse
  end
  reversed_names
end

p reverse_all_names(first_names)