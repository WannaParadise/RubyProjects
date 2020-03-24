require 'four'

describe Visitor do 
  context "With valid methods" do 
    it "Should check adding new class or not " do 
    p2 = Product.new(name: 'Beer', price: 5)
    order = Order.new
    order.add_product(p2)
    expect(p2).to have_attributes(name: 'Beer') 
    expect(p2).to have_attributes(price: 5) 
    end
  end
end
