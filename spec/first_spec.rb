require 'first'

describe Pet do 
  context "Validating methods" do 
    it "Play method " do 
    pet = Pet.new("Mark","black",12, "m")
    expect(pet.play).to eql "Play the game"
    end
    it "Play method " do 
    cat = Cat.new("Mark","black",12, "m")
    expect(cat.sound).to eql "Meow - meow"
    end
  end
end

