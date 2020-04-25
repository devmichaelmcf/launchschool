def scream(words)
  words = words + "!!!!"
  return puts words
end

scream("This works")

# Or alternatively I could have had the method return a value, then puts(scream("This works"))

# The scream method return nil as currently set-up. puts on line 3 always returns nil.