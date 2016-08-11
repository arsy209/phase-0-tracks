
p" How many employees will be taking this questionaire?"
employees=gets.chomp
total = employees.to_i
 
index=0

until  index >= total

p" What is your name?"
name = gets.chomp
p" How old are you #{name}?"
 	age = gets.chomp.to_i

p" #{name},what year you have born?"
born = gets.chomp.to_i
current_year = 2016
correct_age = current_year - born.to_i

p "Our company cafeteria serves garlic bread. should we order some for you (yes/no)?"
garlic = gets.chomp.to_s

p "Would you like to enroll in the company's health insurance (yes/no)? "
health = gets.chomp.to_s

if (name =="drake cula" || name == "tu fang") 
p "#{name} is Definitely a vampire."

elsif correct_age == 2016 && garlic == "yes" || health =="yes"
p "#{name} probably not a vampire!"
   
elsif correct_age != 2016  && ( garlic !="yes" || health !="yes")
 p "#{name} is probably a vampire!"
 
elsif (correct_age != 2016 || garlic !="yes" ) && health !="yes"
p "#{name} is almost certainly a vampire!"

else
   p " Results inconclusive"
  
end	   

index+=1
   for count in 1...20
  p  "Please name any types of allergies you may have otherwise if you have none, just write done to end the questionaire?"
   allergies = gets.chomp.to_s 

   if
   allergies=="sunshine"
  p " Probably a vampire!"
  break
elsif
  allergies == "done"
  break
end
end
end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends!"
