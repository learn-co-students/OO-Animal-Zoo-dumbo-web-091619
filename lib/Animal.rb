
class Animal

    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []

    def initialize(species, weight, nickname, zoo = Zoo.all.sample)
      @species = species
      @weight = weight
      @nickname = nickname
      @zoo = zoo
      @@all.push(self)
    end

    def self.all
      @@all
    end

    def zoo
     @zoo
    end

    def self.find_by_species(species_type)
      self.all.select { |animal| animal.species == species_type }
    end

 end

