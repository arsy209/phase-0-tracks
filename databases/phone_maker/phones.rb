require 'sqlite3'
require 'faker'


db = SQLite3::Database.new("phones.db")

db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS phones (
  		 id INTEGER PRIMARY KEY,
  		 new_phone  VARCHAR(255),
  		 cost INT 

  )

  SQL

db.execute(create_table_cmd)

db.execute("INSERT INTO phones (new_phone, cost) VALUES ('I phone 7',800)")

def phones(db,new_phone,cost)

	 db.execute("INSERT INTO phones (new_phone,cost) VALUES (?,?)", [new_phone, cost])
end

15.times do 

	phones(db, Faker::Name.name, Faker::Number.between(300,1000))
end


phones = db.execute("SELECT * FROM phones")
phones.each do |p|

	puts "You bought a #{p['new_phone']} for #{p['cost']}!"
end