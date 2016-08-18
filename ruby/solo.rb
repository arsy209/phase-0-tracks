puts " WELCOME TO TO THE POWER RANGER SELECTOR:\n\n\n\n\n\n"
#created a class for power rangers
class Power_Ranger
  attr_reader  :megazord , :ethnicity, :gender, :skill
  attr_accessor :age, :color, :weapons

#different attributes that would be initialized later on with three store data
  def initialize(weapons,megazord,color,age,name,skill,gender)
    @weapons = weapons
    @color = color
    @megazord = megazord
    @age = age
    @gender = gender
    @ethnicity = ethnicity
    @skill = skill
  end  
#some methods that are already implented in the class which can be printed out later on with the use of power_rangers.<example>
def under_attack
  puts "THE world is in danger due to the evil taking over!!!".upcase
end
def zordon
  puts "You have been chosen to help fight this war against evil young one!"
end

end
#this method would print out different colors for the power ranger
#these are already stored which would be printed out randomly
def random_colors
  colors = ["blue","red","green","black","yellow","pink","white","grey"]
  color = colors[rand(colors.length)]
end

#this method would print out different weapons for the power ranger
#these are already stored which would be printed out randomly
def random_weapon
  weapons = ["sword","bow and arrow","laser gun","Jungle Sword","Lunar Cue","Crimson Blaster","Quake Hammer","Drive Vortex","Drive Defender"," Road Blaster","Turbo Axe","Rocket Blaster "]
 weapon = weapons[rand(weapons.length)]
end
#this method would print out different megazords for the power ranger
#these are already stored which would be printed out randomly
def random_megazord
  megazords_arr = ["Ninja Falcon Megazord", "Galaxy Megazord", "Thundersaurus Megazord", "Lightspeed Megazord","DriveMax Megazord", "Wild Force Megazord"]
  megazord = megazords_arr[rand(megazords_arr.length)]
end


#Driver Code
#the user would be asked multiple questions such as their name, age, ethnicity, strongest skill, gender and it would print the data out for that power ranger in a list form with randomly printed data from the stored arrays listed above. 
#the LOOP DO is used to let the user continue making new power rangers until the user types quit and it would end the loop and print out all the results at the end.
#power_rangers be used to collect the data
power_rangers = []

loop do
 new_ranger = Power_Ranger.new(random_weapon, random_megazord,random_colors,@name,@age,@gender,@ethnicity)
puts " Lets begin chosen one:\n".upcase
puts "(press enter or quit if you dont want to do it)"
enter = gets.chomp
break if enter == "quit"
 
 
  puts "#{new_ranger.zordon}"
#different questions asked to the user 

  print "What is your name?"
  @name = gets.chomp.capitalize!
  print "What is your age?"
  @age = gets.chomp
  print "What is your gender?"
  @gender = gets.chomp
  print "What is your Ethnicity?"
  @ethnicity = gets.chomp
  puts "What is Your strongest fighting skill?"
  @skill = gets.chomp
#this would collect all the data from the questions.
power_rangers << new_ranger
end

# this would print out all of the collected data at the end when the user types quit. 
power_rangers.each do |new_ranger|
 puts "~~~~~~~~~~~~~~~~~~~~\n\n"
  
 puts "#{new_ranger.under_attack}\n\n"
  puts "Welcome the new power ranger:\n\n"
  puts "New Power Ranger: #{@name}\n"
  puts "New Power Ranger's Age: #{@age}\n"
  puts "New Power Ranger's Gender: #{@gender}\n"
  puts "New Power Ranger's Ethnicity: #{@ethnicity}\n"
  puts "New Power Ranger's Strongest Skill is: #{new_ranger.skill}\n"
  puts "New Power Ranger's Color is: #{new_ranger.color}\n"
  puts "New Power Ranger's Megazord is: #{new_ranger.megazord}\n"
  puts "New Power Ranger's weapons is: #{new_ranger.weapons}\n"

 
end
