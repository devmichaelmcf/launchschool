# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array 
# and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

new_hash = {}

arr.map do |elem|
  new_hash[elem[0]] = elem[1]
end

p new_hash

=begin
input = array (nested). of symbols, intergers and strings.
output = hash (nested)

set new hash to capture return value
iterate over each element of the array
for each element set first part of string to hash[key] and second part value
print new hash
=end