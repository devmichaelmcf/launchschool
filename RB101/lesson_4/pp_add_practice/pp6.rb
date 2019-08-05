# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |element| element = element[0..2] }

p flintstones

# NOTE: I am aware map! mutates original caller. 