#class pizza
class Pizza
  #Read-only attributes
  attr_reader :name 
  #read-Write attributes
    attr_accessor :price, :size, :toppings

  #init Method
  def initialize(name)
      @name = name
      @size = ""
      @toppings = ["Cheese"]
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
  
  #Set pizza toppings method
  def set_toppings(toppings)
    @toppings = toppings
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





pizza = Pizza.new("basic")
pizza.update
pizza.set_pizza_size("small")
pizza.update
pizza.set_toppings("Chicken")
pizza.update


#Random Pizza Generator

#UI Pizza Generator