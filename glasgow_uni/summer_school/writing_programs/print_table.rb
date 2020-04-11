=begin

9.3 Print Tables

You are supplied with a text file called games.txt containing comma separated values on multiple lines. 
Write a program which takes the input file and prints it in a neat table format.


Sample games.txt file:

Game,Release Date,Developer,Price

DOOM,1993,id Software,£9.99

Worms,1995,Team17,£9.99

System Shock 2,1999,Irrational Games,£12.99

Deus Ex,2000,Ion Storm,£9.99

Assassin's Creed,2007,Ubisoft Montreal,£15.99

Castlevania,1986,Konami,£9.99

The Sims,2000,Maxis,£12.99

God of War,2005,SCE,£19.99


Output:

+------------------+--------------+------------------+--------+
| Game             | Release Date | Developer        | Price  |
+------------------+--------------+------------------+--------+
| DOOM             | 1993         | id Software      | £9.99  |
| Worms            | 1995         | Team17           | £9.99  |
| System Shock 2   | 1999         | Irrational Games | £12.99 |
| Deus Ex          | 2000         | Ion Storm        | £9.99  |
| Assassin's Creed | 2007         | Ubisoft Montreal | £15.99 |
| Castlevania      | 1986         | Konami           | £9.99  |
| The Sims         | 2000         | Maxis            | £12.99 |
| God of War       | 2005         | SCE              | £19.99 |
+------------------+--------------+------------------+--------+
=end

