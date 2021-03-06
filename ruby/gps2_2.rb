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
	shopping_list = new_items.split(" ")
	items_hash = Hash.new
	shopping_list.each do |item| 
	items_hash[item] = 1
	end
	return items_hash
end

def add_list(items_hash,item,quantity)
	items_hash[item] = quantity
	return items_hash
end


def remove_item(items_hash,item)
	items_hash.delete(item)

return items_hash
end

def update_items(items_hash,item,quantity)
	items_hash[item] = quantity

return items_hash

end

def print_items(items_hash)

	items_hash.each do |item, quantity|
		puts " #{item} : #{quantity}"
	end
end

#driver code
big_list = {}
big_list = create_list("carrots oranges apples")
big_list = add_list(big_list,"lemonade",2)
big_list = add_list(big_list,"tomatoes",3)
big_list = add_list(big_list,"onions",1)
big_list = add_list(big_list,"ice cream",4)
big_list = remove_item(big_list,"lemonade")
big_list = update_items(big_list,"ice cream",1)
print_items(big_list)



=begin
What did you learn about pseudocode from working on this challenge?
using peseudocode makes it easier to explain to the user on what each of the methods in the program would be doing
What are the tradeoffs of using arrays and hashes for this challenge?
to use a hash, you would  need to do hash = {} and to use a array, you would need to do array[]
What does a method return?
a method returns all that data that was written inside of it at the end.
What kind of things can you pass into methods as arguments?
the things that can be passed through a method are different arguements such as creating a list, doing equations, etc.
How can you pass information between methods?
inorder to pass the information between the methods you would need to use the same name you used from the first method to print out he information along with the updated information at the end.
What concepts were solidified in this challenge, and what concepts are still confusing?
i got a better understanding on how to pesudocode and write better methods. So far i am able to undestand everything that was done in this session.