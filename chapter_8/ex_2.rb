#What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

#It will print out an error message as the block within method was not called with .call
#Returns nil, because everything returns something and error message is nil because it
#signifies 'lack of content'.

#CORRECTION, Method returns a 'proc' object. Is this because the method block wasn't
# called???? Therefore the method turns into a variable of sorts holding the block value, 
# and returns the value????
