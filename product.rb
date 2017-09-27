=begin
each product must have:
name
base price
tax rate

methods
calculate the total price based on the base price and tx rate

if the shoppping cart requires products, it makes sense ot make the product class first

=end

class Product
  @@tax_rate = 1.13
  @@shopping_bag = []

  def initialize(name, price)

    @name = name
    @price = price
    @total_price = total_price

  end

  def name
    @name
  end


  def base_price
    @price
  end


  def total_price
    #why didnt i need a reader to access the tax_rate?
    @total_price = base_price*@@tax_rate
    @total_price.round(2)


  end


  def price
    @price
  end


  def add_product_bag
    @@shopping_bag << self
  end

  def self.shopping_bag
    @@shopping_bag

  end



end


product1= Product.new("gun", 5)
product2 = Product.new("toy duck",56)
product3= Product.new("rock", 700)
product4 = Product.new("watermelon", 25)
product5 = Product.new("meaning", 5000)
product6= Product.new("purpose", 5000)


product1.add_product_bag
product2.add_product_bag
product3.add_product_bag
product4.add_product_bag
product5.add_product_bag
product6.add_product_bag

puts Product.shopping_bag.inspect

puts "~~~~~~~~~~~~~~~~~~~~~~"

#when to make something a local variable vs when to make it an instance variable

#we need readers and writers only to access the instance and class variables tht are outside the code structure for the class
