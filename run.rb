require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

a1=Animal.new("captain pirate", 400, "cat")
a2=Animal.new("black and white", 700, "zebra")
a3=Animal.new("tyrone", 100, "lion")
a4=Animal.new("aasd",1000,"cat")

z1=Zoo.new(a1, "Istanbul")



binding.pry
puts "done"
