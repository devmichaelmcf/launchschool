# One day Spot was playing with the Munster family's home computer and he wrote a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail:

mess_with_demographics(munsters)

# Did the family's data get ransacked? Why or why not?

# ANSWER: Yes and no. The age reassignment within the method did not alter the original munsters array but merely reassigned the age variable within and
# only within the method and it's immediate return value.
# The family_member["gender"] = 'other' in fact DID alter the original munsters array as this was NOT reassignment but instead WAS a mutating method
# which added 'other' to the original array.

#GIVEN ANSWER: Spot will find himself in the "dog" house for this one. The family's data is all in shambles now.

# Why? Remember that in Ruby, what gets passed in the parameter list is not what it appears. Under the hood, ruby passes the object id of each item 
# rather than the value of the parameter. The method internally stores these object id's in locally scoped (private to the method) variables (named 
# per the method definition's parameter list).

# o Spot's demo_hash starts off pointing to the munsters hash. His program could wind up replacing that with some other object id and then the family's 
# data would be safe.

# In this case, the program does not reassign demo_hash -- it just uses it as-is. So the actual hash object that is being messed with inside of the 
# method IS the munsters hash.