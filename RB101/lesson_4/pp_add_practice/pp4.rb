# Pick out the minimum age from our current Munster family hash:


# NOTE: I made the choice of doing stuff long and manually for additional practice. I was aware some light method hunting would have accomplished this in a method call or two
# but I did not search for methods even though I was aware.

#SOLUTION was to use:
# ages.values.min

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

array_of_values = ages.values
counter = 0
lowest_age = 7777

loop do
  break if array_of_values.size == counter
  
  current_age = array_of_values[counter]
  if lowest_age > current_age
    lowest_age = current_age
  end  
    counter += 1
  
end

p lowest_age

puts ages.select {|key, value| value == 10 }


# loop
# counter
# way to retrieve current value
# break
#critera for selection