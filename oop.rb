# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  attr_reader :name, :color

  def initialize(name, color = 'silver')
    @name = name
    @color = color
  end

  def say(message)
    "*~*#{message}*~*"
  end
end

unicorn1 = Unicorn.new('Sparkles', 'Rainbow')
p unicorn1

puts unicorn1.say('I am a unicorn')

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
p ''

class Vampire
  attr_reader :name, :thirsty, :pet

  def initialize(name, pet = 'bat')
    @name = name
    @thirsty = true
    @pet = pet
  end

  def drink
    @thirsty = false
  end
end

vlad = Vampire.new('Vlad', true)
p vlad

vlad.drink
p vlad

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  attr_reader :name, :rider, :color, :is_hungry, :times_eaten

  def initialize(name, rider, color, is_hungry = true)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = is_hungry
    @times_eaten = 0
  end

  def eat
    @times_eaten += 1
    @is_hungry = false if @times_eaten >= 4
  end
end

smaug = Dragon.new('Smaug', 'Frodo', 'Red')
p smaug

smaug.eat
p smaug.is_hungry

smaug.eat
p smaug.is_hungry

smaug.eat
p smaug.is_hungry

smaug.eat
p smaug.is_hungry

smaug.eat
p smaug.is_hungry

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

p ''
class Hobbit
  attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring

  def initialize(name, disposition, age = 0)
    @name           =   name
    @disposition    =   disposition
    @age            =   age
    @is_adult       =   false
    @is_old         =   false
  end

  def celebrate_birthday
    @age += 1
    @is_adult = true && @age >= 33
    @is_old   = true && @age >= 101
  end

  def has_ring
    @name == 'Frodo'
  end
end

bilbo = Hobbit.new('Bilbo', 'Adventurous', 100)
p bilbo

p "Does Bilbo have the ring? #{bilbo.has_ring}"

bilbo.celebrate_birthday
p bilbo

bilbo.celebrate_birthday
p bilbo

p ''

frodo = Hobbit.new('Frodo', 'Brave', 31)
p frodo

p "Does Frodo have the ring? #{frodo.has_ring}"

frodo.celebrate_birthday
p frodo

frodo.celebrate_birthday
p frodo