sample_games =
[["Game","Release Date","Developer,Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

def initialize_table
puts "+------------------+--------------+------------------+---------+"
puts "| Game             | Release date | Developer        | Price   |"
puts "+------------------+--------------+------------------+---------+"
puts "|                  |              |                  |         |"
puts "|                  |              |                  |         |"

initialize_table

=begin
sample_games =
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]
=end

def initialize_table(nested_array)
puts "+------------------+--------------+------------------+---------+"
puts "| Game             | Release date | Developer        | Price   |"
puts "+------------------+--------------+------------ ------+---------+"
puts "| #{nested_array[1][0]}             | #{nested_array[1][1]}         | #{nested_array[1][2]}      | #{nested_array[1][3]}   |"
puts "| #{nested_array[2][0]}            | #{nested_array[2][1]}         | #{nested_array[2][2]}           | #{nested_array[2][3]}   |"
puts "| #{nested_array[3][0]}   | #{nested_array[3][1]}         | #{nested_array[3][2]}      | #{nested_array[3][3]}   |"
puts "|                  |              |                  |         |"
puts "|                  !              |                  |         |"
puts "|                  |              |                  |         |"
puts "|                  |              |                  |         |"
puts "|                  |              |                  |         |"
puts "+------------------+--------------+------------------+---------+"
end

initialize_table(sample_games)

line_array = []

5.times do 
  line_array << "+"
  line_array << "-" * 10
end

line_array.join



games_array = ["Game","Release Date","Developer,Price"]


def find_largest_width_for_columns(array)
  
end

def initialize_table(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  5.times do 
  line_array << "+"
  line_array << "-" * 10

  
  end
  line_array.join
end

initialize_table(1,1,1,1)


games_array = ["Game","Release Date","Developer","Price"]


def find_largest_width_for_columns(array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1}

column_hash["col1"] = array[0].length
column_hash["col2"] = array[1].length
column_hash["col3"] = array[2].length
column_hash["col4"] = array[3].length

column_hash

end

p find_largest_width_for_columns(games_array)



games_array = sample_games =
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

#["Game","Release Date","Developer","Price"]


def find_largest_width_for_columns(array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1   }

array.each do |nested_array|
column_hash["col1"] = nested_array[0].length if nested_array[0].length > column_hash["col1"]
column_hash["col2"] = nested_array[1].length if nested_array[1].length > column_hash["col2"]
column_hash["col3"] = nested_array[2].length if nested_array[2].length > column_hash["col3"]
column_hash["col4"] = nested_array[3].length if nested_array[3].length > column_hash["col4"]
end

column_hash
end

def initialize_table(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  line_array << "+"

  
  line_array << "-" * col1_width
  line_array << "+"
  line_array << "-" * col2_width
  line_array << "+"
  line_array << "-" * col3_width
  line_array << "+" 
  line_array << "-" * col4_width
  
  
  line_array.join
end

p initialize_table(1,1,1,1)

max_width_columns = find_largest_width_for_columns(games_array)

p column1_max_width_integer = max_width_columns["col1"]
p column2_max_width_integer = max_width_columns["col2"]
p column3_max_width_integer = max_width_columns["col3"]
p column4_max_width_integer = max_width_columns["col4"]


p initialize_table(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)




games_array = sample_games =
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

#["Game","Release Date","Developer","Price"]


# iterate over the nested array and find the max integer values for each "column" in the full array.
def find_largest_width_for_columns(outer_array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1   }

outer_array.each do |nested_array|
column_hash["col1"] = nested_array[0].length if nested_array[0].length > column_hash["col1"]
column_hash["col2"] = nested_array[1].length if nested_array[1].length > column_hash["col2"]
column_hash["col3"] = nested_array[2].length if nested_array[2].length > column_hash["col3"]
column_hash["col4"] = nested_array[3].length if nested_array[3].length > column_hash["col4"]
end

column_hash
end

def initialize_table(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  line_array << "+"

  
  line_array << "-" * col1_width
  line_array << "+"
  line_array << "-" * col2_width
  line_array << "+"
  line_array << "-" * col3_width
  line_array << "+" 
  line_array << "-" * col4_width
  
  
  line_array.join
end

p initialize_table(1,1,1,1)

#hash with columns as keys and max size value as an integer
max_width_columns = find_largest_width_for_columns(games_array)

# Set individual columns variables as the correct integer value from the max_width_columns hash above
p column1_max_width_integer = max_width_columns["col1"]
p column2_max_width_integer = max_width_columns["col2"]
p column3_max_width_integer = max_width_columns["col3"]
p column4_max_width_integer = max_width_columns["col4"]


p initialize_table(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)




games_array = sample_games =
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

#["Game","Release Date","Developer","Price"]


# iterate over the nested array and find the max integer values for each "column" in the full array.
def find_largest_width_for_columns(outer_array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1   }

outer_array.each do |nested_array|
column_hash["col1"] = nested_array[0].length if nested_array[0].length > column_hash["col1"]
column_hash["col2"] = nested_array[1].length if nested_array[1].length > column_hash["col2"]
column_hash["col3"] = nested_array[2].length if nested_array[2].length > column_hash["col3"]
column_hash["col4"] = nested_array[3].length if nested_array[3].length > column_hash["col4"]
end

column_hash
end

def initialize_table_top_line(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  line_array << "+"

  
  line_array << "-" * col1_width
  line_array << "+"
  line_array << "-" * col2_width
  line_array << "+"
  line_array << "-" * col3_width
  line_array << "+" 
  line_array << "-" * col4_width
  
  
  line_array.join
end


#hash with columns as keys and max size value as an integer
max_width_columns = find_largest_width_for_columns(games_array)

# Set individual columns variables as the correct integer value from the max_width_columns hash above
p column1_max_width_integer = max_width_columns["col1"]
p column2_max_width_integer = max_width_columns["col2"]
p column3_max_width_integer = max_width_columns["col3"]
p column4_max_width_integer = max_width_columns["col4"]


p initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)








games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

#["Game","Release Date","Developer","Price"]


# iterate over the nested array and find the max integer values for each "column" in the full array.
def find_largest_width_for_columns(outer_array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1   }

outer_array.each do |nested_array|
column_hash["col1"] = nested_array[0].length if nested_array[0].length > column_hash["col1"]
column_hash["col2"] = nested_array[1].length if nested_array[1].length > column_hash["col2"]
column_hash["col3"] = nested_array[2].length if nested_array[2].length > column_hash["col3"]
column_hash["col4"] = nested_array[3].length if nested_array[3].length > column_hash["col4"]
end

column_hash
end

def initialize_table_top_line(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  line_array << "+"

  
  line_array << "-" * col1_width
  line_array << "+"
  line_array << "-" * col2_width
  line_array << "+"
  line_array << "-" * col3_width
  line_array << "+" 
  line_array << "-" * col4_width
  
  
  line_array.join
end


#hash with columns as keys and max size value as an integer
max_width_columns = find_largest_width_for_columns(games_array)

# Set individual columns variables as the correct integer value from the max_width_columns hash above
p column1_max_width_integer = max_width_columns["col1"]
p column2_max_width_integer = max_width_columns["col2"]
p column3_max_width_integer = max_width_columns["col3"]
p column4_max_width_integer = max_width_columns["col4"]


p initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)

games_array.each do |inner_array|

  inner_array.each do |element|
    print "|" + element 
  end
end



games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

#["Game","Release Date","Developer","Price"]


# iterate over the nested array and find the max integer values for each "column" in the full array.
def find_largest_width_for_columns(outer_array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1   }

outer_array.each do |nested_array|
column_hash["col1"] = nested_array[0].length if nested_array[0].length > column_hash["col1"]
column_hash["col2"] = nested_array[1].length if nested_array[1].length > column_hash["col2"]
column_hash["col3"] = nested_array[2].length if nested_array[2].length > column_hash["col3"]
column_hash["col4"] = nested_array[3].length if nested_array[3].length > column_hash["col4"]
end

column_hash
end

def initialize_table_top_line(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  line_array << "+"

  
  line_array << "-" * col1_width
  line_array << "+"
  line_array << "-" * col2_width
  line_array << "+"
  line_array << "-" * col3_width
  line_array << "+" 
  line_array << "-" * col4_width
  
  
  line_array.join
end


#hash with columns as keys and max size value as an integer
max_width_columns = find_largest_width_for_columns(games_array)

# Set individual columns variables as the correct integer value from the max_width_columns hash above
p column1_max_width_integer = max_width_columns["col1"]
p column2_max_width_integer = max_width_columns["col2"]
p column3_max_width_integer = max_width_columns["col3"]
p column4_max_width_integer = max_width_columns["col4"]


p initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)

games_array.each do |inner_array|

  inner_array.each do |element|
    print "|" + element
  end
  print "|"
end




games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

#["Game","Release Date","Developer","Price"]


# iterate over the nested array and find the max integer values for each "column" in the full array.
def find_largest_width_for_columns(outer_array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1   }

outer_array.each do |nested_array|
column_hash["col1"] = nested_array[0].length if nested_array[0].length > column_hash["col1"]
column_hash["col2"] = nested_array[1].length if nested_array[1].length > column_hash["col2"]
column_hash["col3"] = nested_array[2].length if nested_array[2].length > column_hash["col3"]
column_hash["col4"] = nested_array[3].length if nested_array[3].length > column_hash["col4"]
end

column_hash
end

def initialize_table_top_line(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  line_array << "+"

  
  line_array << "-" * col1_width
  line_array << "+"
  line_array << "-" * col2_width
  line_array << "+"
  line_array << "-" * col3_width
  line_array << "+" 
  line_array << "-" * col4_width
  
  
  line_array.join
end


#hash with columns as keys and max size value as an integer
max_width_columns = find_largest_width_for_columns(games_array)

# Set individual columns variables as the correct integer value from the max_width_columns hash above
p column1_max_width_integer = max_width_columns["col1"]
p column2_max_width_integer = max_width_columns["col2"]
p column3_max_width_integer = max_width_columns["col3"]
p column4_max_width_integer = max_width_columns["col4"]


p initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)

games_array.each do |inner_array|

  inner_array.each do |element|
    print "|" + element #trouble making  this take max width
  end
  puts "|"
  puts initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)
end













games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

#["Game","Release Date","Developer","Price"]


# iterate over the nested array and find the max integer values for each "column" in the full array.
def find_largest_width_for_columns(outer_array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1   }

outer_array.each do |nested_array|
column_hash["col1"] = nested_array[0].length if nested_array[0].length > column_hash["col1"]
column_hash["col2"] = nested_array[1].length if nested_array[1].length > column_hash["col2"]
column_hash["col3"] = nested_array[2].length if nested_array[2].length > column_hash["col3"]
column_hash["col4"] = nested_array[3].length if nested_array[3].length > column_hash["col4"]
end

column_hash
end

def initialize_table_top_line(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  line_array << "+"

  
  line_array << "-" * col1_width
  line_array << "+"
  line_array << "-" * col2_width
  line_array << "+"
  line_array << "-" * col3_width
  line_array << "+" 
  line_array << "-" * col4_width
  line_array << "+"
  
  line_array.join
end


#hash with columns as keys and max size value as an integer
max_width_columns = find_largest_width_for_columns(games_array)

# Set individual columns variables as the correct integer value from the max_width_columns hash above
p column1_max_width_integer = max_width_columns["col1"]
p column2_max_width_integer = max_width_columns["col2"]
p column3_max_width_integer = max_width_columns["col3"]
p column4_max_width_integer = max_width_columns["col4"]


puts initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)

games_array.each do |inner_array|

  inner_array.each do |element|
    print "|" + element #trouble making  this take max width
  end
  puts "|"
  puts initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)
end




games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

#["Game","Release Date","Developer","Price"]


# iterate over the nested array and find the max integer values for each "column" in the full array.
def find_largest_width_for_columns(outer_array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1   }
Hash.new(1)

outer_array.each do |nested_array|
column_hash["col1"] = nested_array[0].length if nested_array[0].length > column_hash["col1"]
column_hash["col2"] = nested_array[1].length if nested_array[1].length > column_hash["col2"]
column_hash["col3"] = nested_array[2].length if nested_array[2].length > column_hash["col3"]
column_hash["col4"] = nested_array[3].length if nested_array[3].length > column_hash["col4"]
end

column_hash
end

def initialize_table_top_line(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  line_array << "+"

  
  line_array << "-" * col1_width
  line_array << "+"
  line_array << "-" * col2_width
  line_array << "+"
  line_array << "-" * col3_width
  line_array << "+" 
  line_array << "-" * col4_width
  line_array << "+"
  
  line_array.join
end


#hash with columns as keys and max size value as an integer
max_width_columns = find_largest_width_for_columns(games_array)

# Set individual columns variables as the correct integer value from the max_width_columns hash above
p column1_max_width_integer = max_width_columns["col1"]
p column2_max_width_integer = max_width_columns["col2"]
p column3_max_width_integer = max_width_columns["col3"]
p column4_max_width_integer = max_width_columns["col4"]


puts initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)

games_array.each do |inner_array|

  inner_array.each do |element|
    print "|" + element #trouble making  this take max width
  end
  puts "|"
  puts initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)
end


def return_a_string_to_max_column_width(string, column_width_as_integer)
  string + " " * (column_width_as_integer - string.length)
end

return_a_string_to_max_column_width("abcd",11)

games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

#["Game","Release Date","Developer","Price"]


# iterate over the nested array and find the max integer values for each "column" in the full array.
def find_largest_width_for_columns(outer_array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1   }
Hash.new(1)

outer_array.each do |nested_array|
column_hash["col1"] = nested_array[0].length if nested_array[0].length > column_hash["col1"]
column_hash["col2"] = nested_array[1].length if nested_array[1].length > column_hash["col2"]
column_hash["col3"] = nested_array[2].length if nested_array[2].length > column_hash["col3"]
column_hash["col4"] = nested_array[3].length if nested_array[3].length > column_hash["col4"]
end

column_hash
end

def initialize_table_top_line(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  line_array << "+"

  
  line_array << "-" * col1_width
  line_array << "+"
  line_array << "-" * col2_width
  line_array << "+"
  line_array << "-" * col3_width
  line_array << "+" 
  line_array << "-" * col4_width
  line_array << "+"
  
  line_array.join
end


#hash with columns as keys and max size value as an integer
max_width_columns = find_largest_width_for_columns(games_array)

# Set individual columns variables as the correct integer value from the max_width_columns hash above
p column1_max_width_integer = max_width_columns["col1"]
p column2_max_width_integer = max_width_columns["col2"]
p column3_max_width_integer = max_width_columns["col3"]
p column4_max_width_integer = max_width_columns["col4"]
# use this 



puts initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)

games_array.each do |inner_array|

  inner_array.each do |element|
    print "|" + element  #trouble making  this take max width
  end
  puts "|"
  puts initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)
