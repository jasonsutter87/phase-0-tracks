#class pizza
class Pizza
  #Read-only attributes
  attr_reader :name, :sauce
  #read-Write attributes
    attr_accessor :price, :size, :toppings

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
    if @toppings.include?(toppings) == true
        new_toppings = @toppings.index(toppings)
        @toppings.delete_at(new_toppings)
      end
  end

  #change price
  def change_price(price)
    @price = price
  end

  def update
    p "Pizza Name: #{@name}"
    p "Pizza Size: #{@size}"
    p "Pizza Toppings: #{@toppings}"
    p "Pizza Price: #{@price}"
  end
end





#pizza = Pizza.new("basic")
#pizza.update
#pizza.set_pizza_size("small")
#pizza.update
#pizza.set_toppings("Chicken")
#pizza.update



#UI Pizza Generator

p "Welcome to the Pizza Joint! How many pizza would you like"
pizza_count = gets.chomp.to_i

until pizza_count == 0 
  p "What kind of pizza would you want (cheese, pepperoni, bbq, chicken garlic, cajun chicken, other)"
  pizza_type = gets.chomp.downcase

  if pizza_type == "cheese"
    p "By deafult that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
          end

          p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
          change_ingredients = gets.chomp.downcase
      end
    end
	
  elsif pizza_type == "pepperoni"
    p "By deafult that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
          end

          p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
          change_ingredients = gets.chomp.downcase
       end
  	end
  
  elsif pizza_type == "bbq"
    p "By deafult that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
          end

          p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
          change_ingredients = gets.chomp.downcase
      end
  	end
  elsif pizza_type == "chicken garlic"
    p "By deafult that pizza comes with #pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppingss.include?(remove) == true
            pizza.remove_topping(remove)
          end

          p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
          change_ingredients = gets.chomp.downcase
      end
    end
  elsif pizza_type == "cajun chicken"
    p "By deafult that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
          end

          p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
          change_ingredients = gets.chomp.downcase
      end
    end
  else
    p "By deafult that pizza comes with #{pizza.toppings}. Would you want to remove ingredients (yes or no)"
    change_ingredients = gets.chomp.downcase
    if change_ingredients == "yes"
      until change_ingredients == "no"
          p "Okay, What would you like to remove"
          remove = gets.chomp.downcase

          if pizza.toppings.include?(remove) == true
            pizza.remove_topping(remove)
          end

          p "Okay the pizza now only has #{pizza.toppings} as toppings. Would you want to modify it more (yes or no)"
          change_ingredients = gets.chomp.downcase
      end

  	end
  end
	

  pizza_count -= 1
end
