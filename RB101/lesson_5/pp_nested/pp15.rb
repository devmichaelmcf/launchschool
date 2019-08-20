# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hsh|
  hsh.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

p new_arr

# Points of learning. Select was the right top level method but I did NOT have to use select for other inner blocks too as a roundabout way to select them (by giving
# them truthy value. Actually all values entered would be truthy since everything not NIL or FALSE is truthy with select method calls).
# I was NOT fully concious I could use method calls all? as with a block.
# I got confused about what values would have been selected. I failed to realise that the question mean all the outer hashes were even. Theefore array
# element at position 1 would fail to enter. I presumed an inner hash would count as a hash also. MY MISTAKE. There was ONLY three hashes but each hash had different
# amounts of key, value pairs. There is a difference between key, value pairs and the collection object of a hash itself.

# input = array of three elements which are hashes. All values are arrays.
# output = array. (selection of hashes where all integers are even).

# iterate over each element of the outer array (3 elements)
# check values
# if values are ALL even then save/select/delete other values
# within outer block iterate again over inner hashes key value pairs.
# if value of inner hashes are even select value.
# finish

# intial thoughts
# select method looks useful as I could set the select block condition of iterations to be an [2,4,6].even? condition so an iteration only evaulates to true (and 
# therefore selects the iteration when the condition is true). Select also return new array which is what we want.
# We likely need to iterate two levels. One for the array elements, within that, one iterating through hashes