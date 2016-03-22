#encrypt("abc") should return "bcd"
#encrypt("zed") should return "afe"
#decrypt("bcd") should return "abc"
#decrypt("afe") should return "zed"

#encrypt check number of elements in the string using length

#Loop! (3 letter string)
  #for element0 advance one place.
  #for element1 advance one place.
  #for element2 advance one place.
# end loop

def encrypt(string)
  length = string.length
  
  
  encrypt_string = ""
  count = 0 
  until count >= length
    if string[count] == "z"
      encrypt_string = encrypt_string +  "a"
      
    else 
      encrypt_string = encrypt_string + string[count].next
    end
    count += 1
  end
  p encrypt_string 
end

#encrypt("abc")
#encrypt("zed")


#decrypt check number of elements in the string using length

#Loop! (3 letter string)
  #for element0 find out where it is in the alphabet, then subtract one place. (if the letter is an "a" then covert and set the letter to "z")
  #for element1 find out where it is in the alphabet, then subtract one place. (if the letter is an "a" then covert and set the letter to "z")
  #for element2 find out where it is in the alphabet, then subtract one place. (if the letter is an "a" then covert and set the letter to "z")
# end loop


def decrypt(string)
  length = string.length
  
  decrypt_string = ""
  count = 0 
  
  until count >= length
    if string[count] == "a"
      decrypt_string = decrypt_string +  "z"
      
    elsif string[count] == "!"
      new_letter = " "
      decrypt_string = decrypt_string + new_letter
      
    elsif string[count] == string[count].upcase
        upper_alphabet = "abcdefghijklmnopqrstuvwxyz".upcase
        index_val = upper_alphabet.index(string[count])
        new_letter = upper_alphabet[index_val - 1]
        decrypt_string = decrypt_string + new_letter
      
    else
      alphabet = "abcdefghijklmnopqrstuvwxyz"
      index_val = alphabet.index(string[count])
      new_letter = alphabet[index_val - 1]
      decrypt_string = decrypt_string + new_letter
    end
    count += 1
  end
  p decrypt_string 
end
  
  
  
#decrypt("bcd")
#decrypt("afe")


#decrypt(encrypt("The duck flies at midnight"))
#This worked because it first encrypts the message. Then it decrpts the result of the encryption. (which is drawn out in our methods)


#Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
#Asks them for the password
#Conducts the requested operation, prints the result to the screen, and exits

p "What is your password"
password = gets.chomp

p "Would like to encrypt or decrypt that password? (encrypt or decrypt)"
answer = gets.chomp.downcase

if answer == "encrypt"
  encrypt(password)
elsif
  decrypt(password)
else
 p "Ummmmmm I don't understand"
end
