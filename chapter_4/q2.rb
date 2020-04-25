# Write a method that takes a string as argument. The method should return a new, all-caps 
# version of the string, only if the string is longer than 10 characters. 
# Example: change "hello world" to "HELLO WORLD". 
# (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def upper(string)
  if string.length > 10
    string.upcase
  else 
    string
  end
end

p upper("Hello world")
p upper("yoyoyo")