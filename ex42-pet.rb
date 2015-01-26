## Please check:
## http://learnrubythehardway.org/book/ex42.html
## For details about original question.

## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a subclass of Animal
class Dog < Animal

  def initialize(name)
    ## access name given to its attribute
    @name = name
  end
end

# Cat is-a subclass of Animal also
class Cat < Animal

  def initialize(name)
    ## assigned name given to its attribute
    @name = name
  end
end

## mary has-a little lamb
class Lamb < Animal

  def initialize(name)
    ## Lamb is-a pet and has-a name
    @name = name
  end
end

## Define a class for Person
class Person

  def initialize(name)
    ## every person has a name
    @name = name

    ## Person may have many pets
    @pets = Array.new
  end

  attr_accessor :pets ## We can access attributes of their pets via the person
end


## Employee is-a person
class Employee < Person

  def initialize(name, salary)
    ## using "super" to retrieve attributes of super-class
    ## http://rubylearning.com/satishtalim/ruby_overriding_methods.html
    super(name)
    ## salary is an attribute only available to Employee
    @salary = salary
  end

end

## Fish is also a kind of pet?
class Fish ## < Animal

  ## def initialize(name)
  ## only pet has got names, Fish is for eating
  ## end

end

## Salmon is-a kind of fish
class Salmon < Fish
end

## Halibut is-a kind of fish also
class Halibut < Fish
end

## Start of main program
## rover is-a Dog
rover = Dog.new("Rover")

## stephy is-a Cat
stephy = Cat.new("Stephy")

## mary is-a Person
mary = Person.new("Mary")

## mary has-a little cat
mary.pets << stephy

## Question: How can we have a person having two pets?
marylamb = Lamb.new("MaryLamb")
mary.pets << marylamb

puts mary.pets

## Frank is-a Employee
frank = Employee.new("Frank", 120_000)

## Frank has-a pet called rover
frank.pets = rover

## flipper is-a kind of fish
flipper = Fish.new()

## crouse is-a kind of Salmon
crouse = Salmon.new()

## harry is-a kind of Halibut
harry = Halibut.new()


