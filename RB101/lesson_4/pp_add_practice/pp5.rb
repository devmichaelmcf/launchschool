# NOTE. I made explict choice to manually loop and select explicit characters/retrieve array date. I choose not to look for methods at all.


# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


# Find the index of the first name that starts with "Be"


counter = 0

loop do
  break if counter == flintstones.size
  
  if flintstones[counter][0..1] == "Be"
    puts "index #{counter} with the name of #{flintstones[counter]} was the first name to start with 'Be'. "
    break
  end
  counter += 1
end


# loop
# counter
# way to retrieve current value
# break the loop
# selection or transformation criteria