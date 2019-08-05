# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the
# family member is in (kid, adult, or senior). Your solution should produce the hash below


# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

array_of_names = munsters.keys
counter = 0

loop do
  break if counter == array_of_names.size
  
  current_name = array_of_names[counter]
  current_age = munsters[current_name]["age"]

    if current_age > 65
     munsters[current_name]["age_group"] = "senior"
    elsif current_age <= 65 && current_age >= 18
      munsters[current_name]["age_group"] = "adult"
    elsif current_age < 18
      munsters[current_name]["age_group"] = "kid"
    end

  counter += 1
end

puts munsters