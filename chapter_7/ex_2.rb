#Difference between merge and merge! methods. Both combine hashes.
# merge method creates a new hash and leaves original unaltered.
#merge!  merges two hashes together and mutates original hash.

hash = { a: 1, b: 2, c: 3}
hash2 = {x: 97, y: 98, z: 99}

puts "This is original hash #{hash}"
puts "and second hash to use method with #{hash2}"
puts "======================="
puts "This is merge new hash, #{hash.merge(hash2)}"
puts "...and original hash unaltered #{hash}"
puts "======================="
puts "However...."
puts "This is using the merge! method to mutate the caller #{hash.merge!(hash2)}"
puts "...and see original hash is mutated #{hash}"
