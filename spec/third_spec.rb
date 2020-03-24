require 'third'

describe User do 
  context "With valid methods" do 
    it "should check adding new class or not " do 
      user = User.new("Igor", "Prusevich", Time.new(2000, 03, 17, 6, 0, "+03:00"), 1.86, 70)
        user_decorator = UserDecorator.new(user)
      expect(user_decorator.full_name).to eql "Igor Prusevich"
    end

    it "Validation body_mass index" do 
      user = User.new("Igor", "Prusevich", Time.new(2000, 03, 17, 6, 0, "+03:00"), 1.86, 70)
      user_decorator = UserDecorator.new(user)
      height = 1.86
      weight = 70 
      result = weight / height**2
      expect(user_decorator.body_mass_index).to eql result
    end
  end
end

