#Create a questionaire for the user to answer
#have a hash which would store all the information of the users input

#The data is all stored in the hash and later printed out 
#ask the user if the inputted data is correct otherwise they are allowed to change their answer by choosing a choice
#prints final information at the end








puts "Welcome to Arshdeep's Designer Place!! \n**Garanteed Satisfication**\n\n "


customer_information = {

		name:"n/a",
		age: 0,
		children:"n/a",
		phone_number: 0,
		design: "n/a",
		rooms: "n/a",
		color: "n/a",
		email:"n/a"
		
}




puts "Hello, What is your name?"
customer_information[:name] = gets.chomp

puts " How old are you?"
customer_information[:age] = gets.chomp.to_i

children = false 
until children
puts " Do you have any children (yes/no)?"
customer_information[:children] = gets.chomp
	if customer_information[:children] == "yes"
		puts "I would not recommend light shades of color.\n"
		children = true
	elsif customer_information[:children] == "no"
		puts "I would also recommend glassware to complement the design of the room.\n"
			children = true
   end
   end

puts "Can you give a phone number which can be used to contact you."
customer_information[:phone_number] = gets.chomp.to_i

puts "What type of design would you like?"
customer_information[:design] = gets.chomp

puts " how many rooms would you be putting this design in?"
customer_information[:rooms] = gets.chomp
puts "what color would you want your design to be in?"
customer_information[:color] = gets.chomp

puts "What is your main email which you can receive your final information about your design?"
customer_information[:email] = gets.chomp


puts "The following information that you have put is all correct (yes/no)?"
information = gets.chomp
	if information == "yes"
		puts " We will contact you soon with updates!"
	elsif information == "no"
		puts "What information would you like to change:\n
		a)name\n
		b)age\n 
		c)children\n
		d)phone_number\n
		e)design\n
		f)rooms\n
		g)color\n 
		h)email\n"
	end	
	choice = gets.chomp
if choice == "a"	
	puts "Hello, What is your name?"
	customer_information[:name] = gets.chomp
elsif choice == "b"
	puts " How old are you?"
	customer_information[:age] = gets.chomp.to_i
elsif choice == "c"
puts " Do you have any children (yes/no)?"
customer_information[:children] = gets.chomp
	if customer_information[:children] == "yes"
		puts "I would not recommend light shades of color.\n"
	elsif customer_information[:children] == "no"
		puts "I would also recommend glassware to complement the design of the room.\n"
   end
elsif choice == "d"
	puts "Can you give a phone number which can be used to contact you."
	customer_information[:phone_number] = gets.chomp.to_i
elsif choice == "e"
	puts "What type of design would you like?"
	customer_information[:design] = gets.chomp

elsif choice == "f"
	puts " how many rooms would you be putting this design in?"
	customer_information[:rooms] = gets.chomp
elsif choice == "g"
	puts "what color would you want your design to be in?"
	customer_information[:color] = gets.chomp
elsif choice == "h"
	puts "What is your main email which you can receive your final information about your design?"
	customer_information[:email] = gets.chomp
	
end
puts customer_information