end

def return_a_string_to_max_column_width(string, column_width_as_integer)
  string + " " * (column_width_as_integer - string.length)
end

p return_a_string_to_max_column_width("abcd",11)

games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]


new_nested_array_of_str_with_correct_spacing = games_array.map do |inner_array|
                                                 return_a_string_to_max_column_width
                                               end
                                                   

def return_a_string_to_max_column_width(string, column_width_as_integer)
  string + " " * (column_width_as_integer - string.length)
end

p return_a_string_to_max_column_width("abcd",11)

games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]


length1 = 12
length2 = 3
length3 = 5
length4 = 19

new_nested_array_of_str_with_correct_spacing = games_array.map do |inner_array|
                                                 inner_array.each_with_index do |element, index|
                                                   if index == 0 
                                                     return_a_string_to_max_column_width(element, length1)
                                                    else
                                                      next
                                                   end

                                                 end
                                               end
                                                   

p new_nested_array_of_str_with_correct_spacing






=begin
so i'd create a small method lcalled something like 'fill_in_space(string)" then I'd input my original string in as an argument and it would output a correct one. The only issue i have is wouldn't i need four methods though? I'm struggling to see how I could make it so the string adopted the correct lenght because that changes based on column. Wait a minute though, i could add the column as a second paramenter 
3:18:33 PM: Michael McFadden: oh that makes a bit more sense 
3:19:13 PM: Michael McFadden: fill_in_space(string, column_width_as_integer) 
3:19:29 PM: Michael McFadden: maybe something like that 
3:19:59 PM: Michael McFadden: then it would output something on the width but with the string in it 
=end

