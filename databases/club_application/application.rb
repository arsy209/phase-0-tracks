#8.5- combining Ruby and SQL
#Arshdeep Singh

#Make a method that would create a application for people to apply to a club
#Start off by requiring the gems needed for the file to work correctly
#Create a new db and a table inside it with the correct amount of columns and rows needed
#The db should be able to execute and insert the information inside the table 
#Create a user input where the user would be asked different questions for the application
#As the user answers each questions, it would be stored into the database file 
#At the end, the database file would open which would contain all the information that the user answered from the question
#use .center() to organize the data to the middle of the screen.

#the gem that is required
require 'sqlite3'

#initiates new database file
db = SQLite3::Database.new("club.db")
#creates a new table for every new informaton that would be inputted.
table = <<-SQL 
CREATE TABLE IF NOT EXISTS applications(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age  VARCHAR(255),
		phone_number INT,
		address INT,
		email VARCHAR(255),
		club_name VARCHAR(255),
		hours INT
)
SQL
#initiates the new table.
db.execute(table)
	#adds all the information to the coresponding columns in the table
	def applications(db,name,age,phone_number,address,email,club_name,hours)
	
		db.execute("INSERT INTO applications (name,age,phone_number,address,email,club_name,hours) VALUES (?,?,?,?,?,?,?)", [name,age,phone_number,address,email,club_name,hours])
	end

#user input/driver code
			puts "Welome to Singh's Multi-Club where you come in stressed and leave relaxed and happy!".center(100)
			puts "-------------------------------------------------------------------------------".center(100)
			puts "***Singh has personally made this club to keep everyone happy***".center(100)
			puts "-------------------------------------------------------------------------------\n".center(100)
			puts "~We have different Clubs that you would love and meet your expectations.~\n".center(100)
			puts "~~~~OUR AIM BRING HAPPINESS AND KEEP A PERSON STRESS FREE!~~~\n".center(100)
			puts "**OPEN : 7 DAYS A WEEK, 24 HOURS A DAY**\n\n".center(100)


			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
			puts "THE CLUBS OFFERED AND THEIR INFORMATION!!".center(100)
			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n".center(100)
			puts " A. Basketball club - be able to join other fans in playing some basketball or either watching it.".center(100)
			puts " B. theater club - be able to act or go on trips to view different plays.".center(100)
			puts " C. Baseball club - be able to join other fans in playing some baseball or either watching it.".center(100)
			puts " D. football club - be able to join other fans in playing some football or either watching it.".center(100)
			puts " E. cricket club - be able to join other fans in playing some cricket or either watching it.".center(100)
			puts " F. gamers club - play different game sytems, go to comic con events and much more.".center(100)
			puts " G. sleeping/relaxing club - simply be able to relax with no disturbance.".center(100)
		    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	while true 
	puts "Hello, Would you like to sign up to Singh's Multi-Club today (yes/no)?"
		 sign = gets.chomp
		if sign == "no"
			puts "Aw, Maybe another day if you change your mind. \n\nPlease do come back!"
			break
		else
			puts "1. What is your full name?"
			name = gets.chomp.capitalize
			puts "2. What is your age?"
			age = gets.chomp
			puts "3. What is your phone number? (format : xxx-xxx-xxxx)"
			phone_number = gets.chomp
			puts "4. What is your address?"
			address = gets.chomp
			puts "5. What is your email address?"
			email = gets.chomp
			puts "Listed below are the clubs that are offered at our place:

								a. Basketball club 
								b. theater club
								c. Baseball club  
								d. football club 
								e. cricket club 
								f. gamers club 
								g. sleeping/relaxing club \n"
			puts "**DISCLAIMER: ALL CLUBS INCLUDE DAILY BREAKFAST,LUNCH AND DINNER**".center(100)
			puts "6. Which club caught your eyes and would love to join? \n(choose the letter that matches)"
			letter = gets.chomp
					if letter == "a"
					   club_name = "Basketball club"
					elsif letter == "b"
						  club_name = "theater club"
					elsif letter == "c"
						  club_name = "Baseball club" 
					elsif letter == "d"
						  club_name = "football club"
					elsif letter == "e"
						  club_name = "cricket club"
					elsif letter == "f"
						  club_name = "gamers club"
					else 
						  club_name = "sleeping/relaxing club"
					end

			puts "How many Hours will You be here for?"
				hours = gets.chomp

			applications(db,name,age,phone_number,address,email,club_name,hours)
			puts "Thank you for applying, you can begin anytime you want too!\n\n\n"
			puts "For more information or Finding out club timing, You can call 1-800-232-2324 ext. 102"
			puts "********CONTACT OWNER**********"
			puts "Email: Singh@sclub.org"
			puts "phone: 123-456-7890 ext.223"
			puts "*******************************"

		end
			break
	end
	#prints out the new information for every new person that applied.
			puts "CONTACT INFORMATION OF PEOPLE WHO GO TO THE CLUB:\n\n"
			club = db.execute ("SELECT *FROM applications")
			club.each do |info|
  			puts "(#{info[0]}) Name: #{info[1]} || Age :#{info[2]} || Phone Number:#{info[3]} || Address:#{info[4]} || Email: #{info[5]} || Hours spent: #{info[7]} || Club Joined: #{info[6]}"
  			end
  			# "**club.db database file can be ran to see the data information also**"
  			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
  			puts "\n\nFor more information or Finding out club timing, You can call 1-800-232-2324 ext. 102\n\n".center(100) 
			puts "********CONTACT OWNER**********".center(100) 
			puts "Email: Singh@sclub.org".center(100) 
			puts "phone: 123-456-7890 ext.223".center(100) 
			puts "*******************************\n\n\n".center(100) 
			#give inputs made by people that already go to the club
			puts "COMMENTS MADE BY CURRENT CLUB MEMBERS:".center(100) 
			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n".center(100) 
			puts "1. Bobby singh - Singh's multi-club hangout is one of the best in the city and i would recommend it to everyone!"
			puts "2. Rebbeca Hanes - After a long day at work, I come here to relax because I know i will not be disturbed at all with nothing"
			puts "3. Harry james - I LOVE THIS PLACE, IT HAS EVERYTHING I NEED!!!!!"
			puts "4. Singh (OWNER) - IF YOU HAVE NOT JOINED YET, PLEASE DO COME AND JOIN, YOU WILL NOT REGRET IT AT ALL!!!"
