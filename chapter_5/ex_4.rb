def countdown(number)
puts number.to_s + ","
  if number > 0
    countdown(number -1)
  end

end

countdown(9)
countdown(-10)
