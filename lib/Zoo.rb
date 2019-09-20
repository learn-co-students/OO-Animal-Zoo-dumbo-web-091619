class Zoo
    attr_reader :name, :location

    @@zoo = []

    

    def initialize (name, location)
        @name = name 
        @location = location
        @@zoo << self 
    end

    def self.all
        @@zoo
    end

    def animals 
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animals_species
        animals.map do |animal|
            animal.species
        end
    end 

    def find_by_species(species)
        find_uniq_species = animals.select do |animal|
            animal.species == species
        end
        find_uniq_species.uniq
    end 

    def animal_nicknames
        animals.map do |animal|
            animal.nickname 
        end 
    end

    def self.find_by_location(location) 
        @@zoo.select do |zoo|
            zoo.location == location
        end
    end




end
