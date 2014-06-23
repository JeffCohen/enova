class Person

  attr_accessor :name

  def initialize(my_name)
    @name = my_name
  end

  def greet(other_person)
    puts "Hi, #{other_person.name}, I'm #{@name}."
  end
end

class Employee < Person
end

mark = Person.new("Mark")
john = Person.new("John")

mark.greet(john)
