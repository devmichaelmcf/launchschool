# Question 3
# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice = advice.split
advice[6] = 'urgent'
advice = advice.join(" ")
p advice

# GIVEN ANSWER was gsub!(pattern, replacement). SO advice("important", "urgent")