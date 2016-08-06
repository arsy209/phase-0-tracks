puts " A busy day on a stop light in the city:".center(20).upcase

stop_light = 
{
	lane_1: 
	{
	
	"car 1" => [ "bob, jessie, sam"],
	"car 2" => [ "harry, josh, patrick"],
	"car 3" => [ "jolly, linda, lisa, martha"],

	},
	
	lane_2: 
	{
	"car 4"=> [ "chris, april, liz, saman"],
	"car 5"=> [ "simran, seema, reet, simmi"]
	}
}


p stop_light [:lane_1]

p stop_light [:lane_2]

p stop_light [:lane_1]["car 1"] 

p stop_light [:lane_2]["car 5"]

stop_light [:lane_2]["cop"] = [ "officer jones, officer jose"]
p stop_light[:lane_2]

stop_light [:lane_1]["school bus"] = [ " driver: jilly, students: cindy, samantha, sammy, samer, gosh, jabber, usher, bob, bunny, georgy"]
p stop_light[:lane_1]

p stop_light [:lane_1]
p stop_light [:lane_2]