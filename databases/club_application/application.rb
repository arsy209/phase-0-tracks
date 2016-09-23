#8.5- combining Ruby and SQL
#Arshdeep Singh

#Make a method that would create a application for people to apply to a club
#Start off by requiring the gems needed for the file to work correctly
#Create a new db and a table inside it with the correct amount of columns and rows needed
#The db should be able to execute and insert the information inside the table 
#Create a user input where the user would be asked different questions for the application
#As the user answers each questions, it would be stored into the database file 
#At the end, the database file would open which would contain all the information that the user answered from the question


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