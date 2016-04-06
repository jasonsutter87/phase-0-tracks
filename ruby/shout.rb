#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end

#  def self.yelling_happily(word)
#  	words + "YEEEEEEEEEEEE!!!!...:) "
#  end 
#end


#Shout Module
module Shout
	def shout_loud(string)
    	p "I am shouting!!!! #{string} ..."
  	end
end


#Human Class
class Human
	include Shout
end


#Gorilla Class 
class Gorilla
	include Shout
end


#driver code for human
man = Human.new
man.shout_loud("AHHHHH ECHO!!!!")

#driver code for gorilla
gorilla = Gorilla.new
gorilla.shout_loud("UUUUHAHAHAHAHAHA MONKEY TIME!!")