# ///// A `zoo` should be initialized with a name and a location, which should both be passed as strings.
# ///// `Zoo#location` should return the location of the zoo instance.
# ///// `Zoo#name` should return the name of the zoo instance.
# ///// `Zoo.all` should return an array of all the zoo instances.
# ///// `Zoo#animals` should return all the animals that a specific instance of a zoo has.
# ///// `Zoo#animal_species` should return an array of all the species (as strings) of the animals in the zoo. However, if you have two dogs, it should only return one "Dog" string (aka an **unique** array).
# ///// `Zoo#animal_nicknames` should return an array of all the nicknames of animals that a specific instance of a zoo has.
# ///// `Zoo#find_by_species` should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
# ///// `Zoo.find_by_location` should take in a location as an argument and return an array of all the zoos within that location.

class Zoo

    attr_reader :name, :location
    attr_accessor :my_animals

    @@all = [] #all instances of Zoo

    def initialize(name, location)
        @name = name 
        @location = location
        @@all.push(self)
        @my_animals = []
    end 

    def self.all 
     @@all
    end 

   def animals
    @my_animals
   end 


    def self.find_by_location(my_location)
     self.all.select { |zoo| zoo.location == my_location }
    end 

    def animal_species
     @my_animals.map { |animal| animal.species }.uniq
    end 

    def find_by_species(species_type)
     @my_animals.select { |animal| animal.species == species_type }
    end 

    def animal_nicknames
     animals.map { |animal| animal.nickname }
    end 

end

