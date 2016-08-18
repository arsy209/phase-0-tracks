puts " WELCOME TO TO THE POWER RANGER SELECTOR:\n\n\n\n\n\n"

class Power_Ranger
  attr_reader  :megazord , :ethnicity, :gender, :skill
  attr_accessor :age, :color, :weapons


  def initialize(weapons,megazord,color)
    @weapons = weapons
    @color = color
    @megazord = megazord
    @age = age
    @gender = gender
    @ethnicity = ethnicity
    @skill = skill
  end  

def under_attack
  puts "THE world is in danger due to the evil taking over!!!".upcase
end
def zordon
  puts "You have been chosen to help fight this war against evil young one!"
end

end

def random_colors
  colors = ["blue","red","green","black","yellow","pink","white","grey"]
  color = colors[rand(colors.length)]
end


def random_weapon
  weapons = ["sword","bow and arrow","laser gun","Jungle Sword","Lunar Cue","Crimson Blaster","Quake Hammer","Drive Vortex","Drive Defender"," Road Blaster","Turbo Axe","Rocket Blaster "]
 weapon = weapons[rand(weapons.length)]
end

def random_megazord
  megazords_arr = ["Ninja Falcon Megazord", "Galaxy Megazord", "Thundersaurus Megazord", "Lightspeed Megazord","DriveMax Megazord", "Wild Force Megazord"]
  megazord = megazords_arr[rand(megazords_arr.length)]
end


#Driver Code



power_rangers = []

user_input =false 
until user_input

puts " Lets begin chosen one:\n".upcase
puts "(press enter)"
enter = gets.chomp
  
  new_ranger = Power_Ranger.new(random_weapon, random_megazord,random_colors)
 
  
  puts "#{new_ranger.zordon}"
  
  print "What is your name?"
  name = gets.chomp.capitalize!
  print "What is your age?"
  age = gets.chomp
  print "What is your gender?"
  gender = gets.chomp
  print "What is your Ethnicity?"
  ethnicity = gets.chomp
  puts "What is Your strongest fighting skill?"
  skill = gets.chomp
      
  
 puts "~~~~~~~~~~~~~~~~~~~~\n\n"
  
 puts "#{new_ranger.under_attack}\n\n"
  puts "Welcome the new power ranger:\n\n"
  puts "New Power Ranger: #{name}"
  puts "New Power Ranger's Age: #{age}"
  puts "New Power Ranger's Gender: #{gender}"
  puts "New Power Ranger's Ethnicity: #{ethnicity}"
  puts "New Power Ranger's Strongest Skill is: #{skill}"
  puts "New Power Ranger's Color is: #{new_ranger.color}"
  puts "New Power Ranger's Megazord is: #{new_ranger.megazord}"
  puts "New Power Ranger's weapons is: #{new_ranger.weapons}"
  puts "--------------------------------------------"
 

      
  puts " \n\n PRESS ENTER IF YOU WANT TO MAKE MORE POWER RANGERS OR PRESS QUIT"
user_input = gets.chomp
      if user_input == "quit"
        user_input = true
 end
 


end