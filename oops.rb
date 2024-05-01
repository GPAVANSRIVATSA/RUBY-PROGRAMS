class Sample
    def initialize(id,name)
        @id=id
        @name=name
    end
    def display
        puts @id
        puts @name
    end
end
sample=Sample.new(1,"Hello")
sample.display

class Sample
    def initialize(id,name)
        @id=id
        @name=name
    end
    def id
        @id
    end
    def set(id)
        @id=id
    end
end
sample=Sample.new(1,"Hello")
puts sample.id
sample.set(2)
puts sample.id

#SingleInheritance
class Animal
    def eat
        puts "eating"
    end
end
class Dog<Animal
    def bark
        puts "barking"
    end
end
dog=Dog.new
dog.eat
dog.bark

#MultiLevelInheritance
class Animal
    def eat
        puts "eating"
    end
end
class Dog<Animal
    def bark
        puts "barking"
    end
end
class BabyDog<Dog
    def weep
        puts "weeping"
    end
end
dog=BabyDog.new
dog.eat
dog.bark
dog.weep

#HierarchicalInheritance
class Animal
    def eat
        puts "Eating"
    end
end
class Dog<Animal
    def bark
        puts "Barking"
    end
end
class Cat<Animal
    def weep
        puts "Weeping"
    end
end
dog=Dog.new
cat=Cat.new
dog.eat
dog.bark
cat.eat
cat.weep

#MultipleInheritance
module Automobile
    MODEL="Audi"
    def display
        puts "Car is the Automobile"
    end
end
module Vechile
    def hello
        puts "Bike is the Vechile"
    end
end
class Sample
    include Automobile
    include Vechile
    def show
        puts "Within the class Sample"
    end
end
sample=Sample.new
sample.display
sample.hello
sample.show
puts Automobile::MODEL

#MethodOverriding
class Base
    def display
        puts "This is the method of the Base class"
    end
end
class Child<Base
    def display
        puts "This is the method of the Child class"
    end
end
child=Child.new
child.display

#Array
def minimum(a)
    min=a[0]
    for i in 1...a.size do
        if min>a[i] then 
            min=a[i]
        end
    end
    return min
end
a=[1,2,3,5,4]
b=minimum a
puts b

#Super
class Base
    def initialize(name="John")
        @name=name
    end
    def display
        puts "Name is #{@name}"
    end
end
class Child<Base
    def initialize(id=1)
        super()
        @id=id
    end
    def show
        puts "Id is #{@id}"
    end
end
child=Child.new
child.display
child.show