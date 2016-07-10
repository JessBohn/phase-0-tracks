# require gems
require "sinatra"
require "sinatra/reloader"
require "sqlite3"
require 'shotgun'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /

# Release 0 - Question 1
get '/contact' do
  "Dev Bootcamp - Austin Campus<br>
  1705 Guadalupe St<br>
  1st Floor<br>
  Austin, TX 78701"
end

get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# Release 0 - Question 2
get '/great_job' do
  name = params[:name]
  # Takes person's name as a query parameter and display message using their name
  if name
    "Good job, #{params[:name]}!"
  # If no name is given, simply puts good job
  else
    "Good job!"
  end
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# Release 0 - Question 3
# write a GET route that takes to numbers as route parameters
# and adds them together
# displays the result
get '/:num_1/+/:num_2' do
  result =  params[:num_1].to_i + params[:num_2].to_i
  "#{params[:num_1]} + #{params[:num_2]} = #{result}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end