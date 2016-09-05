
#create a santa class and a intitalizing method that would print for every new santa
#add the different attr reader and accessor 
#have different methods created which would then be printed out later on with the driver code
#create a driver code that would then print out the results from each of the methods

puts " WELCOME TO THE SANTA GENERATOR!:\n\n"

class Santa
  
    attr_reader  :ethnicity , :celebrate_birthday, :get_mad_at,:home,:speak,:information,:eat_milk_and_cookies
    attr_accessor :age, :reindeer, :gender

#this method initializes the different attributes that were  listed before
#gender, which will be a string passed in on initialization
#ethnicity, which will be a string passed in on initialization
#reindeer_ranking, an array of reindeer from most preferred to least preferred. This is not passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#age, which is not passed in on initialization and defaults to 0
#An initialize method that prints "Initializing Santa instance ..."
  def initialize(gender, ethnicity)
      puts "Initializing Santa instance now..."
      @gender = gender
      @ethnicity = ethnicity
      @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
      @age = 0
  end  

  def celebrate_birthday
      @age += 1
  end

  def get_mad_at(reindeer)
      @reindeer_ranking.push(reindeer)
      puts "WOW #{reindeer}, you been really bad today, I think you cant get a treat today!"
  end
  


##different methods that can be called later on in the driver code

#These methods would change up what will be called later on such as the age and the types of reindeer being called.
# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
#An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!" 
#Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.

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

#Random Gender Selector from a given set
  def random_gender
      genders = ["agender", "female", "bigender", "male", "female",  "not provided", "heshe", " transgender female", "transgender male"]
      gender = genders[rand(genders.length)]
  end

# Random Ethnicity selector from a given set
  def random_ethnicity
      ethnicity_arr = ["black", "Latino", "white", "Japanese","African", "prefered not to say it", "holy", "ghost","ALIEN!!","Cartoon"]
      ethnicity = ethnicity_arr[rand(ethnicity_arr.length)]
  end


#Driver Code

puts " Click enter to begin the Santa making process:"
enter = gets.chomp

santas = []
#created a while look which would let the user continue making santas after the 200 mark is reached or they can type quit to stop.
while true
#created a loop that would make 100 santas with all of the different information listed about them
  100.times do |number|
  new_santa = Santa.new(random_gender, random_ethnicity)
  new_santa.age = rand(140)
  new_santa.reindeer = random_reindeer_list
  puts "--------------------------------------------"
  puts "#{new_santa.speak}"
  puts "#{new_santa.eat_milk_and_cookies("choclate chip")}"
  puts "This Santa ##{number+1}'s is good to go tonight due to the qualities listed below:\n\n"
  puts "\n#{new_santa.home}"
  puts "##{number+1}'s Santa's Age: #{new_santa.age}"
  puts "##{number+1}'s Santa's Gender: #{new_santa.gender}"
  puts "##{number+1}'s Santa's Ethnicity: #{new_santa.ethnicity}"
  puts "#{new_santa.get_mad_at("Nixon")}"

  puts "\n\n\n*Important Information or summary of this Santa is:"
  puts "#{new_santa.information}"
 puts "--------------------------------------------"
  end
puts " \n\nIf you want to continue making more santas press enter or you can type quit to stop at the ones you created!"
type = gets.chomp
      if type == "quit"

      puts " \n\nHAVE A MERRRY CHRISTMAS AND A HAPPY NEW YEAR!!"
  break
  end
end