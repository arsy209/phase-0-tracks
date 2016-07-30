
	
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp


puts "What year were you born"
born = gets.chomp
current_year = 2016
correct_age = current_year - born.to_i
puts " you are #{current_year-born.to_i} old"

if born == age
	correct_age = true
elsif born != age
    correct_age = false 
end
puts " Our company cafeteria serves garlic bread. should we order some for you? (yes/no)"
garlic = gets.chomp

 if garlic == "yes"
 	likes_garlic = true
 else 
 	likes_garlic = false 
 end
puts "Would you like to enroll in the company's health insurance? (yes/no)"
health = gets.chomp
	if health == "yes"
		wants_health_insurance = true
	else 
		wants_health_insurance = false 
end	
		
	
		
if correct_age && likes_garlic && wants_health_insurance
	puts "probably not a vampire."
elsif
  puts "correct_Age"
  elsif
 puts "Results inconclusive."
end
