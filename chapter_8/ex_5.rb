=begin Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

Give us the following error when we run it?

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
=end

#This error is due to the fact the method doesn't recognize "block" with no "&" 
#as a valid argument to the method. Argument needs to be: &block.
