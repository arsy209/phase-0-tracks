
#create a nested data structure for a school day
#create a first floor hash that would contain three classrooms with students in each room
#create a second floor hash that would contain two classrooms with students in each room
#print each of the data out 
#add a hash to the first floor
#add a has to the second floor
#print out both data at the end



puts " First day of class".center(20).upcase

school = 
{
	first_floor: 
	{
	
	"room 101" => ["cindy,james, julie, harry, bob, lisa, krissy"],
	"room 102" => ["jimmy, liz, linda, lima, louse, kissma, aj"],
	"room 103" => [ "jarry, limbda, hana, kana, jana, intersta"],

	},
	
	second_floor: 
	{
	"room 201"=> [ "harris, jim, hammer, usha, kisha, lima, joe"],
	"room 202"=> [ "simmi, simran, jamsa, ka, likma, rishes"]
	}
}


puts school [:first_floor]

puts school [:second_floor]

puts school [:first_floor]["room 101"] 

puts school [:second_floor]["room 202"]

school [:second_floor]["principles office"] = [ " Ms. jisla"]
puts school [:second_floor]

school [:first_floor]["lunch room"] = [ "lunch ladys, head watcher"]
puts school [:first_floor]
puts school [:second_floor]