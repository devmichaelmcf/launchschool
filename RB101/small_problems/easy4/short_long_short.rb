# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the 
# shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

def short_long_short(str1, str2)
  if str1.length < str2.length
    short_str = str1
    long_str = str2 
  else 
    short_str = str2 
    long_str = str1
  end
  short_str + long_str + short_str
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"