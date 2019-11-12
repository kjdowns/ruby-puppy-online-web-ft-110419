require 'pry'

class Dog 

  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    @@all.each do |dog|
      binding.pry
      puts dog.name
    end
  end
  
end

fido = Dog.new("Fido")
rover = Dog.new("Rover")
Dog.print_all