class Zoo
    attr_reader :location, :name
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location 
        @@all << self
    end 

    def self.all
    @@all
    end

def animals
    Animal.all.select {|animal| animal.zoo == self}
end

    def animal_species
    self.animals.map {|animal| animal.species}.uniq
    end

    def animal_nicknames
    self.animals.map {|animal| animal.nickname}
    
    end
    def self.find_by_location(location)
        Zoo.all.select {|zoos| zoos.location === location}
    end

end
