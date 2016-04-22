#require SQLite3
require 'SQLite3'


# Create SQLite3 database
 db = SQLite3::Database.new("workit.db")

# Create Fitness Table
fitness_type_cmd = <<-SQLite3
	CREATE TABLE IF NOT EXISTS fitness_type (
		focus_id INTEGER PRIMARY KEY,
		catagory VARCHAR (255)
	)
SQLite3

# Create Athlete Table
athlete_cmd = <<-SQLite3
	CREATE TABLE IF NOT EXISTS athlete (
		athlete_id INTEGER PRIMARY KEY,
		first_name VARCHAR (255),
		last_name VARCHAR (255),
		age INTEGER,
		weight INTEGER,
		gender VARCHAR (255)
	)
SQLite3


# Create Workout_machine Table
workout_machine_cmd = <<-SQLite3
	CREATE TABLE IF NOT EXISTS workout_machine (
		machine_id INTEGER PRIMARY KEY,
		name VARCHAR (255),
		focus_id INTEGER,
		FOREIGN KEY (focus_id) REFERENCES fitness_type(focus_id)
	)
SQLite3


db.execute(fitness_type_cmd)
db.execute(workout_machine_cmd)

db.execute(athlete_cmd)




# Populate fitness_type with database
if db.execute("SELECT * FROM fitness_type") == []
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Cardio');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Back');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Chest');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Bicep');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Tricep');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Legs');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Abs');")
end

# Populate workout_machine with data
if db.execute("SELECT * FROM workout_machine") == []
	#cardio
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Elliptical', 1);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Treadmill', 1);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Adaptive Motion Trainer', 1);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Bike', 1);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Stair Master', 1);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Row Machine', 1);")
	#back
	#chest
	#bicept
	#tricep
	#legs
	#ab




end


# get user information (first name, last name age, body weight, gender)
# Populate Athlete with data
# Create Workout_log Table
# Create PR Table
# start workout button ->

	# Create Workout_session Table

	#if PR save information and put into PR table if no entieries or hight value







#until we have a user......don't run





# # Create Workout_session Table
# workout_session_cmd = <<-SQLite3
# 	CREATE TABLE IF NOT EXISTS workout_session (
# 	session_id INTEGER PRIMARY KEY
# 	set INTEGER,
# 	reps INTEGER,
# 	weight INTEGER,
# 	catagory VARCHAR (255),
# 	machine_id INTEGER,
# 	FOREIGN KEY (machine_id) REFERENCES workout_machine(machine_id)
# 	)
# SQLite3




	





# # Create Workout_log Table
# workout_log_cmd = <<-SQLite3
# 	CREATE TABLE IF NOT EXISTS workout_log (
# 		athlete_id INTEGER PRIMARY KEY,
# 		date DATETIME(datetime),
# 		session_id INT,
# 		FOREIGN KEY (session_id) REFERENCES workout_session(session_id)
# 		FOREIGN KEY (athlete_id) REFERENCES athlete(athlete_id)
# 	)
# SQLite3



# #PR TABLE
# # personal best for each Athlete per machine








# #db.execute(workout_session_cmd)
# #db.execute(workout_log_cmd)

# view Table
