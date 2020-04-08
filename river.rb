class River
    attr_reader :name, :fish_population

    def initialize(name)
        @name = name
        @fish_population = []
    end 

    def add_to_fish_population(fish)
        @fish_population.push(fish)
    end

    def fish_population_length()
        return @fish_population.length()
    end

end