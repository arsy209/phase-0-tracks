def build_array(item_1, item_2, item_3)
        new_array = [
            item_1,
            item_2,
            item_3
        ]
end 
def add_to_array(array, item)
        array << item
end 
dogs = []
p dogs

dogs = ["Grizzly", "Mashed potatoes", "Fred", "Bananas", "Brad"]
p dogs

dogs.delete_at(2)
p dogs

dogs.insert(2, "Bubbles")
p dogs

dogs.shift
p dogs

p "Dogs includes Mashed potatoes:" + " " + dogs.include?("Mashed potatoes").to_s
p dogs

cats= []
p cats

cats = ["Floppy", "Charles", "Sam"]
p cats

animals = cats + dogs 
p animals



#method number one
p build_array("circles", "squares", "rectangles")


#method number two : inserting arrays 
p add_to_array([], "vanilla")

p add_to_array(["chocolate", "mint", "banana", 1, 2], 3)
