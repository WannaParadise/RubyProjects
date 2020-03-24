require 'delegate'
require 'time'

class User
  def initialize(first_name, last_name, date_of_birth, height, weight)
    @first_name = first_name
    @last_name = last_name
    @date_of_birth = date_of_birth
    @height = height
    @weight = weight
  end
  attr_accessor :first_name, :last_name, :date_of_birth, :height, :weight
end

class UserDecorator < SimpleDelegator
  def full_name
    "#{first_name} #{last_name}"
  end

  def age
puts "Format one: #{date_of_birth.strftime("Is published on %m/%d/%Y at %I:%M %p")}\n\n"
puts "Format two: #{date_of_birth.strftime("Is published on %d/%B/%Y at %I:%M %p")}\n\n"
puts "Format two: #{date_of_birth.strftime("Is published on %d/%b/%Y at %H:%M %p")}\n\n"
  end

  def body_mass_index
    weight / height**2
  end
end

user = User.new("Igor", "Prusevich", Time.new(2000, 03, 17, 6, 0, "+03:00"), 1.86, 70)
user_decorator = UserDecorator.new(user)
puts user_decorator.full_name
puts user_decorator.body_mass_index
puts user_decorator.age