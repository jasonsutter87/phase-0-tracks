# Set up a template hash 
p "Blank Hash"
applicant = {
  name: "", 
  age: 0,
  children: nil,
  pizza: ""
}
      
p applicant


#What is the clients name
p "What is your name?"
#Have the user type in their name
name = gets.chomp




#Ask the user their age
p "What is your age"
#have the user type in their age
age = gets.chomp.to_i



#Ask the user how many children they have
p "How many Children do you have?"
#Have the user type in how many children they have
children = gets.chomp.to_i


#Set children to an empty string
pizza = ""
#Until the user writes yes or no, keep looping
until pizza == "no" || pizza == "yes" 
	#Ask the user if they like pizza
	p "Do you like pizza? (yes or no)"
	#Have the user write down if the like pizza
	pizza = gets.chomp.downcase
end


#populate the hash
applicant[:name] = name
applicant[:age] = age
applicant[:children] = children
applicant[:pizza] = pizza

#Call applicant
p applicant


#ask the user if their work looks correct
p "Would you like to modify your results"
#Set modify to an empty string
modify = ""
#Until the user writes yes or no, keep looping
until modify == "no" || modify == "yes" 
	#Ask the user if they like to modify thier answer
	p "Do you want to modify your results (yes or no)"
	#Have the user write down if they would like to modify their answers
	modify = gets.chomp.downcase
end

if modify == "yes"
    
    #What is the clients name
    p "What is your name?"
    #Have the user type in their name
    name = gets.chomp
    #populate the hash
    applicant[:name] = name
    
    
    #Ask the user their age
    p "What is your age"
    #have the user type in their age
    age = gets.chomp.to_i
     #populate the hash
    applicant[:age] = age
    
    #Ask the user how many children they have
    p "How many Children do you have?"
    #Have the user type in how many children they have
    children = gets.chomp.to_i
     #populate the hash
    applicant[:children] = children
    
    #Set children to an empty string
    pizza = ""
    #Until the user writes yes or no, keep looping
    until pizza == "no" || pizza == "yes" 
    	#Ask the user if they like pizza
    	p "Do you like pizza? (yes or no)"
    	#Have the user write down if the like pizza
    	pizza = gets.chomp.downcase
    end
    #populate the hash
    applicant[:pizza] = pizza


end


#Call applicant
p applicant