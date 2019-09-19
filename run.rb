require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'
z1=Zoo.new("Zoo of Fab", "Istanbul")

a1=Animal.new("captain pirate", 400, "cat", z1)
a2=Animal.new("black and white", 700, "zebra", z1)
a3=Animal.new("tyrone", 100, "lion", z1)
a4=Animal.new("aasd",1000,"cat", z1)




binding.pry
puts "done"
