#Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

array = ["a", "b", "c", "d", "e", "f"]
array.each_with_index do |element, index|
puts "Index #{index} holds the value of #{element}."
end
