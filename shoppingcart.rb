#shopping cart
#we need to add a product
#we need to remove a product
#we need to add cost of products before tax
#we need to add cost of products after tax


require_relative("product")

class Shoppingcart
  @@shopping_cart = []

def initialize

end


def add_product

  puts "What item do you want to add from your bag to the cart?"
  user_product = gets.chomp.strip
    Product.shopping_bag.each do |product|
      if user_product == product.name
        @@shopping_cart << product
      end
    end
end

def remove_product

  puts "What product do you want to remove from the cart?"
    user_product= gets.chomp.strip

  remove_from_cart= []
    @@shopping_cart.each do |product|
      if user_product == product.name
        remove_from_cart << product
      end
    end

    remove_from_cart.each do |item|
      @@shopping_cart.delete(item)
    end

  return @@shopping_cart


end



#obtain product instnace made from product class
#shovel that into the shopping cart array
#shopping cart array is a class variable or an instance?

def cart_before_tax
#go into our array
#get product price before tx
#sum the array
sum_base_price = []

  @@shopping_cart.each do |product|
    sum_base_price << product.base_price
  end

return sum_base_price.sum


end


def cart_after_tax

  sum_after_tax = []

    @@shopping_cart.each do |product|
      sum_after_tax << product.total_price
    end

  return sum_after_tax.sum


end


def self.shopping_cart
@@shopping_cart
end


end



cart1 = Shoppingcart.new
puts cart1.inspect

puts cart1.add_product
puts cart1.add_product
puts cart1.add_product


puts "%%%%%%%%%%%%%"

puts Shoppingcart.shopping_cart
puts cart1.remove_product

puts Shoppingcart.shopping_cart.inspect
puts "It's tax time, bitch!"

puts "Your total before tax is: "
puts cart1.cart_before_tax
puts "Your total after tax is: "
puts cart1.cart_after_tax
































=begin

require_relative("product")

class Shoppingcart

@@tax_rate = 1.13

  def initialize
    @shopping_cart = []

  end


  def add_product
    puts "What would you like to put in your cart?"
    name = gets.chomp.strip
    add_product = Product.new(name)

    @shopping_cart << add_product


  end

  def remove_product
    puts "What do you want to remove from the cart?"
    user_remove = gets.chomp.strip
    @shopping_cart.each do |product|
      if product.name == user_remove
        @shopping_cart.delete(product)
        return "The #{user_remove} has been removed from your cart."
      end

    end

      return "That's not in your cart."


  end

  #this loop will check each product.name ==user_remove
  #if there was an else statement, it would do the other thing
  #but we dont want it to do another thing, until the if statement completes its loop

#hwne i put puts i get sort of what i want
#when i put return i dont get acknoeledgement that i went through loop

  def cart_contents

    p @shopping_cart
  end


  def before_tax

    before_tax_array = []

    @shopping_cart.each do |product|
      before_tax_array << product.price
    end

  return  "The total cost of all your items before tax is $#{before_tax_array.sum}"

  end


  def after_tax

  after_tax_array = []
  @shopping_cart.each do |product|
    after_tax_array << product.total_price

    puts "The total cost of all your items after tax is #{after_tax_array.sum}"

    end
end




end


cart1= Shoppingcart.new
cart1.add_product

cart1.add_product

cart1.add_product



puts "--------"
puts cart1.cart_contents

puts "------------"
puts "------------"

puts cart1.remove_product
puts cart1.cart_contents

cart1.after_tax

#return statements never give anything to the user (console)
#they merely return values to the terminal
#therefore you need to puts the method in order ot get the value


#can you call instance methods from a different class?
#if not, what is the point of making a particular instance method in the first place
#if you can just store a variable, gets in this one?


#my array is a list of objects
#therefore to access these objects, i need to use my instance methods

=end
