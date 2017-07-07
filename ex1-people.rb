class Person

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def greeting
    "Hi, my name is #{@first_name} #{@last_name}."
  end

end

class Instructor < Person


  def teach
    puts "Everything in Ruby is an Object!"
  end

end

class Student < Person

 def learn
   puts "I get it!"
 end

end

i = Instructor.new('Mike', 'Smith')

i.teach

s = Student.new('Eiji', 'Mine')

s.learn

s.teach #This doesn't work because s is not an Instanec of  teacher
