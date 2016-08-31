
require "sqlite3"
require "faker"

db = SQLite3::Database.new("phones.db")
db. results_as_hash = true

create_table_cmd = <<-SQL

	
		CREATE TABLE IF NOT EXISTS phones(

			id INTEGER PRIMARY KEY,
			new_phone VARCHAR(255),
			company VARCHAR(255),
			cost INT 

		)

SQL 

db.execute(create_table_cmd)

db.execute( "INSERT INTO phones (new_phone,company,cost) VALUES ("Iphone 6", "T-mobile", 900)")

def phones(db, new_phone,company,cost)
	db.execute("INSERT INTO phones (new_phone,company,cost) VALUES (?,?,?)"), [(new_phone,company,cost)]
end

15.times do 
	
	phones(db, Faker::Name.name, Faker::Cost.between(100-1000))
	
end

phones = db.execute("SELECT * FROM phones")

phones.each do |p|

	puts "Theres a new phone out now which is the #{p["new_phone"]} and you can get it at #{["company"]} for #{["cost"]}"

end



