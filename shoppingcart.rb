=begin

Each shopping cart contains a database (array) of all the products
this class should also
-take a product from product class and add it to the cart
-remove the product from the cart
-add the total cost of all products in cart before tax
-add total cost of all products after tax

=end


#add product to the cart
#remove product from cart
#addd total cost in products before tax_rate
#add after cost post tax



#i will need to reference my product class in order to get them in my cart


require_relative("product")

class Shoppingcart

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
        puts "The #{user_remove} has been removed from your cart."
      else
        puts "That's not in your cart."
      end
    end

  end

#hwne i put puts i get sort of what i want
#when i put return i dont get acknoeledgement that i went through loop 

  def cart_contents

    p @shopping_cart
  end

  def before_tax

    @shopping_cart.each do |product|


    end

  end


  def after_tax



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

cart1.remove_product
puts cart1.cart_contents


#can you call instance methods from a different class?
#if not, what is the point of making a particular instance method in the first place
#if you can just store a variable, gets in this one?


#my array is a list of objects
#therefore to access these objects, i need to use my instance methods
