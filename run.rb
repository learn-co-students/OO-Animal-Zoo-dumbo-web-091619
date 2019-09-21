require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

#zoos
bronx_zoo = Zoo.new("bronx zoo","The Bronx")
central_park_zoo= Zoo.new("central park zoo","Manhatten")
queens_zoo= Zoo.new("queens zoo","Queens")
fake_zoo=Zoo.new("Manhatten Zoo","Manhatten")

#animals
tony_the_tiger=Animal.new(bronx_zoo,"Cat",100.0,"Tony the Tiger")
smokey_the_bear=Animal.new(queens_zoo,"Bear",450.0, "Smokey")
garfield=Animal.new(central_park_zoo,"Cat",90.0,"Garfield")
grizzly=Animal.new(bronx_zoo,"Bear",400.0,"Grizzly")
simba=Animal.new(bronx_zoo,"Cat",250.0,"Lion King")
binding.pry
puts "done"
