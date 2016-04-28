# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  @students_music = db.execute("SELECT * FROM students_music")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/students/update' do
  erb :update_students
end

# add static resources
post '/music' do
  db.execute("INSERT INTO students_music (name, fav_band) VALUES (?,?)", [params['name'], params['fav_band']])
  redirect '/'
end






