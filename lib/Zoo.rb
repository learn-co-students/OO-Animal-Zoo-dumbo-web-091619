class Zoo

    attr_reader :location, :zoo_name

    @@all =[]

    def initialize(location, zoo_name)
        @location = location
        @name = zoo_name
        @@all << self
      end
    ​
      def animals
        Animal.all().select do |animal|
          # self is the instance
          # when I creat an animal, I passed the instance in.
            animal.zoo == self
        end
      end
    ​
      def animal_species
        a_species = []
        animals.each do |animal|
          a_species << animal.species
        end
        return a_species.uniq
      end

      # *** Or writen like this ***
      # 
      # def animal_species
      #     names = self.animals.map do |animal|
      #         animal.species
      #     end
      #        names.uniq
      # end
    ​
      def find_by_species(species)
        animals = Animal.all.select do |animal|
          animal.species == species
        end
        animals.select do |animal|
          animal.zoo == self
        end
      end
    ​
      def animal_nicknames
        nicknames = []
        animals = Animal.all.select do |animal|
          animal.zoo == self
        end
        animals.each do |animal|
          nicknames << animal.nickname
        end
        return nicknames
      end
    ​
      def self.find_by_location(location)
        Zoo.all.select do |zoo|
          zoo.location == location
        end
      end
    ​
      def self.all
        @@all
      end
    end


end
