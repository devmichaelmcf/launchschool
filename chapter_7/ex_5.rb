#What method could you use to find out if a Hash contains a 
#specific value in it? Write a program to demonstrate this use.

hash = {a: 11, b: 22, c: 33, d: 44, e: 55 }

var = 11

if hash.has_value?(var)
puts "The hash has the value of #{var} in it."
else
puts "The hash does NOT have the value of #{var} in it."
end
