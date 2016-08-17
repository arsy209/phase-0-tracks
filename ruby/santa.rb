
puts " WELCOME TO TO THE SANTA PRINTER:\n\n"

class Santa
  attr_reader  :ethnicity , :celebrate_birthday
  attr_accessor :age, :reindeer, :gender

#this method initializes the different attributes that were  listed before
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance now..."
   
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end  

#These methods would change up what will be called later on such as the age and the types of reindeer being called.
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.push(reindeer)
    puts "WOW #{reindeer}, you been really bad today, I think you cant get a treat today!"
  end
  


#These actions were put to show what can be done with methods but would not affect anything unless called by using santa.
  def speak
    puts  "Ho, ho, ho! Haaaappy holidays!" 
  end
  
  def eat_milk_and_cookies(cookie)
    puts "That was a really good #{cookie} cookie!"
  end

  def home
  puts "This Santa's home is located in the North Pole"
  end
  
  def information
    puts "This Santa is  #{@age} years old and the Santa's ethnicity is #{@ethnicity} and the Santa's gender is #{@gender}"
  end

end

#Creates a random reindeer list for each printed santa
def random_reindeer_list
  different_reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  new_reindeer = []
  while new_reindeer.length < different_reindeer.length
    random = rand(different_reindeer.length)
    if !new_reindeer.include?(different_reindeer[random])
      new_reindeer << different_reindeer[random]
    end
  end
  return new_reindeer
end

#Random Gender Selector
def random_gender
  genders = ["agender", "female", "bigender", "male", "female",  "N/A", "heshe", " transgender female", "transgender male,alien"]
  gender = genders[rand(genders.length)]
end

# Random Ethnicity selector
def random_ethnicity
  ethnicity_arr = ["black", "Latino", "white", "Japanese","African", "prefered not to say it", "Strange Creature (unicorn)", "N/A"]
  ethnicity = ethnicity_arr[rand(ethnicity_arr.length)]
end


#This is where the printing would begin from the methods above and prints it out 60 times for different santas


puts " Click enter to begin the santa making process:"
enter = gets.chomp

santas = []
while true

  45.times do |number|
  santa = Santa.new(random_gender, random_ethnicity,)
  santa.age = rand(0...140)
  santa.reindeer = random_reindeer_list
  puts "******************************************"
  puts "#{santa.speak}"
  puts "#{santa.eat_milk_and_cookies("snickerdoodle")}"
  puts "This Santa ##{number+1} attributes are:"
  puts "#{santa.home}"
  puts "This Santa's Age: #{santa.age}"
  puts "This Santa's Gender: #{santa.gender}"
  puts "This Santa's Ethnicity: #{santa.ethnicity}"
  puts "This Santa's Reindeer set up: #{santa.reindeer}"
  puts "#{santa.get_mad_at("Nixon")}"

  puts "*Important Information or summary of this Santa is:"
  puts "#{santa.information}"
  puts "~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~_~"
  end
puts " \n\nIf you want to continue press enter or you can type quit to stop at the ones you created!"
input = gets.chomp
      if input == "quit"

      puts " \n\nHAVE A MERRRY CHRISTMAS AND A HAPPY NEW YEAR!!"
  break
  end
end