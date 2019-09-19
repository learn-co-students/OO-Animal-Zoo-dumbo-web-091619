require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

prosp_zoo = Zoo.new("Prospect Zoo", "Brooklyn, New York")
flat_zoo = Zoo.new("Flatiron Zoo", "Brooklyn, New York")
wework_zoo = Zoo.new("WeWork Zoo", "Brooklyn, New York")

bronx_zoo = Zoo.new("Bronx Zoo", "Bronx, New York")
yankee_zoo = Zoo.new("Yankee Zoo", "Bronx, New York")

dog1 = Animal.new("Spot", "Canis Lupus Familiaris", rand(1..10), prosp_zoo)
dog2 = Animal.new("Fido", "Canis Lupus Familiaris", rand(1..10), prosp_zoo)
snake1 = Animal.new("John", "El Snakus Maximus", rand(1..10), prosp_zoo)
cat1 = Animal.new("Paul", "Felis Catus", rand(1..10), prosp_zoo)

dog3 = Animal.new("Tim", "Canis Lupus Familiaris", rand(1..10), flat_zoo)
dog4 = Animal.new("Mark", "Canis Lupus Familiaris", rand(1..10), flat_zoo)
snake2 = Animal.new("James", "El Snakus Maximus", rand(1..10), flat_zoo)
cat2 = Animal.new("Ana", "Felis Catus", rand(1..10), flat_zoo)

dog5 = Animal.new("Terry", "Canis Lupus Familiaris", rand(1..10), wework_zoo)
dog6 = Animal.new("Steve", "Canis Lupus Familiaris", rand(1..10), wework_zoo)
snake3 = Animal.new("Othello", "El Snakus Maximus", rand(1..10), wework_zoo)
cat3 = Animal.new("Chris", "Felis Catus", rand(1..10), wework_zoo)

dog7 = Animal.new("Florus", "Canis Lupus Familiaris", rand(1..10), bronx_zoo)
dog8 = Animal.new("Killer", "Canis Lupus Familiaris", rand(1..10), bronx_zoo)
snake4 = Animal.new("Spike", "El Snakus Maximus", rand(1..10), bronx_zoo)
cat4 = Animal.new("Eric", "Felis Catus", rand(1..10), bronx_zoo)

dog9 = Animal.new("William", "Canis Lupus Familiaris", rand(1..10), yankee_zoo)
dog10 = Animal.new("Yanni", "Canis Lupus Familiaris", rand(1..10), yankee_zoo)
snake5 = Animal.new("Henry", "El Snakus Maximus", rand(1..10), yankee_zoo)
cat5 = Animal.new("Xavier", "Felis Catus", rand(1..10), yankee_zoo)

# binding.pry
puts "done"