# Write a program that checks if the sequence of characters "lab" exists in the 
# following strings. If it does exist, print out the word.

a = "laboratory"
b = "experiment"
c = "Pans Labyrinth"
d = "elaborate"
e = "polar bear"
array = [a, b , c , d , e]

array.each do |word|
if /lab/.match(word)
puts "MATCH! The 'lab' character string IS present in the word, '#{word}'."
puts "-----------------------"
else
puts "NO match! The 'lab' character string is NOT present in the word, '#{word}'."
puts "-----------------------"
end  
end
