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




pizza_list = []

p "Welcome to the Pizza Joint! How many pizza would you like"
pizza_count = gets.chomp.to_i

count = 1
while count <= pizza_count 
  p "What kind of pizza would you want (cheese, pepperoni, bbq, chicken garlic, cajun chicken, other)"
  pizza_type = gets.chomp.downcase
  
  pizza = Pizza.new (pizza_type)

  if pizza_type == "cheese"
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
  
  p "What size pizza do you want? (small, medium, large, extra-large)"
  size = gets.chomp.downcase
  pizza.set_pizza_size(size)
  
  
  pizza_number = "Pizza number #{count}"
  

  pizza_list << {"name" => pizza.name, "size" => pizza.size, "toppings" => pizza.toppings, "sauce" => pizza.sauce, "price" => pizza.price}

  p "Lets confirm that pizza"
  pizza.update
  

  count += 1
end

sub_total = []

p "Lets confirm your pizza order"
p "You ordered #{pizza_list.count} pizzas"
pizza_list.length.times do |x|
  p "Pizza number #{x + 1}"
   sub_total << pizza_list[x]["price"]
  p pizza_list[x]
  
end


def total (arr)
    sum = 0.0
    arr.length.times do |x|
         sum = sum + arr[x]
    end
    p sum
end

p "Your Sub-Total is:"
p sub_total

p "Your Total is:"
total (sub_total)

