class Builder
  def graphiccard
    raise NotImplementedError
  end

  def processor
    raise NotImplementedError
  end

  def cooler
    raise NotImplementedError
  end

  def power_supply
    raise NotImplementedError
  end

  def ram
    raise NotImplementedError
  end
end

class ConcreteBuilder < Builder
  def initialize
    reset
  end

  def reset
    @product = Product.new
  end

  def product
    product = @product
    reset
    product
  end

  def graphiccard
    @product.add('Graphiccard')
  end

  def processor
    @product.add('Processor')
  end

  def cooler
    @product.add('Cooler')
  end

  def power_supply
    @product.add('Power_supply')
  end

  def ram
    @product.add('Ram')
  end
end

class Product
  def initialize
    @parts = []
  end

  def add(part)
    @parts << part
  end

  def list_parts
    "PC: #{@parts.join(', ')}"
  end
end
=begin
  
rescue => exception
  
end
builder = ConcreteBuilder.new
out = true
while out do
  puts "1.Add graphiccard\n
        2.Add processor\n
        3.Add cooler\n
        4.Add power_supply\n
        5.Add ram\n
        6.Out"
  user_input = gets.chomp
  case user_input
  when '1'
    builder.graphiccard
  when '2'
    builder.processor
  when '3'
    builder.cooler
  when '4'
    builder.power_supply
  when '5'
    builder.ram
  when '6'
    out = false
  else
    "I have no idea what to do with that."
  end
end

puts "Full computer"
builder.product.list_parts
=end