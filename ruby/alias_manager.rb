#In phase-0-tracks/ruby/alias_manager.rb, pseudocode and write a method that takes a spy's real name
#(e.g., "Felicia Torres") and creates a fake name with it by doing the following:

# > Swapping the first and last name.
# > Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants
#(everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' 
#would become 'a', and 'b' would become 'c'.
# > If you get really and truly stuck, just write an alias method that loops through the original
#name and changes the letters somehow, without worrying about implementing this particular algorithm.
#It's really not worth stressing about. Simply attempting the algorithm will help you improve,
#even if you didn't quite get there.

#If you do successfully implement the algorithm, "Felicia Torres" will become "Vussit Gimodoe",

#provide a user interface that lets a user enter a name and get a fake name back.
#Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)

#Set up spy name
$spy_name = ""
def new_spy_name(name)
    
    #Split the name up into characters
    split_name = name.split('')
    #vowel list
    vowel = "aeiou"
    
    #set up count 
    count = 0 
    while count < split_name.length
        
        #Check if the currnet letter is an vowel or not
        if vowel.index(split_name[count])
            #if the vowels are at the end of their list, then return to the start
            if split_name[count] == "u"
                $spy_name = $spy_name + "a"
            #if normal vowel, advance one place
            else 
                 $spy_name = $spy_name + vowel[vowel.index(split_name[count]) + 1]
            end
        #if there is a space in the name, add a space
        elsif split_name[count] == " "
            $spy_name = $spy_name + " "
        #advance the consonate value one place
        else 
            consonants = split_name[count].next 
            #Check if the next value consonant lands on a vowel, if so advance one more time
            if vowel.index(consonants.downcase)
                $spy_name = $spy_name + consonants.next
            #Check if the consonant is an 'z', if so change to a 'b'
            elsif split_name[count] == "z"
                $spy_name = $spy_name + "b"
            #Check if the consonant is an 'Z', if so change to a 'B'
            elsif split_name[count] == "Z"
                $spy_name = $spy_name + "B"
            #if nothing is wrong witht the consonants add it to spy name
            else
                 $spy_name = $spy_name +  consonants
            end
        end
        #advance the count
        count += 1
    end
     $spy_name =  $spy_name + " "
end

#Ask the user to type thir name
p "Enter your name to get a spy name"
p "Or enter 'quit' to quit the program"
#set blank name
name = ''
#set keyword so the programs knows when to stop running
until name == 'quit'
    #UI field to enter name
    name = gets.chomp
    #split names into first and last
    swap_names = name.split(' ')
    #first name
    first_name = swap_names[0]
    #last name
    last_name = swap_names[1]
    #if no last name, down swap names
    if last_name != nil
        name = last_name  + " " + first_name
    end
    #break loop if user types quit
    if name == 'quit'
        break
    end
    #run new_spy_name methond
    new_spy_name(name)
    #Reask the question
    p "Enter your name to get a spy name"
    p "Or enter 'quit' to quit the program"
end

#Ending message
p "Thank you for using the Spy name generator..."
#Run Spy name list
p "Your Spy name is #{$spy_name}"