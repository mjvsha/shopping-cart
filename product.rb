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

  def initialize(name)
    @tax_rate = 0.13
    @name = name

  end

  def product_price
    puts "The price of this #{@name} is : "
    @price = gets.chomp.strip.to_i
    "$#{@price}"


  end


  def total_price

    total_price = @price*0.13 + @price
    "$#{total_price.ceil}"


  end

end


product1= Product.new("gun")
puts product1.product_price
puts product1.total_price
puts product1.inspect

product2 = Product.new("toy duck")
puts product2.product_price
puts product2.total_price
puts product2.inspect

#when to make something a local variable vs when to make it an instance variable
