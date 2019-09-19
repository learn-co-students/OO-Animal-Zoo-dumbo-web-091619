class Zoo
    attr_accessor :name, :location
    @@all = []
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals_spe
        Animal.all().map do |animal|
            animal.species  
        end
    end

    def animals_species
        self.animals_spe.uniq.map do |animalspe|
        puts animalspe
        animalspe
        end
    end

    def self.reach_species
        
    end
    def find_by_species(animalspe)
        Zoo.all.find do |animal|
            animal.name.species == animalspe
        end
    end

    def animals_nickname
        Animal.all().map do |animal|
            animal.nickname
        end
    end

    def animal_nicknames
        self.animals_nickname.map do |animal|
            animal
        end
    end

    def self.find_by_location(location)
        Zoo.all.find do |animal|
            animal.location == location
        end
    end
end
