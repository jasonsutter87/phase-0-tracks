class Santa
  attr_reader :gender, :ethnicity
  attr_accessor :reindeer_ranking, :age
  
  def initialize(name)
    @name = name
    @gender = ""
    @ethnicity = ""
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays, said #{@name}"

  end

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
  
  def set_gender(gender)
    @gender = gender
  end
  def set_ethnicity(ethnicity)
    @ethnicity = ethnicity
  end
  
  def set_reindeer_ranking(string)
    @reindeer_ranking = string
  end
  
  def set_age(age)
    @age = age
  end
  
  def update
    p "Name: #{@name}"
    p "Gender: #{@gender}"
    p "Ethnic Background: #{@ethnicity}"
    p "Reindeer Ranking: #{@reindeer_ranking}"
    p "Age: #{@age}"
  end

  
  def celebrate_birthday
    @age = @age + 1
  end

  
  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name) == true
      index = @reindeer_ranking.index(reindeer_name)
      @reindeer_ranking.insert(-1, reindeer_name)
      @reindeer_ranking.delete_at(index)
    end
  end
  

  
  
end

santa = Santa.new("Jason Santa")
santa.set_gender("Male")
santa.set_ethnicity("White")
santa.set_age(28)
santa.update
santa.eat_milk_and_cookies


p "testing out gender....#{santa.gender}"
santa.get_mad_at("Rudolph")
santa.update


santa.celebrate_birthday
santa.update