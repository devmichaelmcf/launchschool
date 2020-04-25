# What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

p scream("Yippeee")

# This will output nothing as execution of the method never 'got' to line 6 due to
# the return keyword on line 5.

# The method should RETURN "Yippeee!!!!" if we were to uses the puts method to display this
# return value to the standout. 

# Learning point. Return actually returned nil. It didn't return the previous line like
# I had assumed. Return keyword returned the evaluate result of the line IT WAS ON, not 
# any other lines. Line 5 had nothing on it therefore returb keyword returned nil.