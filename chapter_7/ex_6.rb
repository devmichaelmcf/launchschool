#Write a program that prints out groups of words that are anagrams.
#Anagrams are words that have the same exact letters in them but 
#in a different order. Your output should look something like this:
#["demo", "dome", "mode"]
#["neon", "none"]
#(etc)

#Unable to complete this exercise. Added my analysis of given
#answer as comments in the solution below.

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}  #initialised empty hash variable outside to avoid 
             #variable scope issues and boundaries. 

words.each do |word|
  key = word.split('').sort.join #loop/make words into alpha order, and assign each alpha sorted word to key. eg. "mode" turns into key "demo" alpha ordered.
  if result.has_key?(key)  #if hash, during iteration an alpha ordered keys, then do the action BELOW. e.g. if result hash has during iteration of word "mode", which would result in the key "demo", then IN the hash, input the alpha ordered word as a key and PUSH the word we're iterating on e.g. "mode" as a value.
    result[key].push(word) 
  else
   result[key] = [word] #if above conditional flow part was false then do this section; in the result hash, key "demo" for instance, then input the word we are iterating on.
  end
end

result.each_value do |v|
  puts "------"
  p v
end
# This iterates over or results hash and only prints out the values (as we don't care for our alphabetically ordered keys we created).
