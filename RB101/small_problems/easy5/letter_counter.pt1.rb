=begin
Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Problem: take a string, make a hash with string size as the key and number of words that are the length of the key as a the values (eg. 4 word length key => 3 (occurances of that length in string)).

Examples: Key's are plain intgers one each (to infinity likely). Word length includes punctation in the length as fiddle! is counted as 7 letters. Empty string delivers an empty hash.

Data structure: hash as specificied in problem description. ALthough I need to change the string into an array split by sapce initially.

Algorithm: set str-to_array variable to string value and call split method on it to make value an array.
initialize empty hash {}
Loop over the array.
if word.length is a key in the hash.
   then add one to the value of this hash.
else hash[word.length] = 1 # create a hash if one not there
when iteration complete
have hash variable on final line of method.
=end

def word_sizes(string)
hash = {}
str_as_array = string.split

  str_as_array.each do |word|
  if hash[word.length] != nil
    hash[word.length] += 1
  else 
    hash[word.length] = 1
  end
  end
  hash
end



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}