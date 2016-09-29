# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS reviews(
    
    name VARCHAR(255),
    campus VARCHAR(255),
    reviews VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)
# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
 
  erb :home
end

get '/students/new' do
  erb :new_student
end
get '/reviews/new' do
  erb :campus
end

get '/students/campus' do
@reviews = db.execute("SELECT * FROM reviews")
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/campus' do
  db.execute("INSERT INTO reviews (name, campus, review) VALUES (?,?,?)", [params['name'], params['campus'], params['review']])
redirect '/'
end


# add static resources