class Zoo
    attr_reader :name, :location

    @@all = []

    def initialize(name,location)
        @name = name
        @location = location
        @@all << self
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
       animal_species_array = animals.map do |animal|
        animal.species.to_s
       end
       animal_species_array.uniq
    end

    def find_by_species(species)
        animals.select do |animal|
            animal.species == species
        end
    end

    def animal_nicknames
        animals.map {|animal| animal.nickname}
    end

    def self.find_by_location(location)
        self.all.select do |zoo|
            zoo.location == location
        end

    end

    def self.all
        @@all
    end


end
