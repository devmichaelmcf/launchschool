# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# greetings is still the unaltered hash of { a: 'hi' }.
# This is because the informal_greeting assignment  points to a NEW object. Assignment points to a new object. Therefore the append is on a different 
# object that the greetings hash, therefore greetings hash is unaltered.

# CORRECT ANSWER: greetings = {a: 'hi there'}
# This due to the fact that greeting[:a] refers to the original object NOT as I thought a new object of only one item from the hash.