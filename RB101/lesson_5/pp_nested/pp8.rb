# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowel_collection = []
vowels = "aeiou"

array_of_chars = hsh.values.flatten.join.chars
p array_of_chars
array_of_chars.each { |char| vowel_collection << char if vowels.include?(char)}
puts vowel_collection


=begin
set a vowel_collection variable
collect all string values strings into an array
convert strings into array of characters
flatten array structure if nested to single array
iterate over the string
if the character includes is a, e i o u push character to the vowel variable
=end

#Differences between my solution and given solution was: The include? method call it was easier to call the method ona string of vowel variables rather than
# the opposite way around. The include? method was only for a truth/false condition so it didn't matter the order.
# Textbook solution didn't save to a variable either tp print from. Also solution used three .each method calls to go down successive levels.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


vowels = "aeiou"

hsh.each do |key, value|
  value.each do |string|
    string.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end