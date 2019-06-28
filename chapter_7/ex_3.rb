#Using some of Ruby's built-in Hash methods, write a program that
# loops through a hash and prints all of the keys. Then write a 
# program that does the same thing except printing the values.
# Finally, write a program that prints both.

hash = {a_symbol: 1, "a_string"=> 2, xx: "three", zz: 4.0}

hash.each_key {|key| puts "Key only-#{key}."}
puts "================"
hash.each_value {|value| puts "Value only-#{value}." }
puts "================"
hash.each_pair {|key, value| puts "This is the key-#{key}. This is the value-#{value}."}
