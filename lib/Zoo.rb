




class Zoo
attr_reader :name,:location
@@all =[]
def initialize(name,location)
    @name=name
    @location=location
    @@all<< self
end

def self.all
    @@all
end

def animals
    Animal.all.select do |animal|
        animal.zoo == self
  end
end

def animal_species
    self.animals.map do |animal|
         animal.species
    end
end

def self.find_by_location(location)
    self.all.select do |zoo|
        zoo.location==location
    end
end

def find_by_species(species)
    self.animals.select do |animal|
        animal.species==species
          
    end
end

def find_by_nickname
    self.animals.map do |animal|
        animal.nickname
    end   
end

end
