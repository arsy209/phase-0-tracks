#create a method 
#print out the data by calling it at the end
def meeting
	first_person = "Arshdeep"
	second_person = "Anmol"
	puts "Hello, how are you doing today?"
	yield(first_person, second_person)
end
meeting {|first_person,second_person| puts "Nice seeing you today #{first_person} and #{second_person}."}

#declare a new array
new_drinks = ["coke","pepsi","apple juice","pineapple juice","Mango Juice"]

#use .each
new_drinks.each do |drink|
	p "#{drink} a favorite drink of mine!"
end
    #use object .map
    new_drinks.map do |drink|
    drink.capitalize!
end
p new_drinks

#declare a  new Hash
different_creatures = {
	dinosaur: "T-Rex", 
	mammal: "Whale", 
	ghost: "Casper", 
	bird:"Eagle", 
	underground: "worms",
}

#use the .each object on the hash
different_creatures.each do |type,creature|
	p "this type of #{creature} is part of  #{type} clan."
end
p different_creatures

#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
number_itteration = [1,2,3,4,5]
p number_itteration

#deletes the numbers if it is less then equal to 3
def number_less(number_itteration)
	number_itteration.delete_if {|numbers| numbers <=3}
end
p number_less(number_itteration)


#creates a hash 
music_itteration = {
	bhangra:"Bhabhi teri paan miss kalan mardi",
	hindi:"its the time to disco",
	rock:"highway 61",
	jazz:"Etta James",
}

p music_itteration 



def find_fav_music(music_itteration)
	music_itteration.delete_if {|genre,artist| genre == :bhangra}
end
p find_fav_music(music_itteration)


#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
	
def number_more(number_itteration)
	number_itteration.keep_if {|numbers| numbers <=5}
end
p number_more(number_itteration)



def find_music(music_itteration)
	music_itteration.keep_if {|genre,artist| genre == :hindi || artist == "its the time to disco"}
end
p find_music(music_itteration)



#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

def numbers_even(number_itteration)
	number_itteration.select {|numbers| numbers.even?}
end
p numbers_even(number_itteration)
 


def find_music_type(music_itteration)
	music_itteration.select {|genre,artist| genre == :jazz}
end
p find_music_type(music_itteration)

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
test = [2,4,6,8,10,12,14]

def numbers_condition(test)
	test.drop_while {|list| list <= 8}
end
p numbers_condition(test)



new_movie = {
	horror:"The house",
	comedy:"Scary movie 3",
	romance:"mainae pyar kyu kia",
	action: "The expandables"
}

def movie_type(new_movie)
	new_movie.drop_while {|type,name| type == :horror}
end
p movie_type(new_movie)