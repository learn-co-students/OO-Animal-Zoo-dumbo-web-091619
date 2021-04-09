require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


manhattan = Zoo.new("Manhattan Zoo", "NYC")
queens = Zoo.new("Queens Zoo", "NYC")
# brooklyn = Zoo.new("Brooklyn Zoo", "Brooklyn")
animal1 = Animal.new(queens, "lion", 215, "kitty")
animal2 = Animal.new(manhattan, "Wolf", 215, "kitty")
animal3 = Animal.new(manhattan, "Ostrich", 215, "Mac")
# animal3 = Animal.new(brooklyn, "lion", 215, "Tigger")



binding.pry
puts "done"