def return_a_string_to_max_column_width(string, column_width_as_integer)
  string + " " * (column_width_as_integer - string.length)
end

p return_a_string_to_max_column_width("abcd",11)

new_nested_array_of_str_with_correct_spacing = " "

games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]


length1 = 12
length2 = 3
length3 = 5
length4 = 19

new_nested_array_of_str_with_correct_spacing = games_array.map do |inner_array|
                                                 inner_array.map do |element|
                                                   if element.index == 0 
                                                     return_a_string_to_max_column_width(element, length1)
                                                   elsif element.index == 1
                                                     return_a_string_to_max_column_width(element, length2)
                                                   elsif element.index == 2
                                                     return_a_string_to_max_column_width(element, length3)
                                                   elsif element.index == 3
                                                     return_a_string_to_max_column_width(element, length4)
                                                   end
                                                 end
                                               end
                                                   

p new_nested_array_of_str_with_correct_spacing




working code

games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]


games_array.each do |inner_array|
  inner_array.each do |element|
    puts inner_array.index(element)
  end
end



=begin
so i'd create a small method lcalled something like 'fill_in_space(string)" then I'd input my original string in as an argument and it would output a correct one. The only issue i have is wouldn't i need four methods though? I'm struggling to see how I could make it so the string adopted the correct lenght because that changes based on column. Wait a minute though, i could add the column as a second paramenter 
3:18:33 PM: Michael McFadden: oh that makes a bit more sense 
3:19:13 PM: Michael McFadden: fill_in_space(string, column_width_as_integer) 
3:19:29 PM: Michael McFadden: maybe something like that 
3:19:59 PM: Michael McFadden: then it would output something on the width but with the string in it 
=end

