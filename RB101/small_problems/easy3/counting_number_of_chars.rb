=begin
Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. 
Spaces should not be counted as a character.

input:

Please write word or multiple words: walk
output:

There are 4 characters in "walk".
input:

Please write word or multiple words: walk, don't run
output:

There are 13 characters in "walk, don't run".
=end

=begin
Problem: Ask user for input strings. Return an integer that is the amount of characters in the input string that are NOT empty spaces.
Examples: punctuation counts as a character to be counted. INput is a string of differing lengths in a sentence format.
Data structure: input string can likely be used. Or if need input string to an array.
Algorithm: display prompt for a user input string. Set variable to user string. From string delete(' ') and count remaining chars and display
this integer.
=end


def counting_chars
puts "Please write word or multiple words: "
user_str = gets.chomp

num_of_char = user_str.delete(' ').length
puts "There are #{num_of_char} in #{user_str}."
end

counting_chars