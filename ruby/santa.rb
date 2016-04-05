class Santa
	def initialize(name)
		@name = name
		
	end

	def speak()
		p "Ho, ho, ho! Haaaappy holidays, said #{@name}"

	end

	def eat_milk_and_cookies()
		if 	Random.rand(5) == 0
			p "MMMMM #{@name} just ate an Chocochip Cookie"
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
	
	
	
	
	
	
end

santa = Santa.new("Jason Santa")
santa.eat_milk_and_cookies