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

    def self.all
        @@all
    end

    def zoo
        Zoo.all.find do |zoo|
            zoo == self
        end
    end
end
