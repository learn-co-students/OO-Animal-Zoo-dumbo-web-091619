class Animal
    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []

    def initialize (species, weight, nickname)
       @species = species
       @weight = weight
       @nickname = nickname 
       @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        find_uniq_species = @@all.select do |animal|
            animal.species == species
        end
        find_uniq_species.uniq 
    end


end
