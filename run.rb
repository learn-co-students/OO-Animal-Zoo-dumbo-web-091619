require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

westchester = Zoo.new("Westchester Zoo", "White Plains, NY")
brooklyn = Zoo.new("Brooklyn Zoo", "Brooklyn, NY")
bronx = Zoo.new("Bronx Zoo", "The Bronx, NY")

tiger = Animal.new("Tiger", 400, "Tigger")
lion = Animal.new("Lion", 600, "Simba")
bear = Animal.new("Bear", 800, "Yogi")

binding.pry
puts "done"
