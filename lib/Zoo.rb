class Zoo
    attr_reader :name, :location

    @@all = []

    def initialize(name, location)
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
        animal_species = Animal.all.map do |animal|
            animal_species.to_s
        end
        animal_species.uniq
    end

    def find_by_species
        Animal.all.select do |animal|
            animal.species == species
        end 
    end

    def animal_nickname
        self.animals.map  {|animal| animal.nickname}
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

end
