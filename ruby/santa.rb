class Santa
	def initialize(name)
		@name = name
		@gender = ""
		@ethnicity = ""
		@reindeer_ranking = "Rudolph Dasher Dancer Prancer Vixen Comet Cupid Donner Blitzen"
		@age = 0
	end

	def speak()
		p "Ho, ho, ho! Haaaappy holidays, said #{@name}"

	end

	def eat_milk_and_cookies()
		if 	Random.rand(5) == 0
			p "MMMMM #{@name} just ate an Chocolatechip Cookie"
		elsif 	Random.rand(5)== 1
			p "MMMMM #{@name} just ate an Snickerdoodle Cookie"
	 	elsif 	Random.rand(5) == 2
	 		p "MMMMM #{@name} just ate an Oreo Cookie"
 		elsif 	Random.rand(5) == 3
 			p "MMMMM #{@name} just ate an Sugar Cookie"
 		else
 			p "MMMMM #{@name} just ate an Almond Cookie"
 		end
	end
	
	def gender(gender)
		@gender = gender
	end
	def ethnicity(ethnicity)
		@ethnicity = ethnicity
	end
	
	def reindeer_ranking(string)
		@reindeer_ranking = string
	end
	
	def age(age)
		@age = age
	end
	
	def update()
		p "Name: #{@name}"
		p "Gender: #{@gender}"
		p "Ethnic Background: #{@ethnicity}"
		p "Rudolph Dasher Dancer Prancer Vixen Comet Cupid Donner Blitzen" "Reindeer Ranking: #{@reindeer_ranking }"
		p "Age: #{@age}"
	end
	
	
	
	
end

santa = Santa.new("Jason Santa")
santa.gender("Male")
santa.ethnicity("White")
santa.age(28)
santa.update
santa.eat_milk_and_cookies