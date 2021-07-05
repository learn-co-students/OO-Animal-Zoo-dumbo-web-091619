class Animal
    attr_accessor :weight
    attr_reader :species, :nickname, :zoo

    @@all = []

    def initialize(zoo,species,weight,nickname)
        @zoo = zoo
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species == species
        end
    end


end