def return_a_string_to_max_column_width(string, column_width_as_integer)
  string + " " * (column_width_as_integer - string.length)
end

p return_a_string_to_max_column_width("abcd",11)

new_nested_array_of_str_with_correct_spacing = " "

games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]


length1 = 12
length2 = 3
length3 = 5
length4 = 19

new_nested_array_of_str_with_correct_spacing = games_array.map do |inner_array|
                                                 inner_array.map do |element|
                                                   if inner_array.index(element) == 0 
                                                     return_a_string_to_max_column_width(element, length1)
                                                   elsif inner_array.index(element) == 1
                                                     return_a_string_to_max_column_width(element, length2)
                                                   elsif inner_array.index(element) == 2
                                                     return_a_string_to_max_column_width(element, length3)
                                                   elsif inner_array.index(element) == 3
                                                     return_a_string_to_max_column_width(element, length4)
                                                   end
                                                 end
                                               end
                                                   

p new_nested_array_of_str_with_correct_spacing






games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]

#["Game","Release Date","Developer","Price"]


# iterate over the nested array and find the max integer values for each "column" in the full array.
def find_largest_width_for_columns(outer_array)
column_hash = {"col1" => 1, "col2" => 1, "col3" => 1, "col4" => 1   }


outer_array.each do |nested_array|
column_hash["col1"] = nested_array[0].length if nested_array[0].length > column_hash["col1"]
column_hash["col2"] = nested_array[1].length if nested_array[1].length > column_hash["col2"]
column_hash["col3"] = nested_array[2].length if nested_array[2].length > column_hash["col3"]
column_hash["col4"] = nested_array[3].length if nested_array[3].length > column_hash["col4"]
end
# needed to add +1 to stop bugs when substracting string length from the space in column set as when string was maximum size it was equal to the column size which lead to introdcution of zero into a str * (strin)

