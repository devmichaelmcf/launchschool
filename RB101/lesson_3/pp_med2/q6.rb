def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# CAN BE SIMPLIFIED TO.....

def color_valid(color)
  color == "blue" || color == "green"
end

# Ruby automatically evaluates conditional statement as true or false.