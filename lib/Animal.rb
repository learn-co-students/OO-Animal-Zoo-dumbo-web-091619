class Animal    
    attr_reader :species,:nickname
    attr_accessor :weight,:zoo
    @@all=[]
    # @@species=[]
def initialize(zoo,species,weight,nickname)
    @zoo=zoo
    @species=species
    @weight=weight
    @nickname=nickname
    @@all << self
    # @@species << self.species
    
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