column_hash
end

def initialize_table_top_line(col1_width, col2_width, col3_width, col4_width)
  line_array = []

  line_array << "+"

  
  line_array << "-" * col1_width
  line_array << "+"
  line_array << "-" * col2_width
  line_array << "+"
  line_array << "-" * col3_width
  line_array << "+" 
  line_array << "-" * col4_width
  line_array << "+"
  
  line_array.join
end


#hash with columns as keys and max size value as an integer
max_width_columns = find_largest_width_for_columns(games_array)

# Set individual columns variables as the correct integer value from the max_width_columns hash above
p column1_max_width_integer = max_width_columns["col1"]
p column2_max_width_integer = max_width_columns["col2"]
p column3_max_width_integer = max_width_columns["col3"]
p column4_max_width_integer = max_width_columns["col4"]
# use this 


#NEW DELETE IF CODE BELOW BREAKS PROGRAM


def return_a_string_to_max_column_width(string, column_width_as_integer)
  string + " " * (column_width_as_integer - string.length)
end

#return_a_string_to_max_column_width("abcd",11)

new_nested_array_of_str_with_correct_spacing = " "

games_array = 
[["Game","Release Date","Developer","Price"],
["DOOM","1993","id Software","£9.99"],
["Worms","1995","Team17","£9.99"],
["System Shock 2","1999","Irrational Games","£12.99"],
["Deus Ex","2000","Ion Storm","£9.99"],
["Assassin's Creed","2007","Ubisoft Montreal","£15.99"],
["Castlevania","1986","Konami","£9.99"],
["The Sims","2000","Maxis","£12.99"],
["God of War","2005","SCE","£19.99"]]


length1 = column1_max_width_integer 
length2 = column2_max_width_integer
length3 = column3_max_width_integer
length4 = column4_max_width_integer

new_nested_array_of_str_with_correct_spacing = games_array.map do |inner_array|
                                                   inner_array.map do |element|
                                                   if inner_array.index(element) == 0 
                                                     return_a_string_to_max_column_width(element, length1)
                                                   elsif inner_array.index(element) == 1
                                                     return_a_string_to_max_column_width(element, length2)
                                                   elsif inner_array.index(element) == 2
                                                     return_a_string_to_max_column_width(element, length3)
                                                   elsif inner_array.index(element) == 3
                                                     return_a_string_to_max_column_width(element, length4)
                                                   end
                                                 end
                                               end
                                                   

p new_nested_array_of_str_with_correct_spacing




#NEW DELETE IS THIS CODE ABOVE BREAKS




puts initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)

#games_array.
new_nested_array_of_str_with_correct_spacing.each do |inner_array|

  inner_array.each do |element|
    print "|" + element  #trouble making  this take max width
  end
  
  puts "|"
  puts initialize_table_top_line(column1_max_width_integer,column2_max_width_integer,column3_max_width_integer,column4_max_width_integer)
end

def return_a_string_to_max_column_width(string, column_width_as_integer)
  string + " " * ((column_width_as_integer) - string.length)
end

p return_a_string_to_max_column_width("abcd",11)