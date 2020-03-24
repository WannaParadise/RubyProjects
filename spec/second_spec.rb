require 'second'

describe Builder do 
  context "With valid methods" do 
    it "Should check adding new class or not " do 
      builder = ConcreteBuilder.new
      builder.graphiccard
      expect(builder.product.list_parts).to eql "PC: Graphiccard"
    end
    
    it "Should check adding new item or not " do 
        builder = ConcreteBuilder.new
        builder.graphiccard
        builder.processor
        expect(builder.product.list_parts).to eql "PC: Graphiccard, Processor"
      end

    it "Should check adding new item or not " do 
        builder = ConcreteBuilder.new
        builder.graphiccard
        builder.processor
        builder.ram
        expect(builder.product.list_parts).to eql "PC: Graphiccard, Processor, Ram"
    end
  end
end
