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

# def iteration(attr)
#     Animal.all.map {|animal| animal.attr}
# end

    def animal_species
    Animal.all.map {|animal| animal.species}.uniq
    end

    def animal_nicknames
    Animal.all.map {|animal| animal.nickname}
    
    end
    def self.find_by_location(location)
        Zoo.all.select {|zoos| zoos.location}
    end

end
