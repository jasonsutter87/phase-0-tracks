def is_vampire?(name, age, garlic, health_insurance, allergies)
    #If the employee got their age right, and is willing to eat garlic bread or sign up for insurance,
    #the result is “Probably not a vampire.”
    if (name != "Drake Cula"  &&  name != "Tu Fang") && (age <= 100) && (garlic == "yes" || health_insurance == "yes")
    	p "Probably not a vampire."
    #If the employee got their age wrong, and hates garlic bread or waives insurance,
    #the result is “Probably a vampire.”
    elsif (age >= 100) && (garlic == "no" || health_insurance == "no")
    	 p "Probably a vampire."
    #If the employee got their age wrong, hates garlic bread, and doesn’t want insurance,
    #the result is “Almost certainly a vampire.”
    elsif (age >= 100) && (garlic == "no" && health_insurance == "no")
    	 p "Almost certainly a vampire."
	#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang”
	#is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
	elsif (name == "Drake Cula"  || name == "Tu Fang") || (allergies == "sunshine")
		p "Definitely a vampire."
	else 
    	p "Results inconclusive."
    end
end

#how many employees will be processed
p "how many employees will be processed today (numbers only or the program will stop running)"
employees_today = gets.chomp.to_i

count = 0 
until count == employees_today

	#What is your name? Some known vampires are in the area,
	#and we can check against the Werewolf Intelligence Bureau database for their aliases.
	p "What is your name?"
	name = gets.chomp
	
	#How old are you? What year were you born? 
	#This is to try to trick the vampire, who is likely several hundreds of years old.
	#If an employee gives an age and a year of birth that don’t line up mathematically, 
	#that employee might be a vampire.
	p "What is your age?"
	age = gets.chomp.to_i
	
	#Our company cafeteria serves garlic bread.
	#Should we order some for you? Vampires hate garlic.
	# Do not even get a vampire started on garlic.
	# Invite a vampire to an Italian restaurant even one time, 
	#and you’ll never hear the end of it.
	p "Would you like garlic bread during lunch? (yes or no)"
	garlic = gets.chomp.downcase
	
	if garlic != "yes" || garlic != "no"
		until (garlic == "yes" || garlic == "no")
			p "error. yes or no"
			p "Would you like garlic bread during lunch? (yes or no)"
			garlic = gets.chomp.downcase
		end
	end
	
	#Would you like to enroll in the company’s health insurance? Vampires are immortal,
	# so they certainly don’t need health insurance.
	p "Would you like to enroll in the company’s health insurance? (yes or no)"
	health_insurance = gets.chomp.downcase
	
	if health_insurance != "yes" || health_insurance != "no"
		until (health_insurance == "yes" || health_insurance == "no")
			p "error. yes or no"
			p "Would you like to enroll in the company’s health insurance? (yes or no)"
			health_insurance = gets.chomp.downcase
		end
	end
	
	#In addition to the other questions in the survey, use a loop to ask the employee 
	#to name any allergies, one at a time. The employee can type “done” when finished.
	p "We would like to ask you to list all your allergies since we share a kitchen."
	p "If you dont have any allergies write 'none' then write 'done' when finished"
	allergies = gets.chomp.downcase
	until allergies == "done"
		if allergies == "sunshine"
			break
		end 
		p allergies
		p "please list more allergies"
		allergies = gets.chomp.downcase
	end

	p "Information about #{name} is shown below" 
	is_vampire?(name, age, garlic, health_insurance, allergies)
	count += 1
end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."