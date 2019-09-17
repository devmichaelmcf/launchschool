# Reverse It (Part 2)
# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. 
# Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

=begin
Problem: Get a string. Split the string into an array of words. Use map to iterate over the string and if word length >= 5 word.reverse. Return this.
Examples: case unaltered, Returns a string
Data structure: string to array to string.
Algorithm: get string, split string into an array of words, use map to do a transformation action on array elements.
=end

def reverse_words(string)
  array = string.split.map do |element| 
    if element.length >= 5
      element.reverse
    else 
      element
    end
end
array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS