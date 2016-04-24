#require SQLite3
require 'SQLite3'
require 'time'




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
		gender VARCHAR (255),
		gym_trips INTEGER
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

# Create Workout_log Table
workout_log_cmd = <<-SQLite3
	CREATE TABLE IF NOT EXISTS workout_log (
		log_id INTEGER PRIMARY KEY,
		athlete_id INTEGER,
		session_id INTEGER,
		date VARCHAR (255),
		FOREIGN KEY (session_id) REFERENCES workout_session(session_id)
		FOREIGN KEY (athlete_id) REFERENCES athlete(athlete_id)
	)
SQLite3

# initialize Fitness Table
sessions_log_cmd = <<-SQLite3
	CREATE TABLE IF NOT EXISTS sessions (
		log_id INTEGER PRIMARY KEY,
		session INTEGER,
		athletes INTEGER,
		machine INTEGER,
		sets INTEGER,
		reps INTEGER,
		weight INTEGER,
		FOREIGN KEY (session) REFERENCES workout_log(session_id)
		FOREIGN KEY (athletes) REFERENCES athlete(athlete_id)
		FOREIGN KEY (machine) REFERENCES workout_machine(machine_id)
	)
SQLite3

#create Fitness Table
db.execute(fitness_type_cmd)
#create Workout_machine Table
db.execute(workout_machine_cmd)
#create Workout_machine Table
db.execute(athlete_cmd)

db.execute(workout_log_cmd)
db.execute(sessions_log_cmd)

def current_time
	d = DateTime.now
	date = d.strftime("%m/%d/%y") 
	time = d.strftime("%I:%M")  


	my_time_string = "#{date} #{time}"
	to_datetime = DateTime.strptime(my_time_string, "%m/%d/%y %H:%M")    

	utc_time = Time.parse(to_datetime.to_s).utc
	pacific_time = utc_time + Time.zone_offset("PDT")
	return utc_time.to_s
end

def set_up_gym(db)
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
end

# Populate Athlete with data
def create_user(db, first_name, last_name, age, body_weight, gender)
	db.execute("INSERT INTO athlete (first_name, last_name, age, body_weight, gender, gym_trips) VALUES (?,?,?,?,?,?)", [first_name, last_name, age, body_weight, gender, 0 ])
end

def workout(db, athlete_id, session_id)
	p "we are working out now!!!"
	p time_now = current_time()
	p athlete_id
	p session_id
	db.execute("INSERT INTO workout_log(athlete_id, session_id, date) VALUES (?,?,?)", [athlete_id, session_id, time_now])

	p "What machine (number) do you want to use? If you want to stop your workout say 'stop workout'"
	p db.execute("select workout_machine.machine_id, workout_machine.name from workout_machine;")
	answer = gets.chomp
	machine = answer
	until answer == 'stop workout'
		p "What set are you on?"
		set = gets.chomp
		p "How many reps did you do?" 
		reps = gets.chomp
		p "How much weight did you lift"
		weight = gets.chomp
		db.execute("INSERT INTO sessions(session, athletes, machine, sets, reps, weight) VALUES (?,?,?,?,?,?)", [session_id, athlete_id, machine, set,reps, weight])
		p "What machine (number) do you want to use next? If you want to stop your workout say 'stop workout'"
		p db.execute("select workout_machine.machine_id, workout_machine.name from workout_machine;")
		answer = gets.chomp
	end
	p "Thank you for working out..... Have a nice day!!"
	gym_visits = db.execute("select * from athlete where athlete_id='#{athlete_id}';")[0][6]
	gym_visit = gym_visits + 1
	db.execute("UPDATE athlete SET gym_trips=#{gym_visit} where athlete_id=#{athlete_id};")
	
	p "Your workout consisted of: (machine id, sessions sets, sessions reps, sessions weight)"
	p db.execute("select sessions.machine, sessions.sets, sessions.reps, sessions.weight from sessions where athletes=#{athlete_id} AND session=#{session_id};")
end

#new user information
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
	p "Awsome! Great to have you #{first_name}. I hope you like Jason's Fitness"
	p "Do you want to work out today? ( yes / no )"
	answer = gets.chomp
	if answer == "yes"
		p "Awesome! Quick tour at Jason's Jason's Fitness"
		p "We have an assortment of machines.You can find a list right here: Cardio, Back, Chest, Bicep, Tricep, Legs, Abs"
		p "Enjoy your workout #{first_name}!"

		p db.execute("SELECT * FROM athlete WHERE first_name='#{first_name}' AND last_name='#{last_name}';") 
		workout(db, db.execute("SELECT * FROM athlete WHERE first_name='#{first_name}' AND last_name='#{last_name}';")[0][0], db.execute("SELECT * FROM athlete WHERE first_name='#{first_name}' AND last_name='#{last_name}';")[0][6])
	else
		p "Bye #{first_name}. Have a good day!"
	end	
end

def add_machine(db, name, focus_id )
	db.execute("INSERT INTO workout_machine(name, focus_id) VALUES (?,?)", [name, focus_id])
end	

def sign_in(db, first_name, last_name)
	p "Lets sign you in #{first_name}"
	if db.execute("SELECT * FROM athlete WHERE first_name='#{first_name}' AND last_name='#{last_name}';") == []
		p "Sorry #{first_name}, You have not signed up yet. Would you like to sign up? ( yes / no)"
		answer = gets.chomp.downcase.to_s
		if answer == "yes"
			p "Setting up new Athlete"
			new_user(db)
		else
			p "Sorry you didnt write 'yes'.."
			p "Would you like to try again? ( yes / no )"
			answer = gets.chomp.downcase.to_s
			if answer == "yes"
				welcome(db)
			else
				p "Have a good day!"
			end
		end
	else
		p "Pulling up your record now..."
		p db.execute("SELECT * FROM athlete WHERE first_name='#{first_name}' AND last_name='#{last_name}';")
		workout(db, db.execute("SELECT * FROM athlete WHERE first_name='#{first_name}' AND last_name='#{last_name}';")[0][0], db.execute("SELECT * FROM athlete WHERE first_name='#{first_name}' AND last_name='#{last_name}';")[0][6])
	end 
end

def welcome(db)
	p "Hello! Welcome to Jason's Fitness"

	if db.execute("SELECT * FROM athlete") == []
		p "Would you like to sign up a new user? ( yes / no)" 
		answer = gets.chomp.downcase.to_s
		if answer == "yes"
			p "Setting up new Athlete"
			new_user(db)
		else
			p "Sorry you didnt write 'yes'.."
			p "Would you like to try again? ( yes / no )"
			answer = gets.chomp.downcase.to_s
			if answer == "yes"
				welcome(db)
			else
				p "Have a good day!"
			end
		end
	else
		p "Would you like to sign up a 'new user' or 'sign in'?" 
		answer = gets.chomp.downcase.to_s
		if answer == "new user"
			p "Setting up new Athlete"
			new_user(db)
		elsif answer == 'sign in'
			p "cool Lets sign in"
			p "What is your first name?"
			first_name = gets.chomp.to_s
			p "What is your last name?"
			last_name = gets.chomp.to_s
			sign_in(db, first_name, last_name)
		else
			p "Sorry you didnt write 'new user' or 'sign in'.."
			p "Would you like to try again? ( yes / no )"
			answer = gets.chomp.downcase.to_s
			if answer == "yes"
				welcome(db)
			else
				p "Have a good day!"
			end
		end
	end	

	
end

# GYM PERSONA driver code
set_up_gym(db)
#add_machine(db, "Sit Ups", 7)
welcome(db)

