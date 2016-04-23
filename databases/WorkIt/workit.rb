#require SQLite3
require 'SQLite3'


# Create SQLite3 database
db = SQLite3::Database.new("workit.db")

# initialize Fitness Table
fitness_type_cmd = <<-SQLite3
	CREATE TABLE IF NOT EXISTS fitness_type (
		focus_id INTEGER PRIMARY KEY,
		catagory VARCHAR (255)
	)
SQLite3

# initialize Athlete Table
athlete_cmd = <<-SQLite3
	CREATE TABLE IF NOT EXISTS athlete (
		athlete_id INTEGER PRIMARY KEY,
		first_name VARCHAR (255),
		last_name VARCHAR (255),
		age INTEGER,
		body_weight INTEGER,
		gender VARCHAR (255)
	)
SQLite3


# initialize Workout_machine Table
workout_machine_cmd = <<-SQLite3
	CREATE TABLE IF NOT EXISTS workout_machine (
		machine_id INTEGER PRIMARY KEY,
		name VARCHAR (255),
		focus_id INTEGER,
		FOREIGN KEY (focus_id) REFERENCES fitness_type(focus_id)
	)
SQLite3

#create Fitness Table
db.execute(fitness_type_cmd)
#create Workout_machine Table
db.execute(workout_machine_cmd)

# Populate fitness_type with database
if db.execute("SELECT * FROM fitness_type") == []
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Cardio');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Back');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Chest');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Bicep');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Tricep');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Legs');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Abs');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Lats');")
	db.execute("INSERT INTO fitness_type(catagory) VALUES ('Shoulders');")
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
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Deltoid Fly', 2);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Vertical Row', 2);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('High Row', 2);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Low Row', 2);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Chin Dip Assist', 5);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Lower Back', 5);")

	#chest
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Chest Press', 3);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Incline Press', 3);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Deltoid Fly', 3);")

	#bicep
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Biceps Curls', 4);")

	#tricep
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Tricepts Extension', 5);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Dip Machine', 5);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Chin Dip Assist', 5);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Tricep pull downs', 5);")

	#legs
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Seated Leg Press', 6);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Standing Calf', 6);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Leg Extension', 6);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Seated Leg Curl', 6);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Kneeling Leg Curl', 6);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Adductor Leg Curl', 6);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Abductor Leg Curl', 6);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Glute Press', 6);")

	#abs
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Abdominal', 7);")

	# Lats
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Fixed Lat Pull Down', 8);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Lat Pull Down', 8);")

	# Shoulder
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Shoulder Press', 9);")
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES ('Deltoid Raise', 9);")
end

#create Workout_machine Table
db.execute(athlete_cmd)

# Populate Athlete with data
def create_user(db, first_name, last_name, age, body_weight, gender)
	db.execute("INSERT INTO athlete (first_name, last_name, age, body_weight, gender) VALUES (?,?,?,?,?)", [first_name, last_name, age, body_weight, gender])
end


def new_user(db)
	p "What is your first name?"
	first_name = gets.chomp.to_s
	p "What is your last name?"
	last_name = gets.chomp.to_s
	p "What is your age?"
	age = gets.chomp.to_i
	p "What is your weight?"
	body_weight = gets.chomp.to_i
	p "What is your gender?"
	gender = gets.chomp.to_s
	create_user(db, first_name, last_name, age, body_weight, gender)
end	

new_user(db)











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


