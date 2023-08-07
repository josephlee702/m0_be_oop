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

def say
    puts "*~* #{name} *~*"
end
end 
# this line will create a new object called unicorn1, with the name "Joseph" and the color silver.
unicorn1=Unicorn.new("Joseph")
# this line will call the say method onto our object unicorn1, 
# and will print out the string "*~* joseph *~*""
print unicorn1.say


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :pet, :thirsty

    def initialize (name, pet="bat")
        @name=name
        @pet=pet
        @thirsty=true
    end

def drink
    @thirsty=false
end
end 

vampire1=Vampire.new("Joseph","cat")
puts vampire1.drink


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry


class Dragon
    attr_reader :name, :rider, :color, is_hungry, times_eaten

    def initialize(name,rider,color)
        @name=name
        @rider=rider
        @color=color
        @is_hungry=true
        @times_eaten=0
    end

def eat
@times_eaten = @times_eaten+1
    if times_eaten>=4
        then @is_hungry=false
    end
end
end

dragon1=Dragon.new("sparky", "joseph","gray")
p dragon1
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring

    def initialize(name,disposition)
        @name=name
        @disposition=disposition
        @age=0
        @is_adult=false
        @is_old=false
        @has_ring=false
    end

    def celebrate_birthday
        @age=@age+1
      if @age>=33
        then @is_adult=true
    end

    if @age>=101
        then @is_old=true
    end
    end
  
   if @name=="Frodo"
        then @has_ring=true
    end

    
end

hobbit1=Hobbit.new("Frodo","Angry")
p hobbit1
hobbit1.celebrate_birthday
p hobbit1