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
    @total_price = base_price*@@tax_rate.round(2)
      

  end


  def price
    @price
  end



end


product1= Product.new("gun", 5)


product2 = Product.new("toy duck",56)


puts product2.inspect
puts product2.total_price
puts product1.total_price


#when to make something a local variable vs when to make it an instance variable

#we need readers and writers only to access the instance and class variables tht are outside the code structure for the class
