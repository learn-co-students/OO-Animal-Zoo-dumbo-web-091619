require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Bronx Zoo", "Bronx")
zoo2 = Zoo.new("San Diego Zoo", "San diego")

animal1 = Animal.new(zoo1, "lion", 500, "Simba")
animal2 = Animal.new(zoo2, "tiger", 700, "Jerry")

binding.pry
puts "done"
