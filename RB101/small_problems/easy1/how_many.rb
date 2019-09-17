# Write a method that counts the number of occurrences of each element in a given array.

def count_occurrences(array)
hash = {}
array.uniq.each { |element| hash[element] = array.count(element) }
hash2 = hash.sort_by {|a,b| b<=>a}
hash2.each {|k,v| puts "#{k} => #{v}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

=begin
The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

Expected output:
car => 4
truck => 3
SUV => 1

Problem: An array is given. Output is a hash, where the hash keys are the name of the vehicles and value is the number of occurances. 
Examples: We are shown an array of strings input. Output is hash with string keys and integer key values.
Data structure: Array to a hash.
Algorithm: run the uniq method on the array to get a full list of hash key names. For each unique element make an initial state of hash[element] = vehicles.count(element),
=end

# Learning point: Intitally wanted to iterate AND count occurances at the same time AND use an if/else statement to check if key already existed. Eventual solution 
# was easier and more readable. Focus on WHAT I NEED for each part (the key, or the value, and work out how to get the information simply. Getting the correct order
# and output was more cifficult. Code can likely be refactored.
