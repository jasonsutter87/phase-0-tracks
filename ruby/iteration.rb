def some_method
  puts "some_method has started"
  yield("Jason", "Richie")
  puts "some_method has run"
end

some_method { |word1, word2| puts "Hello #{word1} and #{word2}!" }

puts "ARRAYS"

fruit_array = ["apples","grapes","pears","bananas"] 

p fruit_array
fruit_array.each do |fruits|
  p "I like to eat #{fruits}!"
end
p fruit_array


fruit_array = ["apples","grapes","pears","bananas"] 
p fruit_array
fruit_array.map! do |fruits|
  fruits = "5 " + fruits
  p "I like to eat #{fruits}!"
end
p fruit_array

puts "HASHES"

fruit_hash = {"apples" => "red", "grapes" => "purple", "pears" => "green", "bananas" => "yellow"}

fruit_hash.each do |fruits, colors|
  p "#{fruits} are #{colors}!"
end



puts "Release 2"

#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

#delete_if { |item| block } → ary
arr = [1,2,3,4,5,6,7,8,9]
hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four"}

p arr.delete_if { |item| item < 5 }
p hash.delete_if { |key, value| key < 2 }


#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
#keep_if { |item| block } → ary
arr = [1,2,3,4,5,6,7,8,9]
hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four"}

p arr.keep_if { |item| item > 5 }
p hash.keep_if { |key, value| key > 2 }

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
#reject {|item| block } → new_ary
arr = [1,2,3,4,5,6,7,8,9]
hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four"}

p arr.reject { |item| item < 3 }
p hash.reject  { |key, value| key < 2 }

#A method that will remove items from a data structure until the condition in the block evaluates to true, then stops.
#take_while { |arr| block } → new_ary
arr = [1,2,3,4,5,6,7,8,9]
hash = {1 => "one", 2 => "two", 3 => "three", 4 => "four"}

p arr.take_while {|item| item <= 5}
p hash.take_while {|key, value| key <= 2}
