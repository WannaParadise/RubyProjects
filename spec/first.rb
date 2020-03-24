class Pet
  attr_accessor :name, :age, :gender, :color
  def initialize(name, color, age, gender)
    @name = name
    @color = color
    @age = age
    @gender = gender
  end
  public
  def play
    "Play the game"
  end
  private
  def sound
    "Do something"
  end
end

class Dog < Pet
  private
  def sound
     "Woof - Woof"
  end
  private
  def human_years
     7 * age
  end
end

class Cat < Pet
  def sound
     "Meow - meow"
  end
  private
  def human_years
     3 * age
  end
end

class Snake < Pet
  def sound
    "Ssssss"
  end
end

class Person
  attr_accessor :age, :name, :gender
  def initialize(age, name, gender)
    @age = age
    @name = name
    @gender = gender
  end
  public
  def control(pet)
    @pet.play
  end
end
