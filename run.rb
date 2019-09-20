require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
tiger = Animal.new("tiger", 200, "Tony")
zoo = Zoo.new("Bronx Zoo", "Bronx")
dog = Animal.new("dog", 120, "Fido")
tiger.zoo = zoo
tiger2 = Animal.new("tiger", 210, "Roy")
tiger2.zoo = zoo
elephant = Animal.new("elephant", 500, "Dumbo")
elephant.zoo = zoo

binding.pry
puts "done"
