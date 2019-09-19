class Animal
    attr_accessor :weight
    attr_reader :nickname, :species
    @@all = []
    def initialize(name, weight, species)
        @nickname = name
        @weight = weight
        @species = species
        @@all << self
    end
    
end
