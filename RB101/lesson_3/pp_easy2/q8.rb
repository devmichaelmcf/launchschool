# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."


# ...remove everything starting from "house".

# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". 
# But leave the advice variable as "house training your pet dinosaur.".

# As a bonus, what happens if you use the String#slice method instead?

p advice.slice!("Few things in life are as important as ")
p advice

# Bonus. Using the non-mutating form of slice means that the original variable value is unchanged as the full original sentence. The mutating method 
# changes the original variable and KEEPS it. The non-mutating form returns the removed slice but leaves original variable unchanged.