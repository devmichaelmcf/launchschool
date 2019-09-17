# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

=begin
Problem: With a string. Split the string into an array of substrings. Use reverse method on the substrings
Examples: string to string. Case unchanged.
Data structure: string to an array with each element in the array a word. 
Algorithm: get string, split string into an array of words, reverse words.
=end

def reverse_sentence(string)
  string.split.reverse.join(' ')
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


