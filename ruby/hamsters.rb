#hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
p "What is the hamsters name?"
hamster_name = gets.chomp

p "From 1 - 10  how loud is the hamster?"
hamster_vol = gets.chomp.to_i

p "What color fur does the hamster have?"
hamster_fur = gets.chomp


p "You would adopt this hamster: (True or False)"
hamster_adopt = gets.chomp.downcase

p "How old is this hamster?"
hamster_age = gets.chomp.to_i

if hamster_age == ""
	p hamster_age = nil
end

p "Your new HAMSTER!!!!!! Their name is #{hamster_name}." 
p "Thier  volume is #{hamster_vol}."
p "They have lovely silk fur the color of #{hamster_fur}."
p "They have an age of  #{hamster_age}."
p "The statment about adopting hamster is found here: -------> #{hamster_adopt}."