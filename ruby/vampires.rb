

puts "What is your name?"
name = gets.chomp
if name == " drake cula" 
	correct_name = false
	elsif name == " tu fang"
	correct_name = false
else 
	current_name = true
end
puts "How old are you?"
age = gets.chomp

puts "What year were you born"
born = gets.chomp
current_year = 2016
correct_age = current_year - born.to_i

puts " you are actually #{current_year - born.to_i} years old"
			if correct_age = age
				correct_age = true
			elsif correct_age != age
    			correct_age = false 
			end

puts " Our company cafeteria serves garlic bread. should we order some for you (yes/no)?"
garlic = gets.chomp

 		if garlic =="yes"
 			likes_garlic = true
 		else
 			likes_garlic = false 
 		end


puts "Would you like to enroll in the company's health insurance (yes/no)? "
health = gets.chomp
		if health == "yes"
			wants_health_insurance = true
		else
			wants_health_insurance = false 
		end	
		
	
	
if correct_age && likes_garlic && wants_health_insurance
	p "probably not a vampire."

elsif correct_age && (likes_garlic || wants_health_insurance)
	 p "Probably a vampire."
elsif  correct_name && correct_age && likes_garlic && wants_health_insurance
 	p "Definitely a vampire."
else
 	p "Results inconclusive."

end
