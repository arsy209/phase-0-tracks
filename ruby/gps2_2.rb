# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # [fill in any steps here]
 # create a method thats splits a string in an array 
 # we will use a hash to store the string splited string
 # set default quantity
 # use (paran=0) to set the starting default amount
 # print the list to the console [can you use one of your other methods here?]
 # create a stored Method 
# output: [what data type goes here, array or hash?]
# hash is better because we can store and change all the information needed.

def list_creator(input_items)
    items_array = input_items.split(" ")
    list_items = Hash.new(0)
    items_array.each do |item|
        list_items[item] = 1
    end
    return list_items
end



# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

def add_items(list_items, item, amount)
    list_items[item] += amount
    return list_items
end

items =  list_creator("apples oranges")
add_items(items,"lemonade",6 )
add_items(items,"tomatos",3 )
add_items(items,"onions",1 )
add_items(items,"ice-cream",4 )
add_items(items,"apples",4 )


puts items

# Method to remove an item from the list
# input: item
# steps: use delete methods
# output: deleted item from the list

def remove_item(list_items,item)
    list_items.delete(item)
    item
end

puts remove_item(items,'lemonade')
puts items


# Method to update the quantity of an item
# input: amount, list_items , item to update
# steps: update the value 
# output: new amount

def update_amount(items, item, amount)
        items[item] = amount    
        items[item]
end

update_amount(items,'ice-cream', 1)
puts items

# Method to print a list and make it look pretty
# input: hash of items
# steps: do a loop to print each item and amount
# output: item and amount

def grocery_list(items)
    puts "This is my grocery list:\n"
    items.each do |item, amount|
        puts "#{item} = #{amount} "
    end
end

grocery_list(items)




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