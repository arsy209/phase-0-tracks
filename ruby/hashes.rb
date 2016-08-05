
puts " Welcome to Singh's Interior Designer Place:"



designer_information = 
{
	name:"n/a",
	age:0,
	number:0,
	children:0,
	decoration:"n/a",
	color:"n/a",
	rooms:"n/a"
	
}

puts "hello, what is your name?"
	designer_information[:name] = gets.chomp
puts " what is your age?"
	designer_information[:age] = gets.chomp.to_i
puts " Please provide your house/cellphone number: "
	designer_information[:number] = gets.chomp.to_i
puts " How many children do you have ?"
	designer_information[:children] = gets.chomp.to_i
puts " What kind of decoration theme do you want?"
	designer_information[:decoration] = gets.chomp
puts " what kind of color would you want your theme to have?"
	designer_information[:color] = gets.chomp
puts "how many rooms are you going to put this design in?"
	designer_information[:rooms] = gets.chomp


puts " All the information that you inputted is correct (yes/no)? Otherwise please make sure it is correct."
information = gets.chomp
if information == "yes"
   p designer_information
elsif information == "no"
p " select the inputted information you want to change: name, age, number, children, decoration, color, rooms"
	information = gets.chomp
if information == "name"
	puts " hello, what is your name?"
	designer_information[:name] = gets.chomp.capitalize!
elsif information == "age "
	puts " what is your age?"
	designer_information[:age] = gets.chomp
elsif information == "number "
	puts " Please provide your house/cellphone number: "
	designer_information[:number] = gets.chomp.to_i
elsif information == "children "
	puts " How many children do you have ?"
	designer_information[:children] = gets.chomp.to_i
elsif information == "decoration "
	puts " What kind of decoration theme do you want?"
	designer_information[:decoration] = gets.chomp.to_i
elsif information == "color"
	puts " what kind of color would you want your theme to have?"
	designer_information[:color] = gets.chomp
elsif information == "rooms"
	puts "how many rooms are you going to put this design in?"
	designer_information[:rooms] = gets.chomp
end
end



p " THANK YOU for the submission, i will be contacting you soon."
p designer_information