# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: splitting the the list of item, creating and new blank array, creating a new blank hash. Then we populate that hash with the sperated items from list and setting default quantity of 1. Then pushing the updated hash to the the array.
# output:  An array with hash list that contains an item with with a default quanity 1

def create_list(list)
  item = list.split(" ")
  hash = Hash.new
  grocery_list = Array.new
  
  item.length.times do |x|
    grocery_list << hash = {item[x] => 1}
  end
  return grocery_list
end

# Method to add an item to a list  
# input: and user generated string for item and integer for quantity.
# steps: create a new hash, populate that hash with user generated input, then push the hash to the local array
# output: the new hash would be populated in back of the array
def add_item_to_list(grocery_list, item, quantity)
  hash = Hash.new
  #grocery_list = Array.new
  grocery_list << hash = {item => quantity}
  return grocery_list
end

# Method to remove an item from the list
# input: an existing array, and an user generated string for the item
# steps: we are deleted the key information in the hash in the arrray of the item that the user generates
# output: the existing array minus the user generated item
def remove_item_from_list(grocery_list, item)
  grocery_list.delete(grocery_list[0])
  return grocery_list
end

# Method to update the quantity of an item
# input: and existing array containing hashes. And user generated string for an item, and a user generated intenger for quantity
# steps:   create a new hash, for items in the the existing array, check if there is a key containing the string that the user generates for the the item. if there is... update user generated quantity. If the item is not in the array.
# output: an updated array containing updated hashes with new quantities
def update(grocery_list, item, quantity)
  hash = Hash.new
  #p grocery_list
   grocery_list.length.times do |x|
     if  grocery_list[x].has_key?(item) == true
         grocery_list[x][item] = quantity
     end
  end
  return grocery_list
end
  
# Method to print a list and make it look pretty
# input: none
# steps: create a test list, running through create list, add item to list,  update quanitities, remove item from list, and rendering 
# output: our final array with our hashes
def run_list(string)
  #create List
  test_list = create_list(string)
  #p test_list

  #add item to list List
  test_list = add_item_to_list(test_list,  "soda", 2)
  #p test_list 
  
  # Tests if item is not on the list
  test_list = update(test_list, "Cups", 6)
  #p test_list
  
  #Update List
  test_list = update(test_list, "Lemonade", 2)
  test_list = update(test_list, "Tomatoes", 3)
  test_list = update(test_list, "Lemonade", 2)
  test_list = update(test_list, "Onions", 1)
  test_list = update(test_list, "Ice_Cream", 4)
  #p test_list
  
  #remove item from list
  test_list = remove_item_from_list(test_list, "Lemonade")
  #p test_list
  
  #update list
  test_list = update(test_list, "Ice_Cream", 1)
  #p test_list
  
  #render list
  p test_list
end

p run_list("Lemonade Tomatoes Onions Ice_Cream")

#Release 5: Reflect
#What did you learn about pseudocode from working on this challenge?
#ITs great to write out your ideas and your objectives and how you might want to to able attack the problem.
#Also i learned that if sometimes your intial idea is sometimes wrong it can lead you down the wrong path 

#What are the tradeoffs of using arrays and hashes for this challenge?
# arrays are great for holding a  whole bunch of things, and the power of hashes are the key value relationship

#What does a method return?
#a method returns the information the local variable you are passing through it

#What kind of things can you pass into methods as arguments?
#string, boolean, intenger, methods, (i didnt test but i bet you can pass a class.method into it)

#How can you pass information between methods?
#you can return the information if you return the aruments 

#What concepts were solidified in this challenge, and what concepts are still confusing?
#the concept of having a run me method to run your program, compared to having it outside a class.
