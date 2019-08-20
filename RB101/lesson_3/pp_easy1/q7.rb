def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

=begin This gives us a string that looks like a "recursive" method call:

"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call

eval(how_deep)
what will be the result?
=end

# ANSWER is 42. The eval method seems to add plus 8 five times and the number variable 2 for 42 total. Unclear how it works. 
# Possibly strips away actions and just gives back bare value/integers associated the actions. 