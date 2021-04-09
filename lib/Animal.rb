class Animal
    attr_accessor :weight
    attr_reader :species, :nickname, :zoo

    @@all = []

    def initialize(zoo, species, weight, nickname)
        @zoo = zoo
        @species = species
       @weight = weight
       @nickname = nickname 
       @@all << self
    end
    
    def self.all
        @@all
    end 
    
    def zoo_name 
        self.zoo.name
    end 

    def self.find_by_species(species)
        Animal.all.select do |animal|
             animal.species == species
        end 
    end 
end

