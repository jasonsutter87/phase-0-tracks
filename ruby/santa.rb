#Set Santa Class
class Santa
  #read Attributes
  attr_reader :gender, :ethnicity
  # read+write Attributes
  attr_accessor :reindeer_ranking, :age
  
  #initialize method
  def initialize(name)
    @name = name
    @gender = ""
    @ethnicity = ""
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  #Speak method
  def speak
    p "Ho, ho, ho! Haaaappy holidays, said #{@name}"

  end

  #eat cookies and drink milk method
  def eat_milk_and_cookies
    if   Random.rand(5) == 0
      p "MMMMM #{@name} just ate an Chocolatechip Cookie"
    elsif   Random.rand(5)== 1
      p "MMMMM #{@name} just ate an Snickerdoodle Cookie"
     elsif   Random.rand(5) == 2
       p "MMMMM #{@name} just ate an Oreo Cookie"
     elsif   Random.rand(5) == 3
       p "MMMMM #{@name} just ate an Sugar Cookie"
     else
       p "MMMMM #{@name} just ate an Almond Cookie"
     end
  end
  
  #set gender method
  def set_gender(gender)
    @gender = gender
  end

  #set Ethnicity method
  def set_ethnicity(ethnicity)
    @ethnicity = ethnicity
  end
  
  #set reindeer ranking method
  def set_reindeer_ranking(string)
    @reindeer_ranking = string
  end
  
  #Set age method
  def set_age(age)
    @age = age
  end
  
  #update Method
  def update
    p "Name: #{@name}"
    p "Gender: #{@gender}"
    p "Ethnic Background: #{@ethnicity}"
    p "Reindeer Ranking: #{@reindeer_ranking}"
    p "Age: #{@age}"
  end

  #clebrate birtday method
  def celebrate_birthday
    @age = @age + 1
  end

  #get mad at reindeer method
  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name) == true
      index = @reindeer_ranking.index(reindeer_name)
      @reindeer_ranking.insert(-1, reindeer_name)
      @reindeer_ranking.delete_at(index)
    end
  end
  
end

#Set Gender list
gender_list = ["agender", "female", "bigender", "male", "female", "gender fluid", "whale",  "clown",  "N/A"]
#Set Ethic List
ethnicities_list = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


1000.times do |x|
	santa = Santa.new("Santa number #{x}")
	santa.speak
	santa.set_gender(gender_list[Random.rand(gender_list.length)])
	santa.set_ethnicity(ethnicities_list[Random.rand(ethnicities_list.length)])
	santa.set_age(Random.rand(140))
	santa.update
	santa.eat_milk_and_cookies
end



#santa = Santa.new("Jason Santa")
#santa.set_gender("Male")
#santa.set_ethnicity("White")
#santa.set_age(28)
#santa.update
#santa.eat_milk_and_cookies


#p "testing out gender....#{santa.gender}"
#santa.get_mad_at("Rudolph")
#santa.update


#santa.celebrate_birthday
#santa.update