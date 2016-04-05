#class pizza
class Pizza
  #Read-only attributes
  attr_reader :name, :sauce, :price, :size
  #read-Write attributes
  attr_accessor  :toppings

  #init Method
  def initialize(name)
    @name = name
    @size = ""
    if @name == "cheese"
      @toppings = ["cheese"]
      @sauce = "marinara"
    elsif @name == "pepperoni"
      @toppings = ["cheese", "pepperoni"]
      @sauce = "marinara"
    elsif @name == "bbq"
      @toppings = ["cheese", "red onion", "chicken", "green onion", "cilantro"]
      @sauce = "bbq"
    elsif @name == "chicken garlic"
      @toppings = ["cheese", "chicken", "green onion", "red onion", "garlic", "tomatoes", "cilantro"]
      @sauce = "alfredo"
    elsif @name == "cajun chicken"
      @toppings = ["cheese", "cajun chicken", "yellow bell pepper", "red bell pepper", "green onion"]
      @sauce = "cajun alfredo"
      @toppings = [""]
    else
      @toppings = ["cheese", "chicken", "yellow bell pepper", "red bell pepper", "cilantro", "green onion", "red onion", "garlic", "tomatoes", "pepperoni"]
      @sauce = "marinara"
    end
    @price = 0
  end

  #set_pizza_size method
  def set_pizza_size(size)
  @size = size
  #set price
    if @size == "small"
      @price = 18.00
    elsif @size  == "medium"
      @price = 20.00
    elsif @size  == "large"
      @price = 22.00
    else
      @price = 25.00 
    end  
  end

  #change size
  def change_pizza_size(size)
    @size = size    
  end
  
  #remove toppings
  def remove_topping(toppings)
    # if topping are included in topping list
    if @toppings.include?(toppings) == true
        new_toppings = @toppings.index(toppings)
        @toppings.delete_at(new_toppings)
    end
  end

  #change price
  def change_price(price)
    @price = price
  end

  #update 
  def update
    p "Pizza Name: #{@name}"
    p "Pizza Size: #{@size}"
    p "Pizza Toppings: #{@toppings}"
    p "Pizza Sauce: #{@sauce}"
    p "Pizza Price: #{@price}"
  end
end


#Blank pizza list
pizza_list = []


#first question
p "Welcome to the Pizza Joint! How many pizza would you like"
pizza_count = gets.chomp.to_i


#set up loop 
count = 1
while count <= pizza_count 
  #Ask what kind of pizza
  p "What kind of pizza would you want (cheese, pepperoni, bbq, chicken garlic, cajun chicken, other)"
  pizza_type = gets.chomp.downcase
  
  pizza = Pizza.new (pizza_type)

  #if Cheese?
  if pizza_type == "cheese"
    #state toppings and ask to remove anything
    p "By default that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    #if yes... then loop until no.
    if change_ingredients == "yes"
      until change_ingredients == "no"
          #Ask what item you want to be removed
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          #check if item is even in the toppings
          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
            #Check again if they what to change toppings. 
            p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
            change_ingredients = gets.chomp.downcase
           else
              #Error out and reask the question
              p "Error. #{remove} is not part of the toppings."
              p "Would you want to modify it more (yes or no)"
              change_ingredients = gets.chomp.downcase
          end

          
      end
    end
  
  elsif pizza_type == "pepperoni"
    p "By default that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
            p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
            change_ingredients = gets.chomp.downcase
           else
              p "Error. #{remove} is not part of the toppings."
              p "Would you want to modify it more (yes or no)"
              change_ingredients = gets.chomp.downcase
          end
      end
    end
  
  elsif pizza_type == "bbq"
    p "By default that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
            p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
            change_ingredients = gets.chomp.downcase
           else
              p "Error. #{remove} is not part of the toppings."
              p "Would you want to modify it more (yes or no)"
              change_ingredients = gets.chomp.downcase
          end
      end
    end
  elsif pizza_type == "chicken garlic"
    p "By default that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
            p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
            change_ingredients = gets.chomp.downcase
           else
              p "Error. #{remove} is not part of the toppings."
              p "Would you want to modify it more (yes or no)"
              change_ingredients = gets.chomp.downcase
          end

          
      end
    end
  elsif pizza_type == "cajun chicken"
    p "By default that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
            p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
            change_ingredients = gets.chomp.downcase
           else
              p "Error. #{remove} is not part of the toppings."
              p "Would you want to modify it more (yes or no)"
              change_ingredients = gets.chomp.downcase
          end

          
      end
    end
  else
    new_name = pizza_type
    @name = new_name.replace('Custom Pizza')
    p "By default that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
            p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
            change_ingredients = gets.chomp.downcase
           else
              p "Error. #{remove} is not part of the toppings."
              p "Would you want to modify it more (yes or no)"
              change_ingredients = gets.chomp.downcase
          end

          
      end
    end
  end
  
  #Ask what size of pizza
  p "What size pizza do you want? (small, medium, large, extra-large)"
  #change input to downcase
  size = gets.chomp.downcase
  pizza.set_pizza_size(size)
  
  
  #Set the pizza number
  pizza_number = "Pizza number #{count}"
  

  #Add pizza to list of pizza
  pizza_list << {"name" => pizza.name, "size" => pizza.size, "toppings" => pizza.toppings, "sauce" => pizza.sauce, "price" => pizza.price}

  #Confirm the pizza
  p "Lets confirm that pizza"
  pizza.update
  
  #advance the count
  count += 1
end

#Set up empty array for sub-total
sub_total = []

#Confirm your whole pizza order
p "Lets confirm your pizza order"
p "You ordered #{pizza_list.count} pizzas"
#loop through the list of pizza
pizza_list.length.times do |x|
  p "Pizza number #{x + 1}"
   #Add the prices to the sub-total array
   sub_total << pizza_list[x]["price"]
  #print pizza order out
  p pizza_list[x]
  
end


#Total method
def total (arr)
    #Set sum to 0
    sum = 0.0
    #for how long the sub-total is, loop...and add prices
    arr.length.times do |x|
         sum = sum + arr[x]
    end
    #Show final price
    p sum
end

#show sub-total
p "Your Sub-Total is:"
p sub_total

#run total method
p "Your Total is:"
total (sub_total)

