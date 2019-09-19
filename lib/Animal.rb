class Animal
    attr_accessor :weight
    attr_reader :nickname, :species, :zoo
    @@all = []
    def initialize(name, weight, species, zoo)
        @nickname = name
        @weight = weight
        @species = species
        @@all << self
        @zoo = zoo
    end

    def self.all
        @@all
    end
    
    def self.find_by_species(animal_spe)
        self.all.select do |animal|
            animal.species == animal_spe
        end
    end
end
