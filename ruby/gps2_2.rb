# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty
  #take the string and use .split("") 
  #
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
#an hash better as an output so it is easier to update and change the information.

# Method to add an item to a list
# input: item name and optional quantity
# steps: we are going to take the empty hash and include new items and quantity.
# output: new hash with updated item and quanity 

# Method to remove an item from the list
# input: hash, item
# steps: delete the selected item from the hash 
# output: the new updated hash

# Method to update the quantity of an item
# input: hash, item, quantity 
# steps: change the quanity of the selected item
# output: the new updated hash

# Method to print a list and make it look pretty
# input: hash 
# steps: prints out the hash in an organized list
# output: orgaznized list

def create_list(new_items)
	shopping_list = new_items.split("")
	items_hash = Hash.new
	shopping_list.each do |item|
	items_hash[item] = 0 
	end
end