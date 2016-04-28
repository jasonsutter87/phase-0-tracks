# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
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


# write a GET route that shows 
# an address
get '/contact' do
  "Address: 192.168.1.1"
end



# write a GET route that shows 
# good job <name> if name is a param
#if not, print good job
get '/great_job/' do
  name = params[:name]
  if name 
    "Good job, #{params[:name]}!"
  else
    "Good Job!"
  end
end


# write a GET route that calulates 2 numbers  
get '/:num1/plus/:num2' do
  int1 = params[:num1].to_i
  int2 = params[:num2].to_i
  answer = int1 + int2
  "#{int1} plus #{int2} equals #{answer}"
end

# write a GET route that selects a student by their age 
get '/students_age/:age' do
  student = db.execute("SELECT * FROM students WHERE age=?", [params[:age]])[0]
  student.to_s
end





